`timescale 1ns / 1ps

module io_memory #(
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16
) (
    inout wire [DATA_WIDTH - 1:0] data,
    input wire [ADDR_WIDTH - 1:0] addr,
    input wire wr,
    input wire clk,
    input wire en,
    input wire [11:0] io_in,
    output reg [15:0] io_out
);
    
    localparam PAD_WIDTH = DATA_WIDTH - 4;
    localparam PAD_ZERO = {PAD_WIDTH{1'b0}};
    
    reg	[DATA_WIDTH - 1:0] data_out;
    assign data = (wr == 0) ? data_out : {DATA_WIDTH{1'bZ}};
    
    always @(addr) begin
        case (addr)
            'hFFE0: data_out <= {PAD_ZERO, io_in[3:0]};
            'hFFE4: data_out <= {PAD_ZERO, io_in[7:4]};
            'hFFE8: data_out <= {PAD_ZERO, io_in[11:8]};
            default: data_out <= {DATA_WIDTH{1'b0}};
        endcase
        
        $display("%10d - mem[%h] -  %h (%d)\n", $time, addr, data_out, data_out);	
    end

    always @(posedge clk) begin
        if (en & wr) begin
            case (addr)
                'hFFF0: io_out[3:0] <= {PAD_ZERO, data[3:0]};
                'hFFF4: io_out[7:4] <= {PAD_ZERO, data[3:0]};
                'hFFF8: io_out[11:8] <= {PAD_ZERO, data[3:0]};
                'hFFFC: io_out[15:12] <= {PAD_ZERO, data[3:0]};
            endcase
            
            $display("%10d - MEM[%h] <- %h (%d)", $time, addr, data, data);
        end
    end

endmodule
