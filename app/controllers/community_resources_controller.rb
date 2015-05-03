class CommunityResourcesController < ApplicationController
  include Categories
  def index
    categorify
  end

  def new
    @community_resource = CommunityResource.new
  end

  def create
    @community_resource = CommunityResource.new(community_resource_params)
    @community_resource.save
  end

  def update
    @community_resource = CommunityResource.find(params[:id])
    @community_resource.update(community_resource_params)
  end

  def delete
    @community_resource = CommunityResource.find(params[:id]).destroy
  end
  private
    def community_resource_params
      params.require(:community_resource).permit(:name, :phone, :url, :address, :category)
    end
end