## Toy Robot Simulator

The application is a simulation of a toy robot moving on a square tabletop

## Description

- The application is a simulation of a toy robot moving on a square tabletop,
  of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be
  prevented from falling to destruction. Any movement that would result in the
  robot falling from the table must be prevented, however further valid movement
  commands must still be allowed.

The application that can read in commands of the following form

    PLACE X,Y,F
    MOVE
    LEFT
    RIGHT
    REPORT

## Example Input and Output:

a)

	PLACE 0,0,NORTH
    MOVE
    REPORT

	Output: 0,1,NORTH

b)

	PLACE 0,0,NORTH
	LEFT
	REPORT

	Output: 0,0,WEST

c)

	PLACE 1,2,EAST
	MOVE
	MOVE
	LEFT
	MOVE
	REPORT

	Output: 3,3,NORTH


## Requirements

- Ruby 3.0.1

- Libraries: Bundler(2.2.15), rspec

## Dependencies, Test and Run

- Dependencies: `bundle install`

- Test: `rspec spec/`

- Run: `ruby trs.rb`
