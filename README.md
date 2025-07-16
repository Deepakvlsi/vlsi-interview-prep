# vlsi-interview-prep
"A curated collection of key concepts, notes, and practice questions for VLSI and hardware design interviews. Covers RTL design, verification, physical design, and more."

### Carry Look Ahead Adder ###
Carry propagation delay occurs in adders during operations like multiplication and division, which involve multiple additions. In ripple carry adders, each bit must wait for the previous carry, causing delay. To overcome this, the Carry Look-Ahead Adder (CLA) precomputes carry signals using input bits, significantly reducing delay and speeding up arithmetic operations.
![image](https://github.com/user-attachments/assets/8ead9340-3a1a-49e5-8671-70320ed89951)
<img width="292" alt="image" src="https://github.com/user-attachments/assets/898bbf9a-c25f-419c-b9a0-01b4a2d6eaf2" />

For each bit `i`:
- **Propagate**:  
  `Pᵢ = Aᵢ ⊕ Bᵢ`  
  Indicates whether the carry will propagate through this stage.
- **Generate**:  
  `Gᵢ = Aᵢ · Bᵢ`  
  Indicates whether this stage will generate a carry regardless of the input carry.
### Sum and Carry Equations
- **Sum**:  
  `Sᵢ = Pᵢ ⊕ Cᵢ`
- **Carry Output**:  
  `Cᵢ₊₁ = Gᵢ + (Pᵢ · Cᵢ)`

Here, `Gᵢ` produces a carry when both `Aᵢ` and `Bᵢ` are 1, while `Pᵢ` allows carry to propagate from `Cᵢ` to `Cᵢ₊₁`.

### Carry Output Expressions for a 4-bit CLA
Given `Cin = C₀`, the carry outputs are computed as:
C₁ = G₀ + P₀ · C₀  
C₂ = G₁ + P₁ · G₀ + P₁ · P₀ · C₀  
C₃ = G₂ + P₂ · G₁ + P₂ · P₁ · G₀ + P₂ · P₁ · P₀ · C₀  
C₄ = G₃ + P₃ · G₂ + P₃ · P₂ · G₁ + P₃ · P₂ · P₁ · G₀ + P₃ · P₂ · P₁ · P₀ · C₀


### Latch
Latch is level Triggered sequential circuit.  
It's output respond immediately to changes at the input.  
Latch uses enable as control input.  
Covers less area then ff.  
Facilitates time barrowing and cycle stealing
Consumes less power, due to lesser switching activity and lesser area.

with barrowing and cycle stealing, the operating frequency is higher than the slower logic path.  
Two types:  
1. Negative latch - It will pass input to output only when clk is low level and when clk is high level it will hold the value.
2. Positive latch - It will pass input to output only when clk is high level and when clk is low level it will hold the value.

### Flip Flop
Flip flop is edge triggered sequential circuit.  
FF uses clk as control input.  
Input data must present T_setup time before clock edge and remain T_hold time after.  
Consumes more area than latch  
power consumption is high  
Since the clock boundaries are rigid, the facility of time barrowing or cycle stealing doesn't exist  
Two types:  
1. Negative edge triggered - it transfers the value from input to output only at the negative edge triggered and at the other time it will hold the value.
2. Positive edge triggered - it transfers the value from input to output only at the postive edge triggered and at the other time it will hold the value.

