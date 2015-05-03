class CommunityResource < ActiveRecord::Base
  validates :category, presence: true
end
