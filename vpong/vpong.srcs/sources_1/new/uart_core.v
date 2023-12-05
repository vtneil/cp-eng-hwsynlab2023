module uart_rx (
    output reg [7:0] dout,
    output reg is_received,
    input wire din,
    input wire baud_clk
);

    reg last;
    reg is_receiving;
    reg [7:0] count;

    initial begin
        is_receiving <= 0;
        count <= 0;
    end

    always @(posedge baud_clk) begin
        if (!is_receiving && last && !din) begin
            is_receiving <= 1;
            is_received <= 0;
            count <= 0;
        end

        last <= din;

        if (is_receiving) count <= count+1;
        case (count)
            8'd24: dout[0] <= din;
            8'd40: dout[1] <= din;
            8'd56: dout[2] <= din;
            8'd72: dout[3] <= din;
            8'd88: dout[4] <= din;
            8'd104: dout[5] <= din;
            8'd120: dout[6] <= din;
            8'd136: dout[7] <= din;
            8'd152: begin
                is_received <= 1'b1;
                is_receiving <= 1'b0;
            end
        endcase
    end

endmodule

module uart_tx (
    output reg dout,
    output reg is_sent,
    input wire [7:0] din,
    input wire en,
    input wire baud_clk
);

    reg last;
    reg is_sending;
    reg [7:0] data;
    reg [7:0] count;

    initial begin
        is_sending <= 1'b0;
        count <= 0;
        dout <= 1;
    end

    always @(posedge baud_clk) begin
        if (!is_sending && !last && en) begin
            data <= din;
            is_sending <= 1;
            is_sent <= 0;
            count <= 0;
        end

        last <= en;

        if (is_sending) begin
            count <= count + 1;
        end

        case (count)
            8'd8: dout <= 0;
            8'd24: dout <= din[0];
            8'd40: dout <= din[1];
            8'd56: dout <= din[2];
            8'd72: dout <= din[3];
            8'd88: dout <= din[4];
            8'd104: dout <= din[5];
            8'd120: dout <= din[6];
            8'd136: dout <= din[7];
            8'd152: begin
                is_sent <= 1'b1;
                is_sending <= 1'b0;
                dout <= 1'b1;
            end
        endcase
    end

endmodule

module baudrate_generator #(
    parameter BASE_CLOCK = 100_000_000,
    parameter BAUDRATE = 9_600
) (
    output reg baud,
    input wire base_clk
);

    localparam MAX_COUNT = (BASE_CLOCK / (BAUDRATE * 16)) / 2;

    reg [31:0] counter;
    wire [31:0] counter_inc;
    
    initial begin
        baud <= 0;
        counter <= 0;
    end

    always @(posedge base_clk) begin
        counter <= counter_inc;
        if (counter_inc == MAX_COUNT) begin
            counter <= 0;
            baud <= ~baud;
        end
    end
    
    assign counter_inc = counter + 1;
    
endmodule