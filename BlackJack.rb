main_state = 1
game_state = 0
play_question = "Would you like to play?"
yes_no = "(Y)es / (N)o "
yes_no_exit = "(Y)es / (N)o / (E)xit"
invalid_input = "Error: invalid input."
#clear_screen = "cls"

def clear_screen
    sleep 0.25
    system "cls"
end

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