// Arrays //
let deck = [
   ["Hearts", "Ace"],
   ["Hearts", "2"],
   ["Hearts", "3"],
   ["Hearts", "4"],
   ["Hearts", "5"],
   ["Hearts", "6"],
   ["Hearts", "7"],
   ["Hearts", "8"],
   ["Hearts", "9"],
   ["Hearts", "10"],
   ["Hearts", "Jack"],
   ["Hearts", "Queen"],
   ["Hearts", "King"],
   ["Clubs", "Ace"],
   ["Clubs", "2"],
   ["Clubs", "3"],
   ["Clubs", "4"],
   ["Clubs", "5"],
   ["Clubs", "6"],
   ["Clubs", "7"],
   ["Clubs", "8"],
   ["Clubs", "9"],
   ["Clubs", "10"],
   ["Clubs", "Jack"],
   ["Clubs", "Queen"],
   ["Clubs", "King"],
   ["Diamonds", "Ace"],
   ["Diamonds", "2"],
   ["Diamonds", "3"],
   ["Diamonds", "4"],
   ["Diamonds", "5"],
   ["Diamonds", "6"],
   ["Diamonds", "7"],
   ["Diamonds", "8"],
   ["Diamonds", "9"],
   ["Diamonds", "10"],
   ["Diamonds", "Jack"],
   ["Diamonds", "Queen"],
   ["Diamonds", "King"],
   ["Spades", "Ace"],
   ["Spades", "2"],
   ["Spades", "3"],
   ["Spades", "4"],
   ["Spades", "5"],
   ["Spades", "6"],
   ["Spades", "7"],
   ["Spades", "8"],
   ["Spades", "9"],
   ["Spades", "10"],
   ["Spades", "Jack"],
   ["Spades", "Queen"],
   ["Spades", "King"],

];
let playerHand = [];
let compHand   = [];

// States //
let mainState = 1;
let gameState = 0;

//\\---Text Constants---//\\
const playQuestion = "Would you like to play?";
const yesNo = "(Y)es / (N)o ";
const yesNoExit = "(Y)es / (N)o / (E)xit";
const invalidInput = "Error: invalid input.";

//\\---Functions---//\\
const clearScreen = () => {
   console.clear();
};

const shuffleDeck = (arr) => {
   shuffle(arr);
   return arr;
};

const shuffle = (arr) => {
   var j, x, i;
   for (i = a.length - 1; i > 0; i--) {
      j = Math.floor(Math.random() * (i + 1));
      x = a[i];
      a[i] = a[j];
      a[j] = x;
   };
};

//\\---Main---//\\
while (mainState == 1){
      //\\---Compair States---//\\
      if (gameState == 9){
           mainState = 0
      };

      while (gameState == 0){
         //\\---Text Outs---//\\
         console.log(playQuestion);
         console.log(yesNoExit);

         willPlay = readline();

         //\\---Compare Input---//\\
         if (willPlay == "Y" || willPlay == "y") {
            gameState = 1;
         } else if (willPlay == "N" || willPlay == "n") {
            gameState = 2;
         } else if (willPlay == "E" || willPlay == "e") {
            gameState = 9;
         } else {
            console.log(invalidInput);
         };
      };

      while (gameState == 1) {
         console.log("Working!");
         gameState = 1;
      };

      while (gameState == 2) {
         gameState = 1;
      };

      while (gameState == 9 ) {
         mainState = 0;
         gameState = 0;
      };

};
