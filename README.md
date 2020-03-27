# Hangman
Interpretation of the linguistic game "Hangman."

One of the players makes a word - writes the first and last letter of the word on paper 
and marks the places for the remaining letters, for example, 
with traits (there is also an option when initially all the letters of the word are unknown). 
A gallows with a noose is also drawn. The second player offers a letter that may be included in this word. 
If such a letter is in the word, then the first player writes it over the features corresponding 
to this letter - as many times as it appears in the word. If there is no such letter, 
then a circle in the loop representing the head is added to the gallows. 
The second player continues to guess the letters until he guesses the whole word. 
For each incorrect answer, the first player adds one part of the body to the gallows 
(usually there are 6: head, body, 2 arms and 2 legs, there is also an option with 8 parts - feet are added, 
as well as the longest option, when parts are first drawn for an unguessed letter the gallows itself). 
If the body in the gallows is completely drawn, then the guessing player loses and is considered to be hanged. 
If a player manages to guess a word, he wins and can make a word.

To add new words to the game, you need to open the text file "words.txt" from the "data" folder, 
and in edit mode, add the necessary words to it. 

The game is written in the Ruby programming language. 

To start the game, in the terminal, from the folder with the game file, run the command:
```ruby main.rb
