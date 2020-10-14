%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Assignment 2: Tic Tac Toe Game

% Author: Basel Abdelfattah

% Duee: 10/22/2020

% Description: 

% This is a Matlab script created to play Tic Tac Toe. The script
% automatically generates the computer player's moves. The user is prompted
% to play the game and proceed with their turn once it is time. The script
% contains at least one for loop, one while loop and one break to help
% display the updated game and final prompts to show the game result.

% Developed on Matlab version 2019b, on Microsoft Windows 10 Home Ver 10.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%                              Tic-Tac-Toe

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear

% yes = 0; % This declares the sequence to start the game
% while yes ~= 'n' && yes ~= 'N'
%     yes = input('Do you want to play the game? (Y/N)', 's');
    
no = 0; % This declares the sequence to exit the game


% The following while loop will be responsible for the main game script 
while no ~= 'n' && no ~= 'N'
    
    clear
    clc
    
    board = [' ', ' ', ' '; ' ', ' ', ' '; ' ', ' ', ' '];
    done = 0;
    
  % The following for loop will clear the game board in the command
  % window everytime the script is being called to run.
  
    for i = 1:3
        for j =1:3
            board = [' ', ' ', ' '; ' ', ' ', ' '; ' ', ' ', ' '];
        end
    end

% Similar to a menu interface, the following will display instructions to
% the user before proceeding with the game

    fprintf("     Welcome to Tic Tac Toe!\n")
    fprintf("==========================================\n")
    fprintf("The user is 'X' and the Computer is 'O'\n");
    fprintf("Enter a number, 1-9, to input your 'X' onto the gameboard!\n\n");
    
% The following is the main game script, this will display the game board
% into the command window

while done ~= 1
    for i = 1:3
        for j = 1:3
            fprintf('%c', board(i,j));
            if j ~= 3
                fprintf('  |');
            end
        end
        fprintf('\n');
        if i ~= 3
            fprintf('---|---|---\n');
        end
    end

% The following code will represent the user's turn. This section is coded
% to ask the user to input a number ranging from 1-9. 

retry = 0;

while retry ~= 1
you = input('Please enter your move: ');
h = 0;

% The number that the user inputs will be searched and a corresponding 'X'
% will be displayed onto the gameboard in the command window. Each number
% starting from 1 corresponds to the position on the board from left to
% right. For example, a user input of 1 will input an 'X' on the first row,
% first column square and a user input of 2 will input an 'X' on the first
% row, second column square and so on and so forth. 

if you == 1 && board(1,1) == ' '
    board(1,1) = 'X';
    h = h+1;
    retry = 1;
elseif you == 2 && board(1,2) == ' '
    board(1,2) = 'X';
    h = h+1;
    retry = 1;
elseif you == 3 && board(1,3) == ' '
    board(1,3) = 'X';
    h = h+1;
    retry = 1;
elseif you == 4 && board(2,1) == ' '
    board(2,1) = 'X';
    h = h+1;
    retry = 1;
elseif you == 5 && board(2,2) == ' '
    board(2,2) = 'X';
    h = h+1;
    retry = 1;
elseif you == 6 && board(2,3) == ' '
    board(2,3) = 'X';
    h = h+1;
    retry = 1;
elseif you == 7 && board(3,1) == ' '
    board(3,1) = 'X';
    h = h+1;
    retry = 1;
elseif you == 8 && board(3,2) == ' '
    board(3,2) = 'X';
    h = h+1;
    retry = 1;
elseif you == 9 && board(3,3) == ' '
    board(3,3) = 'X';
    h = h+1;
    retry = 1;
elseif board(1,1) ~= ' ' && board(1,2) ~= ' ' && board(1,3) ~= ' ' && board(2,1) ~= ' ' && board(2,2) ~= ' ' && board(2,3) ~= ' ' && board(3,1) ~= ' ' && board(3,2) ~= ' ' && board(3,3) ~= ' '
    retry = 1;
elseif you <= 0
    fprintf('INVALID MOVE\n'); %Error if user inputs a # less than or = 0
elseif you > 9
    fprintf('INVALID MOVE\n'); %Error if user inputs a # greater than 9
else
    fprintf('INVALID MOVE\n'); %Error if user inputs a number that is taken
end
end

    
% The following lines of code will check for a winner of the game.
% This section will also display who won the game if a winner is decided.

winner = 0;
done = 0;
clc

    if board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X'
        winner = 1;
        done = 1;
    elseif board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X'
        winner = 1;
        done = 1;
    elseif board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X'
        winner = 1;
        done = 1;
    elseif board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X'
        winner = 1;
        done = 1;
    elseif board(1,3) == 'X' && board(2,2) == 'X' && board(3,1) == 'X'
        winner = 1;
        done = 1;
    elseif board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X'
        winner = 1;
        done = 1;
    elseif board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X'
        winner = 1;
        done = 1;
    elseif board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X'
        winner = 1;
        done = 1;

    elseif board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,3) == 'O' && board(2,2) == 'O' && board(3,1) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O'
        winner = 2;
        done = 1;
    elseif board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O'
        winner = 2;
        done = 1;
    elseif board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O'
        winner = 2;
        done = 1;
    elseif board(1,1) ~= ' ' && board(1,2) ~= ' ' && board(1,3) ~= ' ' && board(2,1) ~= ' ' && board(2,2) ~= ' ' && board(2,3) ~= ' ' && board(3,1) ~= ' ' && board(3,2) ~= ' ' && board(3,3) ~= ' '
        winner = 3;
        done = 1;
    end

    if winner == 1
        fprintf('*** YOU WIN ***\n');
    elseif winner == 2
        fprintf('...The computer wins...\n');
    elseif winner == 3
        fprintf('*** DRAW ***\n');
    end

if done == 1
    break
end

% The game board will be displayed again
for i = 1:3
        for j = 1:3
            fprintf('%c', board(i,j));
            if j ~= 3
                fprintf('  |');
            end
        end
        fprintf('\n');
        if i ~= 3
            fprintf('---|---|---\n');
        end
end
clc

% The following code will represent the computer's turn. This section of
% the script will act as the computer in the game.

fprintf("It is the Computer's turn to play\n");

while retry ~= 2 %Using the while loop, if retry is not equal to 2, then the computer will execute
    comp = randi(9); %Randomize Number Generator 1-9
    if comp == 1 && board(1,1) == ' '
        board(1,1) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 2 && board(1,2) == ' '
        board(1,2) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 3 && board(1,3) == ' '
        board(1,3) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 4 && board(2,1) == ' '
        board(2,1) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 5 && board(2,2) == ' '
        board(2,2) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 6 && board(2,3) == ' '
        board(1,2) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 7 && board(3,1) == ' '
        board(3,1) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 8 && board(3,2) == ' '
        board(3,2) = 'O';
        h = h+1;
        retry = 2;
    elseif comp == 9 && board(3,3) == ' '
        board(3,3) = 'O';
        h = h+1;
        retry = 2;
    elseif board(1,1) ~= ' ' && board(1,2) ~= ' ' && board(1,3) ~= ' ' && board(2,1) ~= ' ' && board(2,2) ~= ' ' && board(2,3) ~= ' ' && board(3,1) ~= ' ' && board(3,2) ~= ' ' && board(3,3) ~= ' '
        retry = 2;
    end
end

% The following lines of code will check again for a winner of the game.
% This section will also display who won the game if a winner is decided.

winner = 0;
done = 0;
clc

if board(1,1) == 'X' && board(1,2) == 'X' && board(1,3) == 'X'
    winner = 1;
    done = 1;
elseif board(1,1) == 'X' && board(2,2) == 'X' && board(3,3) == 'X'
    winner = 1;
    done = 1;
elseif board(1,2) == 'X' && board(2,2) == 'X' && board(3,2) == 'X'
    winner = 1;
    done = 1;
elseif board(1,1) == 'X' && board(2,1) == 'X' && board(3,1) == 'X'
    winner = 1;
    done = 1;
elseif board(1,3) == 'X' && board(2,2) == 'X' && board(3,1) == 'X'
    winner = 1;
    done = 1;
elseif board(1,3) == 'X' && board(2,3) == 'X' && board(3,3) == 'X'
    winner = 1;
    done = 1;
elseif board(2,1) == 'X' && board(2,2) == 'X' && board(2,3) == 'X'
    winner = 1;
    done = 1;
elseif board(3,1) == 'X' && board(3,2) == 'X' && board(3,3) == 'X'
    winner = 1;
    done = 1;

elseif board(1,1) == 'O' && board(1,2) == 'O' && board(1,3) == 'O'
    winner = 2;
    done = 1;
elseif board(1,1) == 'O' && board(2,2) == 'O' && board(3,3) == 'O'
    winner = 2;
    done = 1;
elseif board(1,2) == 'O' && board(2,2) == 'O' && board(3,2) == 'O'
    winner = 2;
    done = 1;
elseif board(1,1) == 'O' && board(2,1) == 'O' && board(3,1) == 'O'
    winner = 2;
    done = 1;
elseif board(1,3) == 'O' && board(2,2) == 'O' && board(3,1) == 'O'
    winner = 2;
    done = 1;
elseif board(1,3) == 'O' && board(2,3) == 'O' && board(3,3) == 'O'
    winner = 2;
    done = 1;
elseif board(2,1) == 'O' && board(2,2) == 'O' && board(2,3) == 'O'
    winner = 2;
    done = 1;
elseif board(3,1) == 'O' && board(3,2) == 'O' && board(3,3) == 'O'
    winner = 2;
    done = 1;
elseif board(1,1) ~= ' ' && board(1,2) ~= ' ' && board(1,3) ~= ' ' && board(2,1) ~= ' ' && board(2,2) ~= ' ' && board(2,3) ~= ' ' && board(3,1) ~= ' ' && board(3,2) ~= ' ' && board(3,3) ~= ' '
    winner = 3;
    done = 1;
end

if winner == 1
    fprintf('*** YOU WIN ***\n');
elseif winner == 2
    fprintf('...The computer wins...\n');
elseif winner == 3
    fprintf('*** DRAW ***\n');
end

if done == 1
    break
end
clc
end

for i = 1:3
        for j = 1:3
            fprintf('%c', board(i,j));
            if j ~= 3
                fprintf('  |');
            end
        end
        fprintf('\n');
        if i ~= 3
            fprintf('---|---|---\n');
        end
end

% TO CLEAR THE BOARD, the following code will clear the game board
% everytime the script is called to run
 for i = 1:3
        for j =1:3
            board = [' ', ' ', ' '; ' ', ' ', ' '; ' ', ' ', ' '];
        end
 end

no = input('Do you want to play again? (Y/N)', 's');
end
        
    
    