function easyLevel()

                clc;                
                user = input('Enter a username: ','s');
                A = user;                
                scores = 0;
                s = scores;
    
                rand = 1;
                arr = ('tomato');
                celldata = cellstr(arr);

                word = char(celldata(rand));
                
                guessWord = ' ';
                counter = 7;

                clc;
                disp('***** Welcome to the Grabble *****');
                disp('You have 7 attempts to guess the answer');
                disp('A fruit which is a vegetable.')

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
                    s = 0;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the next question');
                    fprintf(1, '\n');
                    s = 0+1;
                    pause(1);
                    
                rand = 1;
                arr = ('aglet');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 7;

                clc;
                disp('2nd Question:')
                disp('An end of a shoelace.');

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
                    s = 0+1;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('Let''s proceed to the last question');
                    fprintf(1, '\n');
                    s = 0+2;
                    pause(1);
                    
                rand = 1;
                arr = ('matlab');
                celldata = cellstr(arr);

                word = char(celldata(rand));

                guessWord = ' ';
                counter = 7;

                clc;
                disp('3rd Question:')
                disp('The easiest and most productive software environment for engineers and scientists.');

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
                    s = 0+2;
                elseif strcmp(word,guessWord)
                    disp('Congratulations you have found the word!');
                    disp('You won!')
                    s = 0+3;
                end
                end
                end
                
                load easyScore.mat
                Name = [Name;A];
                Name = cellstr(Name);
                Score = [Score;s];
                if iscell(Score) == 0
                    Score = num2cell(Score);
                end
                scoreLevel = [Name,Score];
                scoreLevel = sortrows(scoreLevel,-2);
                save ('easyScore.mat','scoreLevel','Name','Score')
end
                