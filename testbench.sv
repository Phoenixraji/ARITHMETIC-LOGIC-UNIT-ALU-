`timescale 1ns/1ps

module ALU_tb;
    reg [3:0] A, B;
    reg [2:0] ALU_Sel;
    wire [3:0] ALU_Out;

    ALU uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .ALU_Out(ALU_Out)
    );

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, ALU_tb);

        $display("A     B     SEL  | OUT");
        $display("--------------------------");

        A = 4'b0011; B = 4'b0001; ALU_Sel = 3'b000; #10; // ADD
        $display("%b  %b  %b | %b", A, B, ALU_Sel, ALU_Out);

        A = 4'b0100; B = 4'b0001; ALU_Sel = 3'b001; #10; // SUB
        $display("%b  %b  %b | %b", A, B, ALU_Sel, ALU_Out);

        A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b010; #10; // AND
        $display("%b  %b  %b | %b", A, B, ALU_Sel, ALU_Out);

        A = 4'b1010; B = 4'b1100; ALU_Sel = 3'b011; #10; // OR
        $display("%b  %b  %b | %b", A, B, ALU_Sel, ALU_Out);

        A = 4'b1100; B = 4'b0000; ALU_Sel = 3'b100; #10; // NOT A
        $display("%b  %b  %b | %b", A, B, ALU_Sel, ALU_Out);

        $finish;
    end
endmodule
