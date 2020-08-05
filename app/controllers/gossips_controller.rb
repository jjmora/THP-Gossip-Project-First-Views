class GossipsController < ApplicationController
  def index
    # Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
  end
  
  def show
    @id = params[:id]

    puts "$" * 60 #ça affiche une ligne de 60 symboles $ facilement visible dans le terminal
    puts params #tu sais que params doit s'afficher entre les 2
    puts "$" * 60
    
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
    # Méthode qui récupère le potin concerné et l'envoie à la view edit (edit.html.erb) pour affichage dans un formulaire d'édition
  end

  def update
    # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
    # pour info, le contenu de ce formulaire sera accessible dans le hash params
    # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
  end

  def destroy
    # Méthode qui récupère le potin concerné et le détruit en base
    # Une fois la suppression faite, on redirige généralement vers la méthode index (pour afficher la liste à jour)
  end
end