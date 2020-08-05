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
    @comment = Comment.new(content: params[:content], author_id: 21)
    if @comment.save
      render "show", :notice => "User saved"
    end
  end

  def edit
    @gossips = Gossip.find(params[:id])
  end

  def update
    @gossips = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossips.update(post_params)
    redirect_to gossips_path
  end

  def create
    puts "$" * 60
    puts params
    @gossip = Gossip.new(post_params)
    @gossip.user_id = 21
    if @gossip.save
      render "index", :notice => "User saved"
    else
      render "new", :alert => 'Alert message!'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  def create_comment

  end

  private
  def post_params
    params.permit(:title, :content)
  end
end



