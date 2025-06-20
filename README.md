# ARITHMETIC-LOGIC-UNIT-ALU

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: RAJALAKSHMI C

*INTERN ID*: CT4MVRK

*DOMAIN*: VLSI

*DURATION*: 4 MONTHS

*MENTOR*: NEELA SANTHOSH

**DESCRIPTION**
As part of the VLSI Internship at CodTech, the first task involved designing and simulating a basic Arithmetic Logic Unit (ALU) using Verilog Hardware Description Language (HDL). The ALU is a fundamental building block in any digital system or processor and is responsible for performing arithmetic and logical operations.

ALU Design Overview
The designed ALU supports five primary operations:
Addition
Subtraction
Bitwise AND
Bitwise OR
Bitwise NOT (on input A)
The ALU accepts two 4-bit inputs, labeled A and B, and one 3-bit control signal ALU_Sel that determines the operation to perform. The output ALU_Out is a 4-bit result of the selected operation. The operations are implemented using a case statement within an always block that is sensitive to changes in the inputs. This makes the ALU a purely combinational circuit, which means the output changes instantly with input changes.
Each operation is mapped to a 3-bit selector:
000: A + B (Addition)
001: A - B (Subtraction)
010: A & B (Bitwise AND)
011: A | B (Bitwise OR)
100: ~A (Bitwise NOT of A)

Testbench for Verification
To verify the functionality of the ALU, a testbench was written that applies different inputs and selector values. The testbench includes:
Multiple test cases for different ALU operations.
A display block to print the results in a readable format.
A $dumpfile and $dumpvars command to generate a waveform file (dump.vcd) for visual simulation.
The testbench simulates each operation with specific input values and waits 10 time units between each test case using the #10 delay statement. The results are printed using $display, and the waveform can be viewed to visually confirm the timing and logic correctness.

Tool Used: EDA Playground
To design and test the ALU, we used EDA Playground, a free and cloud-based simulation platform for HDL coding and simulation. The tool provides:
Support for Verilog and SystemVerilog
Multiple simulators including Icarus Verilog, which was selected for this task
Built-in waveform viewer EPWave for signal visualization
Online code editor and project sharing

Steps followed:
The ALU module was written in the design.v section.
The testbench was written in the testbench.v section.
Icarus Verilog was chosen as the simulator.
The simulation was run, and results were printed on the terminal.
EPWave was used to view the timing waveform of the ALU operations.

Conclusion
This task provided valuable hands-on experience in designing, simulating, and verifying digital logic using Verilog. Using EDA Playground enabled an efficient, no-installation-required environment for development and testing. The exercise built a foundational understanding of how ALUs work inside digital systems and helped strengthen HDL skills essential for VLSI and FPGA-based design careers.

**OUTPUT**

