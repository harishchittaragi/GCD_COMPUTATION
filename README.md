# **GCD_COMPUTATION**

**GCD Processor Using Datapath and Controller (Verilog)**

**🔹 Abstract**
This project implements a **16-bit GCD (Greatest Common Divisor) processor** using a **Datapath–Controller architecture** in Verilog HDL.  
The design follows the **Euclidean subtraction method**, where two input numbers are repeatedly subtracted until they become equal — the final value being their GCD.


**⚙️ Design Summary**
**Datapath** performs arithmetic and logical operations:
  - Two 16-bit registers (A & B)
  - Subtractor, Comparator, and Multiplexers
**Controller (FSM)** generates control signals:
  - `ldA`, `ldB`, `sel1`, `sel2`, `sel_in`, and `done`
  - Determines the operation flow based on comparator outputs (`lt`, `gt`, `eq`)

Together, they form a small **hardware processor** that automatically computes GCD.

**🧩 Modules**
**File            : Description **

`GCD_datapath.v`  : Handles arithmetic (A–B, B–A) and comparisons. 
`controller.v`    :Finite State Machine controlling datapath flow. 
`GCD_test.v`      :Testbench for simulating inputs and observing results. 
 

**▶️ Simulation Info**
- **Inputs:** A = 143, B = 78.  
- **Clock Period:** 10 time units . 
- **Expected Output:** GCD = 13 (`done` = 1).
- **Generated Files:** utilization_report, power_report,timing_summary.



**🧰 Tools Used**
- Verilog HDL  
- Xilinx Vivado 


**✍️ Author**
**Harish Chittaragi**  
VLSI Design & Verification Enthusiast  
[GitHub: harishchittaragi](https://github.com/harishchittaragi)
