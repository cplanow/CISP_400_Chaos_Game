# Chaos Game - Sierpinski Triangle Generator

## Description
This program is an interactive implementation of the Chaos Game algorithm that generates a Sierpinski triangle fractal using SFML (Simple and Fast Multimedia Library). The program allows users to define their own triangle vertices and starting point, then generates the fractal pattern in real-time.

## Features
- Interactive triangle vertex placement
- Real-time fractal generation
- 1920x1080 resolution display
- Visual feedback with different colored points
- User-friendly interface with on-screen instructions

## Prerequisites
- C++ compiler
- SFML library
- Roboto-Regular.ttf font file

## How It Works
The program operates in several steps:

1. **Setup Phase**
   - User clicks three points to define the triangle vertices (shown in cyan)
   - Fourth click sets the initial starting point for the fractal generation

2. **Generation Phase**
   - Program randomly selects one of the triangle vertices
   - Calculates the midpoint between the current point and the selected vertex
   - Adds the new point to create the fractal pattern
   - Repeats this process 100 times per frame

3. **Visualization**
   - Triangle vertices are displayed as cyan squares (10x10 pixels)
   - Fractal points are displayed as small green squares (2x2 pixels)
   - Clear instructions are shown on screen in magenta text

## Controls
- **Left Mouse Button**: Place points (first 3 for triangle, 4th for starting point)
- **ESC**: Close the program
- **Window Close Button**: Exit the program

## Implementation Details
The program is built using several key components:

### Data Structures
- `vector<Vector2f> vertices`: Stores the triangle vertices
- `vector<Vector2f> points`: Stores the fractal points

### Graphics
- Window resolution: 1920x1080
- Text: Magenta-colored instructions using Roboto Regular font
- Vertices: Cyan squares (10x10 pixels)
- Fractal points: Green squares (2x2 pixels)

## Authors
- Chris Planow
- Ali Chenari

## Technical Requirements
- Operating System: Windows/macOS/Linux
- SFML Graphics Library
- C++ Compiler supporting modern C++ features
- Roboto-Regular.ttf font file in the executable directory

## Building and Running
1. Ensure SFML is properly installed on your system
2. Place the Roboto-Regular.ttf font file in the same directory as the executable
3. Compile the program with SFML linkage
4. Run the executable

## Note
The Sierpinski triangle is a famous fractal pattern that demonstrates how complex structures can emerge from simple rules. This implementation provides an interactive way to explore this mathematical concept.
