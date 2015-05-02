class WelcomeController < ApplicationController
  def index
  end

  def our_story
    @team_members = TeamMember.all
  end

  def our_services
  end
end
