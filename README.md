----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Verilog Traffic Light Switching System for T-Intersection on FPGA

This repository contains the Verilog HDL implementation of a Traffic Light Switching System designed for a T-Intersection using FPGA technology. The project was developed as part of the 2023 International Conference on Recent Advances in Science & Engineering Technology (ICRASET).

## Table of Contents

- [Introduction](#introduction)
- [Objective](#objective)
- [Methodology](#methodology)
- [Implementation](#implementation)
- [Results](#results)
- [Conclusion and Future Scope](#conclusion-and-future-scope)
- [Directory Structure](#directory-structure)
- [Setup Instructions](#setup-instructions)
- [Simulation and Testing](#simulation-and-testing)
- [Contributors](#contributors)
- [References](#references)

## Introduction

Traffic management at intersections is crucial for urban safety and congestion reduction. This project focuses on designing an efficient Traffic Light Control (TLC) system using Verilog HDL, specifically tailored for a T-Intersection scenario. The system leverages Finite State Machine (FSM) design principles to regulate vehicle movements effectively.

## Objective

The primary objectives of this project are:
- Implementing a Verilog-based Traffic Light Switching System for a T-Intersection on FPGA.
- Optimizing system performance with minimal power consumption and reduced complexity.
- Validating the design through simulation and FPGA prototyping.

## Methodology

The project utilizes Verilog HDL to design and simulate the traffic light controller. Key methodologies include:
- Designing the FSM to control traffic light phases (TMG, TY, TTG, TSG).
- Implementing time delays between state transitions to manage traffic flow.
- Synthesizing and simulating the Verilog code using Xilinx ISE 14.7.
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/b69e48b2-c5d4-4596-9e00-baa36136411d)
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/ef7152a1-ec7e-41a6-b16c-1c9814955ac4)



## Implementation

- **Verilog Code:** Contains the source code (`traffic_light_controller.v`) for the traffic light switching system.
- **Simulation:** Includes simulation files and waveforms (`simulation_results/`) demonstrating proper FSM operation.
- **FPGA Implementation:** Details for deploying the system on a Spartan-6 FPGA board (`fpga_implementation/`).
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/32cb003b-9317-48d5-9a70-a77f261a7e4f)


## Results

- Simulation waveforms confirm accurate state transitions as defined by the FSM.
- Power consumption analysis shows a significant reduction compared to traditional traffic light systems.
- Area utilization and delay analysis demonstrate efficient FPGA resource management.
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/fc1aedc8-5cd9-4eb6-896e-e5dc8d5954cd)
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/df171abd-6314-4b93-bb70-1de6f26ec2f9)
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/e8482413-dfa5-4145-aec8-de7b500c9a74)
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/b162650e-0fe8-485a-b58b-4448179c9f10)
- ![image](https://github.com/Sanjaysksanju/Design-and-Implementation-of-Verilog-Traffic-Light-Switching-System-for-T-Intersection-on-FPGA-/assets/133668271/b914c193-e036-4804-8d86-c95da2d61492)
## Conclusion and Future Scope

The Verilog-based Traffic Light Switching System presents an efficient solution for T-Intersection traffic management. Future enhancements could include:
- Integrating emergency vehicle prioritization features.
- Exploring real-time adaptive traffic control algorithms.
- Enhancing FPGA utilization for broader traffic infrastructure applications.

## Directory Structure

```
/
│
├── README.md             # Project overview and instructions
│
├── traffic_light_controller.v  # Verilog source code
│
├── simulation_results/   # Simulation waveforms and results
│   ├── waveform1.png
│   ├── waveform2.png
│   └── ...
│
├── fpga_implementation/  # FPGA deployment files
│   ├── top_module.v
│   ├── constraints.xdc
│   └── ...
│
└── docs/                 # Additional documentation and references
    ├── ICRASET_paper.pdf
    ├── User_manual.pdf
    └── ...
```

## Setup Instructions

1. **Simulation Setup:**
   - Install Xilinx ISE 14.7 or compatible Verilog simulation environment.
   - Open `traffic_light_controller.v` and `simulation_results/` for waveform analysis.

2. **FPGA Deployment:**
   - Install Xilinx Vivado or ISE for FPGA synthesis.
   - Review `fpga_implementation/` for top module and constraints setup.

## Simulation and Testing

- Use Xilinx ISE or Vivado for Verilog simulation and FPGA implementation.
- Verify FSM behavior and timing constraints using provided simulation waveforms.
- Test FPGA deployment on Spartan-6 board for functional validation.

## Contributors
- Sanjay S K (aksha9538@gmail.com)
- Manjula B B (manjulabb@gmail.com)
- Pushkar D (pushkardwarkanath@gmail.com)
- Manasa S (mansu9102@gmail.com)
- Agniva Ghosh (ghoshagniva52@gmail.com)
- Gowtham S (gowthamgo2002@gmail.com)
## References

- [ICRASET Conference Paper](docs/ICRASET_paper.pdf)
- Additional references cited in the paper.
## paper published in IEEE 
[https://ieeexplore.ieee.org/document/10420158](https://ieeexplore.ieee.org/document/10420158)

