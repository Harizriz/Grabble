function intermediateLevel()
                
                clc;
                level = 2;
                user = input('Enter a username: ','s');
                A = user;
                
                rand = 1;
                arr = ('lynx');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 5;

                disp('***** Welcome to the Grabble *****');
                disp('You have 5 attempts to guess the answer');
                disp('1st Question:');
                disp('One of the four species of the medium-sized wild cats.');

                while ~ strcmp(word,guessWord)  
    
                    guess = input('Enter a letter: ','s');
                    index = strfind(word,guess); 
                    if index 
                        guessWord(index) = guess;
                        disp(guessWord);
                    else
                        counter=counter-1;
                        if counter == 0 
                            break
                        end
                        disp(['you have only ', num2str(counter), ' attempt(s)']);
                    end
                end

                if counter == 0
                    disp('Game over!');
                    disp(['Bad luck! You are out of attempt(s), the word was ', word]);
                    s = 0;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the next question');
                    fprintf(1, '\n');
                    s = 0+2;
                    pause(1);
                    
                rand = 1;
                arr = ('babi');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 5;

                clc;
                disp('2nd Question:');
                disp('Father in Spanish');

                while ~ strcmp(word,guessWord)  
    
                    guess = input('Enter a letter: ','s');
                    index = strfind(word,guess); 
                    if index 
                        guessWord(index) = guess;
                        disp(guessWord);
                    else
                        counter=counter-1;
                        if counter == 0 
                            break
                        end
                        disp(['Incorrect guess. You have only ', num2str(counter) , ' attempt(s)']);
                    end
                end

                if counter == 0
                    disp('Game Over');
                    disp(['Bad luck. You are out of attempt(s), the word was ', word]);
                    s = 0+2;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the last question');
                    fprintf(1, '\n');
                    s = 0+4;
                    pause(1);
                    
                rand = 1;
                arr = ('');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = 'aborigine';
                counter = 5;

                clc;
                disp('3rd Question:');
                disp('A member of the people who were the earliest inhabitants of Australia.');

                while ~ strcmp(word,guessWord)  
    
                    guess = input('Enter a letter: ','s');
                    index = strfind(word,guess); 
                    if index 
                        guessWord(index) = guess;
                        disp(guessWord);
                    else
                        counter=counter-1;
                        if counter == 0 
                            break
                        end
                        disp(['Incorrect guess. You have only ', num2str(counter) , ' attempt(s)']);
                    end
                end

                if counter == 0
                    disp('Game Over');
                    disp(['Bad luck! You are out of attempt(s), the word was ', word]);
                    s = 0+4;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('You won!')
                    s = 0+6;
                end    
                end   
                end
                
                load intermediateScore.mat
                Name = [Name;A];
                Name = cellstr(Name);
                Score = [Score;s];
                    if iscell(Score) == 0
                        Score = num2cell(Score);
                end
                scoreLevel = [Name,Score];
                scoreLevel = sortrows(scoreLevel,2);
                save ('intermediateScore.mat','scoreLevel','Name','Score');
end