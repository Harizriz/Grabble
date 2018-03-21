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
        instructions();
    case 3
        highScore();
    case 4
        return
end
        