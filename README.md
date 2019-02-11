# RTL-Level-Power-Reduction-
Implementation of Clock Gating at the RTL Level

In this project, clock gating technique was applied to a real industry RTL sub-block for a mobile multimedia processor (MMP) design to reduce the power consumption at RTL. 
The Verilog code for the MMP design was modified to implement clock gating for various registers. Formal verification was carried out with Synopsys Formality to verify the design. 
The design was synthesized using Synopsys Design Compiler and power estimation was carried out through Power Compiler. 
The use of scripts was integral in synthesis and power estimation. The power estimation involved the process of generating a .vcd file which recorded the activity of each node in the design giving us an estimate of the dynamic power consumed. 
The project also involved the task of automatic clock gating insertion using the scripts. 
The clock gating design was changed to implement the "bus specific clock gating" scheme and a comparison was drawn between the two clock gating designs in terms of the delay, area and power consumption. 
