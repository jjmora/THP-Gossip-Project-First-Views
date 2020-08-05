class GossipsController < ApplicationController
  def index
    @gossip1 = Gossip.all
    @gossip = Gossip.new
  end

  def new
    @gossip = Gossip.new
  end

  def show
    puts "#{params}"
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    @id = params[:id]
    puts "User: #{@id}"
  end

  def create
    puts "$" * 60
    puts params
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 94)
    if @gossip.save
      render "index", :notice => "User saved"
    else
      render "new", :alert => 'Alert message!'
    end
  end

end



