function highScore()

text = 'Score Level';
response = menu('View score for','Easy','Intermediate','Hard');
switch(response)
    
    case 1
        load easyScore.mat
        disp(text);
        disp(scoreLevel);
        
    case 2
        load intermediateScore.mat
        disp(text);
        disp(scoreLevel);
        
    case 3
        load hardScore.mat
        disp(text);
        disp(scoreLevel);
end
end