if level == 1
    load easyScore.mat;
    Name = (A);
    Score = [s;A];
    if iscell(s) == 0
        Score = num2cell(s);
    end
    scoreBoard = [Name,Score];
    scoreBoard = sortrows(scoreBoard,2);
    save ('easyScore.mat','scoreTable','Name','Score');
    
elseif level == 2
    load intermediateScore.mat;
    Name = (A);
    Score = [s;A];
    if iscell(s) == 0
        Score = num2cell(s);
    end
    scoreBoard = [Name,Score];
    scoreBoard = sortrows(scoreBoard,2);
    save ('intermediateScore.mat','scoreTable','Name','Score');
    
elseif level == 3
    load hardScore.mat;
    Name = (A);
    Score = [s;A];
    if iscell(s) == 0
        Score = num2cell(s);
    end
    scoreBoard = [Name,Score];
    scoreBoard = sortrows(scoreBoard,2);
    save ('hardScore.mat','scoreTable','Name','Score');
  
end