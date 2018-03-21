% Hariz Bin Mohd Hafiz Tay 20009133
% 11/3/2018
% Assignment #2 Question 2
% Grabble ( Word Guessing Game )
%% Menu
choice = menu('Welcome to Grabble','Start Game','Instructions','High Score','Exit Game');
switch choice
    case 1
        game();
    case 2
        clc;
        disp('--Welcome to Grabble--');
        disp('1. You will be given random questions');
        disp('2. The amount of attempts will decrease as the difficulty gets higher');
        disp('3. Lower case alphabets are only allowed');
        disp('3. Every lives counts so think before you enter a letter');
        disp('4. Best of luck!');
    case 3
        highScore()
    case 4
        return
end
        