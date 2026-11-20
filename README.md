# Traffic Light Controller (Verilog HDL)

A digital traffic light controller implemented, verified, and synthesized in Verilog HDL[cite: 1, 5]. This repository contains the RTL design, simulation testbench, and synthesized gate-level netlist[cite: 1, 5].

---

## Repository Structure

| File | Description |
| :--- | :--- |
| `traffic_light_controller.v` | Behavioral/RTL Verilog source code for the traffic light controller finite state machine (FSM). |
| `tb_traffic_light.v` | Verilog testbench used to simulate state transitions, timing intervals, and reset behavior[cite: 5]. |
| `synthesized_traffic_light.v` | Gate-level synthesized Verilog netlist generated after logic synthesis[cite: 5]. |
| `.gitignore` | Excludes compiled simulation executables (`*.vvp`) and waveform dumps (`*.vcd`) from version control[cite: 1, 5]. |

---

## Overview

* **RTL Design (`traffic_light_controller.v`):** Models the sequential control logic and state transitions required to manage traffic signal phases (Red, Yellow, Green) across intersecting lanes[cite: 5].
* **Verification (`tb_traffic_light.v`):** Drives clock and reset stimuli into the controller module, monitors output signal states, and dumps signal transitions into a `.vcd` waveform file (`traffic_light.vcd`) for timing inspection[cite: 1, 5].
* **Synthesis (`synthesized_traffic_light.v`):** Provides the post-synthesis netlist representation of the controller, which can also be verified against the original testbench to confirm functional equivalence[cite: 1, 5].

---

## Simulation & Waveform Viewing (Ubuntu / Icarus Verilog)

1. **Compile the RTL design and testbench:**
   ```bash
   iverilog -o traffic_light_tb.vvp traffic_light_controller.v tb_traffic_light.v
