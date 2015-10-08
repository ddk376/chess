# Chess
Object Oriented Chess written in Ruby

# How to Play
``` ruby game.rb ```

# Board
2-dimensional array. Each position in the board either holds a Piece, or nil 

``` #move(start, end_pos) ``` updates the 2d grid and also the moved piece's position and raises an exception if: (a) there is no piece at start or (b) the piece cannot move to end_pos.

# Pieces

Sliding pieces (Bishop/Rook/Queen)
Stepping pieces (Knight/King)
The pawn

Piece parent class that contains the functionality common to all pieces.
``` Piece#moves ``` returns an array of  valid places a Piece can move to.

Your Piece will need to (1) track its position and (2) hold a reference to the Board. The SlidingPiece in particular needs the Board so it knows to stop sliding when blocked by another piece. Don't allow a piece to move into a square already occupied by the same color piece, or to move a sliding piece past a piece that blocks it.



# Board#in_check?(color) and #checkmate?(color)

The Board class should have a method #in_check?(color) that returns whether a player is in check. You can implement this by (1) finding the position of the king on the board then (2) seeing if any of the opposing pieces can move to that position.

Then write a #checkmate? method. If the player is in check, and if none of the player's pieces have any #valid_moves (to be implemented in a moment), then the player is in checkmate.

``` Piece#valid_moves ``` filters out the #moves of a Piece that would leave the player in check.
``` Piece#move_into_check?(pos) ``` Duplicates the Board and perform the move and sees if the player is in check after the move (Board#in_check?)
``` Board#dup method ``` duplicates the Board and the pieces on the Board. Overwrote Ruby's #dup method

Piece#valid_moves, #valid_moves must not call Board#move. But #valid_moves needs to make a move on the duped board to see if a player is left in check. For this reason, write a method Board#move! which makes a move without checking if it is valid.

Board#move should raise an exception if it would leave you in check.

# Game

Constructs a Board object, that alternates between players prompting them to move. The Game class also handle exceptions from Board#move and reports them.

# TODO

[X] DRY out your code
[X] Use exception handling, and make sure to deal with bad user input
[X] Method decomposition (pull chunks of code into helper methods)
[X] Make helper methods private
[X] User Interface (UI) utilizes colorize and unicode.
[ ] Create a cursor that you can move around with the keyboard.
[ ] Make a chess AI using minimax strategy with alpha-beta pruning
[ ] Implement castling, draws, and pawn promotion
