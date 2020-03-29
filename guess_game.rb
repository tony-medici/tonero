def guess_game

    #Variable declarations
    guess_limit = 0
    random_number = 0
    guess = ""
    guess_count = 0

    #Instructing the user on which difficulty level to choose
    puts "This is a number guess game. Select your difficulty level by their S/N to proceed: \n 1) Easy \n 2) Medium \n 3) Hard"
    
    #User to choose difficulty level
    level = gets.chomp.to_i
    
    #Setting Difficulty level based on the user's input stored variable "level"
    if level == 1
        random_number =  (rand() * 10).to_i
        guess_limit = 6

    elsif level == 2
        random_number =  (rand() * 20).to_i
        guess_limit = 4

    else 
        random_number =  (rand() * 50).to_i
        guess_limit = 3
    
    end

    puts "\n"
    puts "Guess The number: "

    #Iteration which loops until the "guess_limit" is exhausted, based on difficulty level
    while guess_count < guess_limit
        #User guess input
        guess = gets.chomp

        #A conditional statement that checks if the user inputted a valid number
        if guess.class == String or guess.class == Float 
            puts "Please enter a valid number \n"
        end

        #Condition to determine if user is correct or wrong
        if guess.to_i == random_number
            puts "You got it right!"
            break
        else
            puts "That was wrong"
        end

        guess_count += 1

        #Showing how many guesses the user has
        puts "You have #{guess_limit - guess_count} number of guesses left \n"
    end

    #Condition to tell the user when Game is Over
    if guess_count == guess_limit
        puts "Game Over!"
    end

end

#Calling Method/Function
puts guess_game()