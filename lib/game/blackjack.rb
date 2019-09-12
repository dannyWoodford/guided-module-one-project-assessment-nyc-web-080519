require 'pry'
class Blackjack

def deal_card
  rand(1..11)
end

def deal_new_card
  rand(1..11)
end

def dealer_card
  12 + rand(1..11)
end

def display_dealer_card(dealer_card)
  puts "The dealer has #{dealer_card}"
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"

  def stop_game
    puts "thanks for playing"
  end
  
end


##########
# rounds #
##########

def card_image
    text = <<-DGF
                                                        _____
                                                        |\ ~ /|
                                                        |}}:{{|
                                                        |}}:{{|  _____
                                                        |}}:{{| |Joker|
                                                        |/_~_\| |==%, |
                                                                | \/>\|
                                                    ejm98        | _>^^|           _____
                                                      _____     |/_\/_|    _____ |6    |
                                                     |2    | _____        |5    || ^ ^ | 
                                                     |  ^  ||3    | _____ | ^ ^ || ^ ^ | _____
                                                     |     || ^ ^ ||4    ||  ^  || ^ ^ ||7    |
                                                     |  ^  ||     || ^ ^ || ^ ^ ||____9|| ^ ^ | _____
                                                     |____Z||  ^  ||     ||____S|       |^ ^ ^||8    | _____
                                                            |____E|| ^ ^ |              | ^ ^ ||^ ^ ^||9    |
                                                                   |____h|              |____L|| ^ ^ ||^ ^ ^|
                                                                               _____           |^ ^ ^||^ ^ ^|
                                                                       _____  |K  WW|          |____8||^ ^ ^|
                                                               _____  |Q  ww| | ^ {)|                 |____6|
                                                        _____ |J  ww| | ^ {(| |(.)%%| _____
                                                       |10 ^ || ^ {)| |(.)%%| | |%%%||A .  |
                                                       |^ ^ ^||(.)% | | |%%%| |_%%%>|| /.\ |
                                                       |^ ^ ^|| | % | |_%%%O|        |(_._)|
                                                       |^ ^ ^||__%%[|                |  |  |
                                                       |___0I|                       |____V|
                                                                                  _____
                                                      _____                _____ |6    |
                                                     |2    | _____        |5    || & & | 
                                                     |  &  ||3    | _____ | & & || & & | _____
                                                     |     || & & ||4    ||  &  || & & ||7    |
                                                     |  &  ||     || & & || & & ||____9|| & & | _____
                                                     |____Z||  &  ||     ||____S|       |& & &||8    | _____
                                                            |____E|| & & |              | & & ||& & &||9    |
                                                                   |____h|              |____L|| & & ||& & &|
                                                                               _____           |& & &||& & &|
                                                                       _____  |K  WW|          |____8||& & &|
                                                               _____  |Q  ww| | o {)|                 |____6|
                                                        _____ |J  ww| | o {(| |o o%%| _____
                                                       |10 & || o {)| |o o%%| | |%%%||A _  |
                                                       |& & &||o o% | | |%%%| |_%%%>|| ( ) |
                                                       |& & &|| | % | |_%%%O|        |(_'_)|
                                                       |& & &||__%%[|                |  |  |
                                                       |___0I|                       |____V|
                                                                                  _____
                                                      _____                _____ |6    |
                                                     |2    | _____        |5    || v v | 
                                                     |  v  ||3    | _____ | v v || v v | _____
                                                     |     || v v ||4    ||  v  || v v ||7    |
                                                     |  v  ||     || v v || v v ||____9|| v v | _____
                                                     |____Z||  v  ||     ||____S|       |v v v||8    | _____
                                                            |____E|| v v |              | v v ||v v v||9    |
                                                                   |____h|              |____L|| v v ||v v v|
                                                                               _____           |v v v||v v v|
                                                                       _____  |K  WW|          |____8||v v v|
                                                               _____  |Q  ww| |   {)|                 |____6|
                                                        _____ |J  ww| |   {(| |(v)%%| _____
                                                       |10 v ||   {)| |(v)%%| | v%%%||A_ _ |
                                                       |v v v||(v)% | | v%%%| |_%%%>||( v )|
                                                       |v v v|| v % | |_%%%O|        | \ / |
                                                       |v v v||__%%[|                |  .  |
                                                       |___0I|                       |____V|
                                                                                  _____
                                                      _____                _____ |6    |
                                                     |2    | _____        |5    || o o | 
                                                     |  o  ||3    | _____ | o o || o o | _____
                                                     |     || o o ||4    ||  o  || o o ||7    |
                                                     |  o  ||     || o o || o o ||____9|| o o | _____
                                                     |____Z||  o  ||     ||____S|       |o o o||8    | _____
                                                            |____E|| o o |              | o o ||o o o||9    |
                                                                   |____h|              |____L|| o o ||o o o|
                                                                               _____           |o o o||o o o|
                                                                       _____  |K  WW|          |____8||o o o|
                                                               _____  |Q  ww| | /\{)|                 |____6|
                                                        _____ |J  ww| | /\{(| | \/%%| _____
                                                       |10 o || /\{)| | \/%%| |  %%%||A ^  |
                                                       |o o o|| \/% | |  %%%| |_%%%>|| / \ |
                                                       |o o o||   % | |_%%%O|        | \ / |
                                                       |o o o||__%%[|                |  .  |
                                                       |___0I|                       |____V|




    DGF

    puts text.colorize(:red)

end


def welcome
  puts "Welcome to the Blackjack Table"
  puts "_____________________________________________________"
end


def prompt_user
  puts "Type 'hit' to hit or type 'stay' to stay"
end


def initial_round
  first_round = deal_card + deal_card
  display_card_total(first_round)
   first_round
end

def get_user_input
  gets.chomp.strip
end


def hit?(card_total)
  valid_inputs = ["hit", "stay"]
  player = card_total + deal_card
  dealer = dealer_card
  
  puts "____________________________________"
  prompt_user
  user_input = get_user_input
  puts "____________________________________"

  until valid_inputs.include?(user_input)
    invalid_command
    prompt_user
    user_input = get_user_input
  end

  if user_input == "hit"
    if (dealer >= 22)
      display_card_total(card_total)
      puts "Dealer has #{dealer}"
      puts "Dealer broke. You win!"
      stop_game
      exit
    elsif player > 21
      display_card_total(card_total)
      puts "You broke."
      stop_game
      exit
      binding.pry
    elsif
      card_total += deal_new_card
      display_card_total(card_total)
      hit?(card_total)
    end
  elsif user_input == "stay"
    dealer
      if (dealer >= 21)
        display_card_total(card_total)
        puts "Dealer has #{dealer}"
        puts "Dealer broke. You win!"
        stop_game
        exit
      elsif dealer < 21 && player >= dealer
        display_card_total(card_total)
        puts "dealer has #{dealer}"
        puts "You win"
        stop_game
        exit
      elsif (dealer < 21) && player < dealer
        display_card_total(card_total)
        puts "Dealer has #{dealer}"
        puts "Dealer wins!"
        stop_game 
        exit
      end
  end

  def end_game
    puts "game over!"
  end
  

end

def invalid_command
  puts "Please enter a valid command"
end




def runner
  welcome
  card_total = initial_round
  until  card_total > 21 
     hit?(card_total)
    display_card_total(card_total)
  end
  end_game
end

end