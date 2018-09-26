class InfluencersController < ApplicationController
  def index
    @influencers = Influencer.all
  end

  def show
    @influencer = Influencer.find(params[:id])
  end

  def new
    @influencer = Influencer.new
  end

  def create
    @influencer = Influencer.new(influencer_params)
    @influencer.save
    redirect_to influencers_path
  end

  private

  def influencer_params
    params.require(:influencer).permit(:influencer_full_name, :influencer_instagram_username)
  end
end
