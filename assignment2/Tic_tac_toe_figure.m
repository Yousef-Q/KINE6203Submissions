%Yousef Qadumi 
%September 3rd, 2024


answer = questdlg('Welcome! Would you like to play Tic Tac Toe?',... %Creates dialog box asking user if they would like to play Tic Tac Toe. 
        'Tic Tac Toe',...
        'Yes', 'No','Yes');

gameBoard = ['1' '2' '3'; '4' '5' '6';'7' '8' '9']; %Variable gameBoard creates a 3x3 matrix of strings numbered 1-9. 
moveCounter = 0; %moveCounter is used to check for a tie. 

switch (answer) %Switch tests each case until a case expression is true. If user selects 'No' to would you like to play again, 'Smell ya l8er!' will be displayed to user. 
    case 'No' 
        display ('Smell ya l8er!')
        for i = 1 
            break
        end


    case 'Yes' %If user clicks 'Yes' on dialog box, case 'Yes' will execute and enter for loop which will being a 3s timer starting at 1 with a pause of 1 second. 

    for i = 1:3
        disp(i)
        pause(1)
    end

%Checks to see that no win has been awarded and there is no tie. While
%there is no tie/winner the game board will display and the user will be
%promted to make a move.
while (gameBoard(1) ~= gameBoard(2) && gameBoard(3) ~= gameBoard(2)) || (gameBoard(4) ~= gameBoard(5) && gameBoard(6) ~= gameBoard(5)) || (gameBoard(7) ~= gameBoard(8) && gameBoard(9) ~= gameBoard(8)) || (gameBoard(1) ~= gameBoard(4) && gameBoard(7) ~= gameBoard(4)) || (gameBoard(2) ~= gameBoard(5) && gameBoard(8) ~= gameBoard(5)) || (gameBoard(3) ~= gameBoard(6) && gameBoard(9) ~= gameBoard(6)) || (gameBoard(1) ~= gameBoard(5) && gameBoard(9) ~= gameBoard(5)) || (gameBoard(3) ~= gameBoard(5) && gameBoard(7) ~= gameBoard(5))
    disp(gameBoard);
    movePrompt = ('What spot would you like to claim? Type a number between 1-9 and press enter: ')
    userInput = input(movePrompt,'s')
    userMoves = 0; %used to alternate moves between user and computer.
    computerMoveNumber = 0; %used to alternate moves between user and computer.
   
  

   %User Move Block
     switch (userInput) %switch checks user input of case until true. If user chooses 1 and 1 is still on the board it will be replaced with an X and so on.
        case '1' 
           if gameBoard(1,1) == '1' 
               gameBoard(1,1) = 'X'
               userMoves = userMoves + 1; %when a case is true 1 is added to user move. 
           else
               disp('This spot has alrady been played. Please choose another') %if case is not true, then the spot the user is attempting to claim has already been claimed. System then prompts user to to try again. 
           end
       case '2' 
           if gameBoard(1,2) == '2' 
               gameBoard(1,2) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '3' 
           if gameBoard(1,3) == '3' 
               gameBoard(1,3) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '4' 
           if gameBoard(2,1) == '4' 
               gameBoard(2,1) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '5' 
           if gameBoard(2,2) == '5' 
               gameBoard(2,2) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '6' 
           if gameBoard(2,3) == '6' 
               gameBoard(2,3) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '7' 
           if gameBoard(3,1) == '7' 
               gameBoard(3,1) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '8' 
           if gameBoard(3,2) == '8' 
               gameBoard(3,2) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
       case '9' 
           if gameBoard(3,3) == '9' 
               gameBoard(3,3) = 'X'
               userMoves = userMoves + 1;
           else
               disp('This spot has alrady been played. Please choose another')
           end
         otherwise
             disp('Illegal move, try again') %if inputs a number that is not 1-9 they will be prompted to try again. 
     end
    
   if (gameBoard(1) == gameBoard(2) && gameBoard(3) == gameBoard(2)) || (gameBoard(4) == gameBoard(5) && gameBoard(6) == gameBoard(5)) || (gameBoard(7) == gameBoard(8) && gameBoard(9) == gameBoard(8)) || (gameBoard(1) == gameBoard(4) && gameBoard(7) == gameBoard(4)) || (gameBoard(2) == gameBoard(5) && gameBoard(8) == gameBoard(5)) || (gameBoard(3) == gameBoard(6) && gameBoard(9) == gameBoard(6)) || (gameBoard(1) == gameBoard(5) && gameBoard(9) == gameBoard(5)) || (gameBoard(3) == gameBoard(5) && gameBoard(7) == gameBoard(5))
            disp('Player wins!') % if user gets any combination of 3 in a row system will display 'Player wins!'
            gameBoard = ['1' '2' '3'; '4' '5' '6';'7' '8' '9'];
moveCounter = 0; 
playStatus = questdlg('Would you like to play again?',... %After player has won they will be asked if they would like to play again. 
        'Tic Tac Toe',...
        'Yes', 'No','Yes');
switch(playStatus)
    case 'Yes'
                continue %if user chooses yes to play again continue will re-initate while loop. 
    case 'No'
        disp('Smell ya l8er!') %if user chooses no they will be smelt later. 
        return
end

   elseif(moveCounter==8) %moveCounter is tracking the number of moves between user and computer, when moveCounter == 8 and there is no winner the end result is a tie. 
       disp('You just tied with a computer...')
gameBoard = ['1' '2' '3'; '4' '5' '6';'7' '8' '9'];
moveCounter = 0; 
playStatus = questdlg('Would you like to play again?',... %if user and compputer tie, user will be asked if they would like to play again.
        'Tic Tac Toe',...
        'Yes', 'No','Yes');
switch(playStatus)
    case 'Yes'
                continue
    case 'No'
        disp('Smell ya l8er!')
        return
end
   else
       moveCounter = moveCounter + 1; %keeps track of user move. Everytime a user moves 1 is added to varible moveCounter. 
   end 
 
%Computer Move Block
computerIsMoving = true;

while(computerIsMoving & computerMoveNumber < userMoves) %while the computer is moving it will generate a random number (1-9) and the computer is promted to make a move when it has 1 less move than the user. 
computerMove = randi(9); 
   switch (computerMove)
       case 1 
           if gameBoard(1,1) == '1' 
               gameBoard(1,1) = 'O'
               computerIsMoving = false;
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue
           end
       case 2 
           if gameBoard(1,2) == '2' 
               gameBoard(1,2) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue
           end
       case 3 
           if gameBoard(1,3) == '3' 
               gameBoard(1,3) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue
           end
       case 4
           if gameBoard(2,1) == '4' 
               gameBoard(2,1) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue
           end
       case 5 
           if gameBoard(2,2) == '5' 
               gameBoard(2,2) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue 
           end
       case 6 
           if gameBoard(2,3) == '6' 
               gameBoard(2,3) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue 
           end
       case 7 
           if gameBoard(3,1) == '7' 
               gameBoard(3,1) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue 
           end
       case 8
           if gameBoard(3,2) == '8' 
               gameBoard(3,2) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue 
           end
       case 9 
           if gameBoard(3,3) == '9' 
               gameBoard(3,3) = 'O'
               computerIsMoving = false; 
               computerMoveNumber = computerMoveNumber + 1;
           else
               continue
           end
   end
   

    if (gameBoard(1) == gameBoard(2) && gameBoard(3) == gameBoard(2)) || (gameBoard(4) == gameBoard(5) && gameBoard(6) == gameBoard(5)) || (gameBoard(7) == gameBoard(8) && gameBoard(9) == gameBoard(8)) || (gameBoard(1) == gameBoard(4) && gameBoard(7) == gameBoard(4)) || (gameBoard(2) == gameBoard(5) && gameBoard(8) == gameBoard(5)) || (gameBoard(3) == gameBoard(6) && gameBoard(9) == gameBoard(6)) || (gameBoard(1) == gameBoard(5) && gameBoard(9) == gameBoard(5)) || (gameBoard(3) == gameBoard(5) && gameBoard(7) == gameBoard(5))
        disp('You just lost to a computer...')
        gameBoard = ['1' '2' '3'; '4' '5' '6';'7' '8' '9'];
moveCounter = 0; 

playStatus = questdlg('Would you like to play again?',...
        'Tic Tac Toe',...
        'Yes', 'No','Yes');
switch(playStatus)
    case 'Yes'
                continue
    case 'No'
        disp('Smell ya l8er!')
        return
end

    else
        moveCounter = moveCounter + 1
    end
end
end
end 