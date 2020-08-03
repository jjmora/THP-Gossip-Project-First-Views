class WelcomeController < ApplicationController 
  def welcome_message
    puts "#{params}"
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    @first_name = params[:first_name]
    puts "User: #{@first_name}"
    @gossip_count = Gossip.all.count
    puts "count #{@gossip_count}"
  end
end