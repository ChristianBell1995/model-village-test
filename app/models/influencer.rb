class Influencer < ApplicationRecord
  has_many :starred_influencers, dependent: :destroy
  before_save :default_values
  validates :influencer_full_name, presence: true
  validates :influencer_instagram_username, presence: true
  validates :influencer_instagram_profile_image, presence: true
  validates :statistics_followers, presence: true
  validates :statistics_engagement, presence: true

  def default_values
    self.starred ||= false
  end
end
