function hangmanGame
%% hangmanGame
% A simple game made as an exercise for Matlab club. 
% One player inputs a word, the other guesses letters. 
% Make sure the second player can't see the screen as you type the word!

chosenWord = upper(input('Pick a word: ','s')); 
while all(isletter(chosenWord)) ~= 1
    chosenWord = upper(input('C''mon, pick a REAL word...: ','s'));
end 

clc;

pickedLetters = []; 

noGuesses = 5;
noFree = length(chosenWord); 

[noFreeUsed, noGuessesUsed] = deal(0); 
wordState(1:noFree) = '-'; 

while noGuessesUsed < noGuesses && isequal(chosenWord, wordState) == 0 
    chosenLetter = upper(input('Pick a letter: ','s'));
    while all(isletter(chosenLetter)) ~= 1 || length(chosenLetter) > 1 
        chosenLetter = upper(input('No, a letter, only ONE letter!: ','s'));
    end
    
    idx = ismember(chosenWord, chosenLetter); 
    
    if any(idx) == true && ismember(chosenLetter, pickedLetters) ~= 1; 
        wordState(idx) = chosenLetter; 
        pickedLetters = [pickedLetters, chosenLetter]; 
        noFreeUsed = noFreeUsed + 1; 
        disp('You got one!'); 
    else 
        if ismember(chosenLetter, pickedLetters) == 1;
            disp('You''ve already tried that!');
        else 
            pickedLetters = [pickedLetters, chosenLetter]; 
            noGuessesUsed = noGuessesUsed + 1; 
            disp('Nope! Pick again!'); 
        end 
    end 
    disp(wordState); 
    disp([num2str(noGuesses - noGuessesUsed) ' guesses remain!']); 
end 

disp('GAME OVER'); 
if isequal(chosenWord, wordState)
    disp('YOU WON!');
else 
    disp('YOU DIED!'); 
    disp(['THE WORD WAS: ' chosenWord]); 
end 
    