module Categories
  extend ActiveSupport::Concern
  def resource_categorify
    @shelters = CommunityResource.where(:category => "shelters")
    @community_centers  = CommunityResource.where(:category => "community centers")
    @housing_laws = CommunityResource.where(:category => "housing laws")
    @homeless_laws = CommunityResource.where(:category => "homeless laws")
    @pantries = CommunityResource.where(:category => "food pantries")
    @soup_kitchens = CommunityResource.where(:category => "soup/community kitchens ")
    @free_medical_centers = CommunityResource.where(:category => "free medical centers")
    @low_income_community_medical_clinics = CommunityResource.where(:category => "low income community medical clinics")
    @free_dental_services = CommunityResource.where(:category => "free / low income dental services")
    @mental_health_and_addiction_services = CommunityResource.where(:category => "mental health and addiction services")
    @other = CommunityResource.where(:category => "other")
    @category_hash = {
      "Shelters" => @shelters,
      "Community Centers" => @community_centers,
      "Housing Laws" => @housing_laws,
      "Pantries" => @pantries,
      "Soup Kitchens" => @soup_kitchens,
      "Free Medical Centers" => @free_medical_centers,
      "Free/Low Income Dental Services" => @free_dental_services,
      "Low Income Medical Centers" => @low_income_community_medical_clinics,
      "Mental Health and Addiction Services" =>@mental_health_and_addiction_services,
      "Other" => @other
    }
  end
  def media_categorify
    @videos = Medium.where(:category => "video")
    @articles  = Medium.where(:category => "article")
    @photos = Medium.where(:category => "photo")
    @category_hash = {
      "Video" => @videos,
      "Articles" => @articles,
      "Photos" => @photos
    }
  end
end