function hardLevel()
 
                clc;
                level = 3;
                user = input('Enter a username: ','s');
                A = user;
                
                rand = 1;
                arr = ('tapir');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 3;

                disp('***** Welcome to the Grabble *****');
                disp('You have 3 attempts to guess the answer');
                disp('1st Question:')
                disp('An ant eater.');

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
                    disp('Game Over!');
                    disp(['Bad Luck! You are out of attempt(s), the word was ', word]);
                    s = 0;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the next question');
                    fprintf(1, '\n');
                    s = 0+3;
                    pause(1);
                    
                rand = 1;
                arr = ('brunei');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 3;

                clc;
                disp('2nd Question:')
                disp('A country called as The Abode of Peace.');

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
                    s = 0+3;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the last question');
                    fprintf(1, '\n');
                    s = 0+6;
                    pause(1);
                
                rand = 1;
                arr = ('lemur');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 3;

                clc;
                disp('3rd Question:')
                disp('A clade of strepsirrhine primates endemic to the island of Madagascar.');

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
                    s = 0+6;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('You won!')
                    s = 0+9;
                end
                end
                end
                
                load hardScore.mat
                Name = [Name;A];
                Name = cellstr(Name);
                Score = [Score;s];
                    if iscell(Score) == 0
                        Score = num2cell(Score);
                end
                scoreLevel = [Name,Score];
                scoreLevel = sortrows(scoreLevel,2);
                save ('hardScore.mat','scoreLevel','Name','Score');
end