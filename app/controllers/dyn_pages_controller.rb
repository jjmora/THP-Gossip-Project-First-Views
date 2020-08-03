class DynPagesController < ApplicationController
  def rumor
    puts "#{params}"
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    @id = params[:id]
    puts "User: #{@id}"
  end

  def gossiper
    puts "#{params}"
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    @id = params[:id]
    puts "User: #{@id}"
  end

end
