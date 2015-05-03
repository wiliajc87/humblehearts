class WelcomeController < ApplicationController
  def index
  end

  def our_story
    @team_members = TeamMember.all
  end

  def our_services
  end


  def support_us
  end

  def contact_us
  end

  def log_in
  end

  def administration
    if user_signed_in?
      @media = Medium.all
      @services = Serices.all
      @team_members = TeamMember.all
      render "administration"
    else
      redirect_to root_path
    end
  end
end
