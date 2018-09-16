class StarredInfluencersController < ApplicationController
  before_action :find_influencer, only: [:new, :create]

  def index
    @influencers = Influencer.all
    @starred_influencers = StarredInfluencer.all
  end

  def new
    @starred_influencer = StarredInfluencer.new
  end

  def create
    @starred_influencer = StarredInfluencer.new
    # Not sure if i need strong params here as no data being passed
    @starred_influencer.influencer = @influencer
    @starred_influencer.save
    redirect_to starred_influencers_path
  end

  def destroy
    @starred_influencer = StarredInfluencer.find(params[:id])
    @starred_influencer.destroy
    redirect_to starred_influencers_path
  end

  private

  def find_influencer
    @influencer = Influencer.find(params[:influencer_id])
  end
end
