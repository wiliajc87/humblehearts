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
      @team_search          = TeamMember.search(q)
      @team_members         = @team_search.result
      @media_search         = Medium.search(q)
      @media                = @media_search.result
      @resource_search      = CommunityResource.search(q)
      @community_resources  = @resource_search.result
      @event_search         = Event.search(q)
      @events               = @event_search.result
      render "administration"
    else
      redirect_to root_path
    end
  end
end