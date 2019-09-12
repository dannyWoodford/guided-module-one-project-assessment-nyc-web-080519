require 'pry'
require "tty-prompt"

class App

#  action 1. display/choose BountyHunter
#____________________________________________________________________________________________________________________________________________________________________________
 
def sl_time
    time = rand(2.0005..3.0007)
    sleep(time)
end

def animate(string)
    string.each_char do |n|
        print n
        slt = rand(0.02..0.05)
        sleep(slt)
    end
end

def display_welcome_message
              text = <<-EOF
              ██████╗  ██████╗ ██╗   ██╗███╗   ██╗████████╗██╗   ██╗    ██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗
              ██╔══██╗██╔═══██╗██║   ██║████╗  ██║╚══██╔══╝╚██╗ ██╔╝    ██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗
              ██████╔╝██║   ██║██║   ██║██╔██╗ ██║   ██║    ╚████╔╝     ███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝
              ██╔══██╗██║   ██║██║   ██║██║╚██╗██║   ██║     ╚██╔╝      ██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗
              ██████╔╝╚██████╔╝╚██████╔╝██║ ╚████║   ██║      ██║       ██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║
              ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝   ╚═╝      ╚═╝       ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
              EOF
          
              puts text.colorize(:color => :light_blue)                                                                                                             
end


    def heading
        text = <<-EOF
        ####################----------------------------------------------------------------------------------####################
        ##############----------------------------------------------------------------------------------------------##############
        ##########------------------------------------------------------------------------------------------------------##########
        #####----------------------------------------------------------------------------------------------------------------#####
        
        EOF

        puts text
    end
    
    def sltime
        time = rand(0.5..0.7)
        sleep(time)
    end

    def anim(string)
        string.each_char do |n|
            print n
            slt = rand(0.02..0.06)
            sleep(slt)
        end
        print "\n"
        sltime
    end

    def header
        text = <<-EOF

                                              BOUNTY HUNTERS
                                            __________________
                                                      
                                     Choose number to view Bounty Hunter
                                          EOF

                                          puts anim(text.colorize(:color => :light_blue))
    end

    # def test
    #     text = <<-TER 

    #     heybitch "#{BountyHunter.all.first}"


    #     TER

    #     puts text 
    # end

    def user_choice
        user_response = gets.chomp
    end
    
    # def tester
    #     choose_bh = BountyHunter.all.take(5) 
    #     prompt = TTY::Prompt.new
    #     test_array = []
    #     choose_bh.each { |bounty_hunter| test_array << "#{bounty_hunter.name}"}

    #     hunter = prompt.select("Choose your destiny?", test_array)
    #     puts "you selected #{hunter}"

    #     binding.pry
    # end

    def display_user_choices
        choose_bh = BountyHunter.all.take(5)
        choose_bh.each.with_index(1) { |bounty_hunter, i| puts "#{i}. #{bounty_hunter.name}"}
             puts "_____________________"
             puts "################"
        user_response = user_choice
            puts "################"
        hunter = choose_bh[user_response.to_i - 1]   
        puts "                "
        puts " You choose #{hunter.name}"
        puts "_______________"
        puts "Occupation: #{hunter.occupation}"
        puts "Special skills: #{hunter.special_skills}"
        puts "Net Worth: #{hunter.net_worth}"
        puts "History: #{hunter.bio}"
        puts "--------------------------------------------------------------------------------------------------"
        hunter
    end

    def hunter_poster(hunter)
            text = <<-TAM
                    
                                                       Occupation: #{hunter.occupation}
                                                       Special skills: #{hunter.special_skills}
                                                       Net Worth: #{hunter.net_worth}
                                                       History: #{hunter.bio}

            TAM

            puts text
    end

   
 

    def display_bounty_hunter_request
        puts "                "
        puts "#####################################"
        puts "Do you want to be this Bounty Hunter or view another?"
    end

    def bounty_hunter_request_response(hunter)
        choices = ["I'll take it", "Show me more"]
        choices.each.with_index(1){ |choice, i| puts "#{i}. #{choice}"}
        yes1_or_no2 = gets.chomp 
        if yes1_or_no2.to_i == 2
            display_user_choices
            display_bounty_hunter_request
            bounty_hunter_request_response(hunter)
        elsif yes1_or_no2.to_i == 1
            puts "                "
            puts " You choose #{hunter.name}"
            puts "_______________"
            puts "Occupation: "
            puts "Special skills: "
            puts "Net Worth: #{hunter.net_worth}"
            puts "--------------------------------------------------------------------------------------------------"
        else 
            puts "____________________________________"
            puts "                                    "
            puts "invalid option. Choose again."
            display_user_choices
            display_bounty_hunter_request
            bounty_hunter_request_response(hunter)
        end
    end



   # action 2. Bounty
#____________________________________________________________________________________________________________________________________________________________________________________________________________
    def display_top_10_wanted
        most_wanted = Bounty.all.take(10)
        puts "Ten Most Wanted"
        puts "________________"
        text_array = []
        most_wanted.each.with_index(1) { |bounty, i| puts "#{i}. #{bounty.name}"}
        text_array.each do |n|
            anim(n)
        end
    end

    def user_bounty
        the_bounty = gets.chomp
    end

    def get_bounty_choice
        most_wanted = Bounty.all.take(10)
        puts "                "
        puts "###########"
        user_choice = user_bounty
        puts "###########"
        puts "                "
        user_response = user_choice
        bounty_choice = most_wanted[user_response.to_i - 1]
        puts bounty_choice.name
        puts "_______________"
        bounty_choice
    end


    def bounty_poster(bounty)
        text = <<-TER 
        
        ----------------------------------------------------------------------------------------------------------
                        ______________________________________________________________________
                      / \                                                                      \.
                     |   |                                                                      |.
                      \_ |                                                                      |.
                         |          ██╗    ██╗ █████╗ ███╗   ██╗████████╗███████╗██████╗        |.
                         |          ██║    ██║██╔══██╗████╗  ██║╚══██╔══╝██╔════╝██╔══██╗       |.
                         |          ██║ █╗ ██║███████║██╔██╗ ██║   ██║   █████╗  ██║  ██║       |.
                         |          ██║███╗██║██╔══██║██║╚██╗██║   ██║   ██╔══╝  ██║  ██║       |.
                         |          ╚███╔███╔╝██║  ██║██║ ╚████║   ██║   ███████╗██████╔╝       |.
                         |           ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═════╝        |.                                                        
                         |                                                                      |.
                         |                                                                      |.
                         |               REWARD: #{bounty.reward}$                              |.
                         |               NAME: #{bounty.name}                                   |.
                         |                                                                      |.
                         |               WANTED FOR: #{bounty.wanted_for}                       |.
                         |               --------------------------------                       |.                                     
                         |                                                                      |.
                         |                                                                      |.
                         |                                                                      |.
                         |                                                                      |.
                         |   ___________________________________________________________________|___
                         |  /                                                                      /.
                         \_/dc____________________________________________________________________/.    
                                
        TER

        puts text.colorize(:light_blue)
end

    def display_bounty_request
        puts "                "
        puts "#####################################"
        puts "Take the contract or choose another?"
    end

    def bounty_request_response(hunter,bounty)
        choices = ["I'll take it", "Show me more"]
        choices.each.with_index(1){ |choice, i| puts "#{i}. #{choice}"}
        yes_or_no = gets.chomp 
        if yes_or_no.to_i == 2
             display_top_10_wanted
            get_bounty_choice
            display_bounty_request
            bounty_request_response(hunter,bounty)
        elsif yes_or_no.to_i == 1
            BountyJoiner.create(bounty_hunter_id: hunter.id, bounty_id: bounty.id)
            puts "                "
            puts " You choose"
            puts bounty.name
            puts "_______________"
            puts "STATUS: #{bounty.status}"
            puts "REWARD: #{bounty.reward}$"
            puts "WANTED FOR: #{bounty.wanted_for}"
            puts "--------------------------------------------------------------------------------------------------"
        else 
            puts "____________________________________"
            puts "                                    "
            puts "invalid option. Choose again."
            bounty_request_response(hunter,bounty)
        end
    end

    def play_to_capture
        puts "Play to capture Bounty and gain reward"
        puts "________________________________________"
    end
    
    def add_reward
        gain = bounty.reward + hunter.net_worth
        hunter.update(net_worth: gain )
        puts "You gained #{bounty.reward}"
        puts "#{hunter.name} current net_worth: #{gain}$ruby bin"
    end

end
