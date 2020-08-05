class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    puts "$" * 60
    puts params
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id:105)
    #modifier le user_ id pour charger le user.first_name = anonymous qui sera cree avec le seed
    if @gossip.save
      render "/welcome/welcome_message", :notice => "User saved"
    else
      render "new", :alert => 'Alert message!'
    end
  end
end