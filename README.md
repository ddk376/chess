# Chess
Object Oriented Chess written in Ruby

# How to Play
``` ruby game.rb ``` 

# Implementation

Board
2-dimensional array. Each position in the board either holds a Piece, or nil

``` #move(start, end_pos) ``` updates the 2d grid and also the moved piece's position and raises an exception if: (a) there is no piece at start or (b) the piece cannot move to end_pos.

``` #in_check?(color) ``` returns whether a player is in check
``` #checkmate?(color) ``` returns whether player is in check, and if none of the player's pieces have any #valid_moves (to be implemented in a moment), then the player is in checkmate.
``` #dup method ``` duplicates the Board and the pieces on the Board. Overwrote Ruby's #dup method

# Pieces

Sliding pieces (Bishop/Rook/Queen)
Stepping pieces (Knight/King)
The pawn

Piece parent class that contains the functionality common to all pieces.
``` #moves ``` returns an array of  valid places a Piece can move to.

Piece class tracks position of the piece and holds a reference to the Board.

``` #valid_moves ``` filters out the #moves of a Piece that would leave the player in check. Uses duped board to see if a player is left in check.
``` #move_into_check?(pos) ``` Duplicates the Board and perform the move and sees if the player is in check after the move (Board#in_check?)

# Game

Constructs a Board object, that alternates between players prompting them to move. The Game class also handle exceptions from Board#move and reports them.

# TODO
- [X] DRY out your code
- [X] Use exception handling, and make sure to deal with bad user input
- [X] Method decomposition (pull chunks of code into helper methods)
- [X] Make helper methods private
- [X] User Interface (UI) utilizes colorize and unicode.
- [ ] Create a cursor that you can move around with the keyboard.
- [ ] Make a chess AI using minimax strategy with alpha-beta pruning
- [ ] Implement castling, draws, and pawn promotion
