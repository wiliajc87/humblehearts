class CommunityResourcesController < ApplicationController
  include Categories
  def index
    resource_categorify
  end

  def show
    @community_resource = CommunityResource.find(params[:id])
    if @community_resource.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end

  def create
    @community_resource = CommunityResource.new(community_resource_params)
    if @community_resource.save
      redirect_to administration_path
    end
  end

  def update
    @community_resource = CommunityResource.find(params[:id])
    if @community_resource.update(community_resource_params)
      redirect_to administration_path
    end
  end

  def delete
    @community_resource = CommunityResource.find(params[:id])
    if @community_resource.destroy
      redirect_to administration_path
    else
      redirect_to administration_path
    end
  end
  private
    def community_resource_params
      params.require(:community_resource).permit(:name, :phone, :url, :address, :category)
    end
end