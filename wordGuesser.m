rand = randi(3,1,1);
arr = ['turtle'; 'matlab';'editor'];
celldata = cellstr(arr);

word = char(celldata(rand));

guess_word =' ';
counter=5;

disp('***** Welcome to the guessing game *****');
disp('you have 5 attempts to guess the word');

while ~strcmp(word,guess_word)  
    
    guess = input('try to guess the letter: ','s');
    index = strfind(word,guess); 
    if index 
        guess_word(index)=guess;
        disp(guess_word);
    else
        counter=counter-1;
        if counter == 0 
            break
        end
        disp(['you have only ', num2str(counter) ,' attempt(s)']);
    end
    
end

if counter == 0
    disp( ['you out of attempt(s), the word was ', word]);
elseif strcmp(word,guess_word)
    disp('Congratulations you found the word');
end 