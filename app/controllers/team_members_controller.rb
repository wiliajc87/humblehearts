class TeamMembersController < ApplicationController

  def create
    @team_member = TeamMember.new(team_member_params)
    if @team_member.save
      redirect_to administration_path
    end
  end

  def show
    @team_member = TeamMember.find(params[:id])
    if @team_member.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def update
    @team_member = TeamMember.find(params[:id])
    if @team_member.update(team_member_params)
      redirect_to administration_path
    end
  end

  def delete
    @team_member = TeamMember.find(params[:id])
    if @team_member.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end
  private
    def team_member_params
      params.require(:team_member).permit(:name, :title, :photo_url, :bio)
    end
end
