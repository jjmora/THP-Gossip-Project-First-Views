
class WelcomeController < ApplicationController
  def index
  end
  
  def welcome_message
    puts "#{params}"
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    @first_name = params[:first_name]
    puts "User: #{@first_name}"
  end


end
