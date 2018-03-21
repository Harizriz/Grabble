function highScore()

text = 'Score Level';
response = menu('View score for','Easy','Intermediate','Hard');
switch(response)
    
    case 1
        load('easyScore.mat','scoreLevel');
        disp(text);
        disp(scoreLevel);
        
    case 2
        load('intermediateScore.mat','scoreLevel');
        disp(text);
        disp(scoreLevel);
        
    case 3
        load('hardScore.mat','scoreLevel');
        disp(text);
        disp(scoreLevel);
end