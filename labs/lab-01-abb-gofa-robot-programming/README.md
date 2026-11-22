
# Lab 01 — ABB GoFa CRB 15000 Robot Programming

## Overview

This laboratory focuses on practical industrial robot programming and control using the ABB GoFa CRB 15000 collaborative robot.

The work involved familiarization with the robot and its control interface, programming robot positions, executing joint and linear movements, adjusting motion parameters, and operating an end-effector gripper for object manipulation.

The laboratory provided practical experience with ABB RAPID programming and industrial robot operation.

## 1. Aim

To understand the operation, programming, and motion control of an industrial collaborative robot and develop programs for controlling robot movements and performing object manipulation tasks.

## 2. Hardware and Equipment

| Component | Description |
|---|---|
| Robot | ABB GoFa CRB 15000 |
| Robot type | Collaborative articulated industrial robot |
| Programming interface | ABB teach pendant |
| Programming language | ABB RAPID |
| End effector | Gripper |
| Manipulated object | Test cube |
| Workstation | Industrial robotics laboratory |

## 3. Programming Environment

The robot was programmed using the ABB programming interface and RAPID programming language.

The program structure included:
- MODULE and ENDMODULE
- PROC and ENDPROC
- CONST declarations
- robtarget position definitions
- Motion instructions
- Gripper control routines

## 4. Robot Programming and Implementation

### 4.1 Defining Robot Positions

Robot target positions were defined using the `robtarget` data type.

The program included predefined positions such as:
- Home position
- P1
- P2

These positions were used as destinations for programmed robot movements.

### 4.2 Joint Movement

The `MoveJ` instruction was used to move the robot between programmed target positions using coordinated joint movement.

### 4.3 Linear Movement

The `MoveL` instruction was used for linear movement of the robot's tool between programmed positions.

### 4.4 Speed Control

Different movement speed parameters were used in the program to study how speed settings influence robot motion.

### 4.5 Gripper Control

Gripper control routines were included to operate the end effector.

The observed programming instructions included:
- OpenGripper
- CloseGripper
- WaitTime

These instructions were used to control gripping actions and introduce delays between operations.

## 5. Experimental Work

The practical work included:

1. Familiarization with the ABB GoFa robot and its control interface.
2. Defining robot target positions.
3. Programming joint and linear movements.
4. Modifying movement parameters.
5. Creating and editing robot instructions.
6. Programming gripper operations.
7. Working with an object using the robot's end effector.

## 6. Results and Observations

The practical exercises provided experience in programming industrial robot movements and controlling an end effector.

The difference between joint and linear movements was explored. Robot target positions and movement parameters were defined through the programming interface.

The gripper control routines demonstrated how robot motion and end-effector operations can be combined in an automated task.

## 7. Skills Developed

- ABB industrial robot operation
- RAPID programming
- Robot target positioning
- Joint and Cartesian motion concepts
- Motion speed adjustment
- Gripper control
- Object manipulation
- Industrial automation fundamentals

## 8. Conclusion

This laboratory provided practical experience with the ABB GoFa CRB 15000 collaborative robot. It helped develop an understanding of industrial robot programming, movement instructions, target positioning, speed control, and gripper operation.

The work also demonstrated how programmed robot movements and end-effector commands can be combined to perform object manipulation tasks.

## 9. Experimental Evidence

Photographs, programming screenshots, source code, and video demonstrations will be included in this repository to document the practical implementation.
