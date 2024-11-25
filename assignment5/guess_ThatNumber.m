function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')%The levels are displayed, however (1-3) are not assigned to the different difficulties. Therefore, when the user inputs (1-3) 'invalid selection ' is displayed 
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced %(Bug-1)Changed '||' to '&&', found by running code. Will alway be true because at least one of the statements is true (1~=2 and 1~=3)
 
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner %Bug found: I found this by trying to run the code and getting a incorrect use of '=' error message.                      

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;  %(Bug-2)Found while trying to run code, 'h' in hightest --> 'H'        
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi([1, highest]); %(Bug-3)invalid use of rand, I kept getting a "Congrats" after every guess, used randi because it's easier for me than rand.    

% initialize number of guesses and User_guess

numOfTries = 1;%(Bug-4)Moved out of while loop to set as a conditional for the loop. Found by running code because everytime i guessed the number the computer returned "you got it on the first try".
% repeatedly get user's guess until the user guesses correctly
userGuess = 0;
numOfTries = numOfTries + 1;

while userGuess ~= secretNumber %(Bug-5) no end to loop, end added at end of loop 



% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
if userGuess < 1 || userGuess > highest;%(Bug-6) removed '=', did not allow highest number to be guessed. Found by trying to break code/playing game. 

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

% of guess validation loop

% add 1 to the number of guesses the user has made



% report whether the user's guess was high, low, or correct

elseif userGuess < secretNumber
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber%(Bug-7)userGuess > secretNumber%duplicate statement of if condition on line 96. Found it because MATLAB underlined it red 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1 && userGuess == secretNumber %(Bug-8) doesn't properly assess correct guess on first try. Found by playing game.
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);%(Bug-9) didn't include how many guesses user took to get secret number. Added numOfTries, found through playing game and didn't get the message. 


fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop
    numOfTries = numOfTries + 1;
end %End of while loop on line 75. Found by trying to run code
% end of game