class SessionsController < ApplicationController
  def new
    @titre = "S'identifier"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                               params[:session][:password])
    if user.nil?
      flash.now[:error] = "Combinaison Email/mot de passe incorrecte"
      @titre = "S'identifier"
      render 'new'
    else
      # Authentifie l'utilisateur et redirige vers la page d'affichage.
      sign_in user
<<<<<<< HEAD
      redirect_to user
    end
=======
      redirect_back_or user
  end
>>>>>>> updating-users
    
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
  
end
