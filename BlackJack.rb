require 'json'

#file = File.read('Deck.json')
#deck = JSON.parse(deck)
deck        = [
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

]
player_hand = []
comp_hand   = []

main_state = 1
game_state = 0
play_question = "Would you like to play?"
yes_no = "(Y)es / (N)o "
yes_no_exit = "(Y)es / (N)o / (E)xit"
invalid_input = "Error: invalid input."

def clear_screen
    sleep 0.25
    system "cls"
end

#def shuffle_deck
#   5.times do
#      deck.shuffle
#   end
#   return deck
#   #deck.each { |suit, value| puts "#{suit}, #{value}"}
#end

while main_state == 1

    if game_state == 9
        main_state =0
    end

    while game_state == 0

        puts play_question
        puts yes_no_exit

        will_play = gets.chomp

        if will_play == "Y" || will_play == "y"
            game_state = 1
            clear_screen

            deck = deck.shuffle
            #deck.each { |suit, value| puts "#{suit}, #{value}" }
            2.times do
               player_hand = deck.map { |card| card.map{ |suit, value| puts "#{suit}, #{value}" } }
               deck.shift
            end
            #player_hand.each { |suit, each| puts "#{suit}, #{value}" }
            puts ""
            deck.each { |suit, each| puts "#{suit}, #{value}" }


        elsif will_play == "N" || will_play == "n"
            game_state = 0
            clear_screen
        elsif will_play == "E" || will_play == "e"
            game_state = 9
            clear_screen
        else
            puts invalid_input
        end
    end

    while game_state == 1
        5.times do
            puts "Working!"
        end

        game_state = 0

    end
end
