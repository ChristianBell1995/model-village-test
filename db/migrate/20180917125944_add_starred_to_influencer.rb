class AddStarredToInfluencer < ActiveRecord::Migration[5.2]
  def change
    add_column :influencers, :starred, :boolean
  end
end
