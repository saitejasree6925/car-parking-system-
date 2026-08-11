# car-parking-system-
Car Parking Controller

Description

A Verilog HDL-based Car Parking Controller that monitors the number of available parking slots and controls vehicle entry and exit.

Features

- Monitors parking slot availability.
- Allows a car to enter when a slot is available.
- Allows a car to exit when a car is parked.
- Indicates when the parking area is full.
- Displays the number of available slots.

Inputs

- "clk" – System clock
- "reset" – Resets the parking counter
- "car_enter" – Indicates a car entering
- "car_exit" – Indicates a car leaving

Outputs

- "full" – Indicates that the parking area is full
- "empty" – Indicates that no cars are parked
- "available_slots" – Number of available parking slots

Tools

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave for waveform simulation

Working

The controller starts with all parking slots available. When a car enters, the number of available slots decreases by one. When a car exits, the number of available slots increases by one. The controller prevents entry when the parking area is full and prevents exit when the parking area is empty.

Simulation

The testbench verifies:

1. Reset operation
2. Car entry
3. Multiple car entries
4. Full parking condition
5. Car exit
6. Empty parking condition

Author

Car Parking Controller – Digital Design Project
author: sai teja sree 
