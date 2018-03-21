function game()
choice1 = menu('Difficulty','Easy','Intermediate','Hard');
        switch choice1
            case 1
                clc;
                level = 1;
                user = input('Enter a username: ','s');
                A = user;
                
                rand = 1;
                arr = ('tomato');
                celldata = cellstr(arr);

                word = char(celldata(rand));
                scores = 0;
                s = scores;
                highScore = max(scores);

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
                
            case 2
                
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
                
            case 3
                
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
        end
                if level == 1
                    load ('easyScore.mat','highScore');
                    Name = [Name;A];
                    Name = cellstr(Name);
                    Score = [Score;s];
                    if iscell(s) == 0
                        Score = num2cell(s);
                    end
                    highScore = [Name,Score];
                    highScore = sortrows(highScore,2);
                    save ('easyScore.mat','highScore','Name','Score');

                elseif level == 2
                    load ('intermediateScore.mat','highScore');
                    Name = [Name;A];
                    Name = cellstr(Name);
                    Score = [Score;s];
                    if iscell(s) == 0
                        Score = num2cell(s);
                    end
                    highScore = [Name,Score];
                    highScore = sortrows(highScore,2);
                    save ('intermediateScore.mat','highScore','Name','Score');

                elseif level == 3
                    load ('hardScore.mat','highScore');
                    Name = [Name;A];
                    Name = cellstr(Name);
                    Score = [Score;s];
                    if iscell(s) == 0
                        Score = num2cell(s);
                    end
                    highScore = [Name,Score];
                    highScore = sortrows(highScore,2);
                    save ('hardScore.mat','highScore','Name','Score');

                end
        end