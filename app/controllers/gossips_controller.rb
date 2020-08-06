class GossipsController < ApplicationController
  def index
    @gossip = Gossip.all
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end
  
  def show
    @id = params[:id]
    @user_id = Gossip.find(@id).user_id
    @city_id = City.find(Gossip.find(@id).user.city_id).id
    @city = City.find(Gossip.find(@id).user.city_id).name
    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    puts "user_id = #{@user_id}"

  end


  def new
    @gossip = Gossip.new
  end

  def create
    puts "$" * 60
    puts params
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: User.all.last.id)
    #modifier le user_ id pour charger le user.first_name = anonymous qui sera cree avec le seed
    if @gossip.save
      render "/welcome/welcome_message", :notice => "User saved"
    else
      render "new", :alert => 'Alert message!'
    end
  end

  def edit
    @gossips = Gossip.find(params[:id])
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
    puts "$" * 60
    puts "Edit Method"
    puts params
    puts "$" * 60
  
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
    @gossips = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    if @gossips.update(post_params)
      redirect_to gossips_path
    else
      render :edit
    end

    
    puts "$" * 60
    puts "Update Method"
    puts params
    puts "$" * 60
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end