class Message
attr_reader :start_game

  def initialize
    @start_game = start_game
  end
#do we do anything else here?
  def welcome_message
    puts "Welcome to MASTERMIND"
    puts "Would you like to (p)lay the game, read the (i)nstructions, or (q)uit?"
  end
  require "pry"; binding.pry

  def play_message
    puts  "play"
    puts  "I have generated a beginner sequence with four elements made up of:"
    puts  "(r)ed, (g)reen, (b)lue, and (y)ellow."
    puts  "Use (q)uit at any time to end the game."
  end

  def instructions_message
    puts "instructions"
    puts "****Rules of Gameplay****"
    puts "Your goal is to guess a secret code"
    puts "Each code is made up of 4 random elements"
    puts "I will give you hints along the way"
    puts "If you want to cheat type 'c'"
    puts "You are being timed..."
  end

  def quits_message
      puts "quit"
      puts "COOOOOWWWWWAAAAARDDDD"
  end
# edge case placeholder
  def wrong_input
    puts "I don't understand"
    puts "Please try again"
  end

  def pumpkin_eater
    puts "Here you go cheater: #{secret_code}"
  end

  def prompt_a_guess_message
     puts "What's your guess?"
  end

  def win_message
    puts "You did it!"
    puts "You are the MASTERMIND!"
  end

  def hint_message
  puts "#{guess_attempt} has #{hint[:correct_colors]} of the correct elements with #{hint[:correct_positions]} in the correct positions"
  # build a guess_count
  puts "You've taken #{guess_count} guess"
  end
end