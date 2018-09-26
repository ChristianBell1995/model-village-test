require 'rails_helper'
require 'support/starred_influencers_steps.rb'

RSpec.describe "The starred_influencers index page", :type => :feature do
  include StarredInfluencersSteps

  it 'shows me the suggested influencers header' do
    visit_starred_influencer_page
    should_have_suggested_influencers_header
  end

  # context 'shows me the '
  # it 'shows me starred_influencers' do
  # end

  # it 'shows me suggested influencers' do
  # end
end
