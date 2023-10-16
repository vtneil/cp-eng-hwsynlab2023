`timescale 1ns / 1ps

module io_mapped_memory #(
    parameter DATA_FILE = "empty32x16.mem",
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16
) (
    inout wire [DATA_WIDTH - 1:0] data,
    input wire [ADDR_WIDTH - 1:0] addr,
    input wire wr,
    input wire clk,
    input wire [11:0] io_in,
    output reg [15:0] io_out
);

    localparam PAD_WIDTH = DATA_WIDTH - 4;
    localparam PAD_ZERO = {PAD_WIDTH{1'b0}};
    
    reg	[DATA_WIDTH - 1:0] mem [0:1 << ADDR_WIDTH - 1];

    reg	[DATA_WIDTH - 1:0] data_out;
    assign data = (wr == 0) ? data_out : {DATA_WIDTH{1'bZ}};
    
    initial begin : MEM_SET
        $readmemb(DATA_FILE, mem);
    end
    
    always @(addr) begin : MEM_READ
        case (addr)
            'hFFE0: data_out <= {PAD_ZERO, io_in[3:0]};
            'hFFE4: data_out <= {PAD_ZERO, io_in[7:4]};
            'hFFE8: data_out <= {PAD_ZERO, io_in[11:8]};
            default: data_out <= mem[addr];
        endcase

    end
    
    always @(posedge clk) begin : MEM_WRITE
        if (wr) begin
            case (addr)
                'hFFF0: io_out[3:0] <= {PAD_ZERO, data[3:0]};
                'hFFF4: io_out[7:4] <= {PAD_ZERO, data[3:0]};
                'hFFF8: io_out[11:8] <= {PAD_ZERO, data[3:0]};
                'hFFFC: io_out[15:12] <= {PAD_ZERO, data[3:0]};
                default: mem[addr] <= data;
            endcase

        end
    end

endmodule
