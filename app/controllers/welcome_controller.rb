

class WelcomeController < ApplicationController

  def home
    if user_signed_in?
      redirect_to welcome_dashboard_path
    end
  end

  def dashboard
    if user_signed_in?
      if !current_user.valid?
        redirect_to edit_user_path(current_user)
      end
    else
      redirect_to welcome_home_path
    end
  end


end
