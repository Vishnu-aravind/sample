module adderB(pc,imm,pc_branch);
input [31:0]pc,imm;
output [31:0] pc_branch;
assign pc_branch = pc+imm;
endmodule