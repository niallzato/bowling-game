# Uncles Bob's Bowling Game TDD Kata
Uncle Bob's Bowling Game TDD Kata in Ruby

## Setup
1. Install rbenv via home brew: 
`brew install rbenv`
2. Append `eval "$(rbenv init -)"` to your `~.bash_profile` (Create `~.bash_profile` if you don't have one)
3. Restart your terminal
4. Check rbenv is set up correctly by running `curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash`
5. Install ruby 2.5.3: `rbenv install 2.5.3`
6. Install bundler: `gem install bundler`
7. Run `bundle install`

## Bowling Rules

![Bowling Game](images/bowling_game.png?raw=true "Bowling Game")

The game consists of 10 frames.

In each frame the player has two opportunities to knock down 10 pins.

The score for the frame is the total number of pins knocked down, plus bonuses for strikes and spares. 

A spare is when the player knocks down all 10 pins in two tries. The bonus for that frame is the number of pins knocked down by the next roll.  

So in frame 3 above, the score is 10 (the total number knocked down) plus a bonus of 5 (the number of pins knocked down on the next roll.) 

A strike is when the player knocks down all 10 pins on his first try.  The bonus for that frame is the value of the next two balls rolled. 

In the tenth frame a player who rolls a spare or strike is allowed to roll the extra balls to complete the frame.  However no more than three balls can be rolled in the tenth frame.

## Before you start
* **Try not to read ahead.**
* Do **one** task at a time. The trick is to learn to work incrementally.

## Running tests
Run `rspec` from the root of the project.

## Requirements
1. Write a class named `Game` that has two methods:
   * `roll(pins)` - called each time the player rolls a ball. The argument is the number of pins knocked down.
   * `score()` - is called only at the very end of the game.  It returns the total score for that game.
   
2. Gutter game scores zero - When you roll all misses, you get a total score of zero.
3. All ones scores 20 - When you knock down one pin with each ball, your total score is 20.
4. A spare in the first frame, followed by three pins, followed by all misses scores 16.
5. A strike in the first frame, followed by three and then four pins, followed by all misses, scores 24.
6. A perfect game (12 strikes) scores 300.

## References
[Uncle Bob's Slides](https://www.slideshare.net/lalitkale/bowling-game-kata-by-robert-c-martin)
