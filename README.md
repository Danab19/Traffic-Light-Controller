# Traffic Light Controller — Digital Circuits Project

## 👥 Authors

* Zahra AlMudaweb (ID: A00749)
* Dana Barhoom (ID: A00200)
* **Supervisor**: Dr. Herbert Azuela
* **University**: American University of Bahrain (AUBH)
* **Date**: 18/04/2024

## 📄 Project Description

This project implements a traffic light controller for a two-road intersection using **VHDL**. The system simulates traffic light operations based on sensor input and uses a state machine to control timing and transitions. The design focuses on real-world constraints, such as traffic sensors and road priorities.

## 🎯 Objectives

* Design a traffic light controller using **VHDL** and state machines.
* Simulate and test the behavior of the controller using a **testbench**.
* Understand the functional behavior of intersections with sensor-based traffic flow control.

## 🔧 Methodology

* Developed block, state, and traffic light diagrams using **draw\.io**.
* Coded the design using **VHDL** and tested it with a **VHDL testbench**.
* Verified correctness with waveform simulation and manual testing.

## 🚦 System Overview

### Inputs

* `Sa`: Sensor on Road A (main road)
* `Sb`: Sensor on Road B (secondary road)
* `clk`: System clock

### Outputs

* `Ga`, `Ya`, `Ra`: Green, Yellow, Red lights for Road A
* `Gb`, `Yb`, `Rb`: Green, Yellow, Red lights for Road B

### Key Logic

* Road A stays green for 60s by default.
* If a car is detected on Road B, and A's 60s cycle has passed, B turns green for 50s.
* If Road A remains empty and B still has vehicles, B's green cycle extends by 10s.
* Transitions are controlled by a state machine with conditions based on sensor input.

## 📊 Diagrams Included

* Traffic Light Diagram
* Block Diagram
* State Diagram

## 💻 VHDL Implementation

* `traffic_light.vhdl`: Main VHDL code for the traffic controller.
* `traffic_light_tb.vhdl`: Testbench to simulate input cases and verify functionality.

## ✅ Testing

* Simulation results show correct transitions of lights per sensor input and time constraints.
* Manual and testbench verification validate behavior under different traffic scenarios.

## 📈 Results

* Waveform outputs and state transitions are consistent with expected traffic control logic.
* Edge cases (e.g., persistent vehicle presence on Road B) are handled correctly.

## 🔮 Future Work

* Implement pedestrian crossing signals.
* Add timer-based override features.
* Expand to handle 4-way intersections with more sensors.

## 📌 Work Breakdown

* Zahra AlMudaweb: VHDL Coding, Testbench, Diagram Design
* Dana Barhoom: System Design, Documentation, Testing & Simulation
