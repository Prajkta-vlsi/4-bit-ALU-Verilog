#  4-bit ALU using Verilog

## 📌 Description
Designed and implemented a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL. The design supports multiple arithmetic and logical operations and is verified using simulation waveforms.

## ⚙️ Operations Implemented
- Addition
- Subtraction
- AND
- OR
- XOR

##  Tools Used
- Icarus Verilog
- GTKWave

##  How to Run
iverilog -o alu alu.v alu_tb.v
vvp alu
gtkwave alu.vcd


##  Output
Waveform verified using GTKWave.
