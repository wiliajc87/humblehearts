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
end
