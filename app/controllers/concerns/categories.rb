module Categories
  extend ActiveSupport::Concern
  def categorify
    @shelters = CommunityResource.where(:category => "shelter")
    @community_centers  = CommunityResource.where(:category => "community centers")
    @housing_laws = CommunityResource.where(:category => "housing laws")
    @homeless_laws = CommunityResource.where(:category => "homeless laws")
    @pantries = CommunityResource.where(:category => "pantries")
    @soup_kitchens = CommunityResource.where(:category => "soup kitchens")
    @free_medical_centers = CommunityResource.where(:category => "free medical centers")
    @low_income_community_medical_clinics = CommunityResource.where(:category => "low income community medical clinics")
    @other = CommunityResource.where(:category => "other")
    @category_hash = {
      "Shelters" => @shelters,
      "Community Centers" => @community_centers,
      "Housing Laws" => @housing_laws,
      "Pantries" => @pantries,
      "Soup Kitchens" => @soup_kitchens,
      "Free Medical Centers" => @free_medical_centers,
      "Low Income Medical Centers" => @low_income_community_medical_clinics,
      "Other" => @other
    }
  end
end