require_relative '../config/environment'
require 'pry'
# puts "hello world"


myApp = App.new
bjack = Blackjack.new


myApp.display_welcome_message

myApp.heading
myApp.header



hunter = myApp.display_user_choices


myApp.hunter_poster(hunter)


myApp.display_bounty_hunter_request



myApp.bounty_hunter_request_response(hunter)




myApp.display_top_10_wanted

bounty = myApp.get_bounty_choice
myApp.bounty_poster(bounty)

myApp.display_bounty_request

myApp.bounty_request_response(hunter,bounty)

myApp.play_to_capture

bjack.card_image
bjack.runner

bjack.stop_game

# myApp.add_reward


