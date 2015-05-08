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
      @team_member = TeamMember.new
      @medium = Medium.new
      @event = Event.new
      @community_resource = CommunityResource.new
      q = params[:q]
      @media    = Medium.ransack(title_cont: q).result
      @community_resources = CommunityResource.ransack(name_cont: q).result
      @events = Event.ransack(title_cont: q).result
      @team_members = TeamMember.ransack(name_cont: q).result
      render "administration"
    else
      redirect_to root_path
    end
  end
end
