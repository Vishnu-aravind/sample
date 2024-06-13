module Control_Unit (Opcode,ALUSrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite,ALUOp);
    input [6:0] Opcode;
    output reg ALUSrc,MemtoReg,MemRead,MemWrite,Branch,RegWrite;
    output reg [1:0] ALUOp;

always@(*) begin
    case (Opcode)
        7'b0110011:
        begin
            ALUSrc   <= 0;
            MemtoReg <= 0;
            MemRead  <= 0;           
            MemWrite <= 0;
            Branch   <= 0;
            RegWrite <= 1;
            ALUOp    <= 2'b10;
        end 
        7'b0010011:
        begin
            ALUSrc   <= 1;
            MemtoReg <= 0;
            MemRead  <= 0;
            MemWrite <= 0;
            Branch   <= 0;
            RegWrite <= 1;
            ALUOp    <= 2'b10;
        end
        7'b1100011:
        begin
            ALUSrc   <= 0;
            MemtoReg <= 0;
            MemRead  <= 0;
            MemWrite <= 0;
            Branch   <= 1;
            RegWrite <= 0;
            ALUOp    <= 2'b01;
        end
        default: 
        begin
            ALUSrc   <= 0;
            RegWrite <= 1;
            ALUOp    <= 2'b10;
        end 
    endcase
    
end
    
endmodule