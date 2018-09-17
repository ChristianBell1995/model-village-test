class ChangeEngagementToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :influencers, :statistics_engagement, :float
  end
end
