class Influencer < ApplicationRecord
  has_many :starred_influencers, dependent: :destroy
  before_save :default_values

  def default_values
    self.starred ||= false
  end
end
