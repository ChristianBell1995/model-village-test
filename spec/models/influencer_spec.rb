require 'rails_helper'

RSpec.describe Influencer, type: :model do
  context 'validation tests' do
    it 'should be valid with all the valid attributes' do
      influencer = Influencer.new(
        influencer_full_name: 'Anna Griffin',
        influencer_instagram_username: 'anna_griffin_123',
        influencer_instagram_profile_image: 'https://randomuser.me/api/portraits/women/6.jpg',
        statistics_followers: 21231,
        statistics_engagement: 6.84
      )
      expect(influencer).to be_valid
    end
    it 'should have an influencer_full_name' do
      influencer = Influencer.new(
        influencer_instagram_username: 'anna_griffin_123',
        influencer_instagram_profile_image: 'https://randomuser.me/api/portraits/women/6.jpg',
        statistics_followers: 21231,
        statistics_engagement: 6.84
      )
      expect(influencer).to_not be_valid
    end
    it 'should have an influencer_instagram_username' do
      influencer = Influencer.new(
        influencer_full_name: 'Anna Griffin',
        influencer_instagram_profile_image: 'https://randomuser.me/api/portraits/women/6.jpg',
        statistics_followers: 21231,
        statistics_engagement: 6.84
      )
      expect(influencer).to_not be_valid
    end
    it 'should have an influencer_instagram_profile_image' do
      influencer = Influencer.new(
        influencer_full_name: 'Anna Griffin',
        influencer_instagram_username: 'anna_griffin_123',
        statistics_followers: 21231,
        statistics_engagement: 6.84
      )
      expect(influencer).to_not be_valid
    end
    it 'should have statistics_followers' do
      influencer = Influencer.new(
        influencer_full_name: 'Anna Griffin',
        influencer_instagram_username: 'anna_griffin_123',
        influencer_instagram_profile_image: 'https://randomuser.me/api/portraits/women/6.jpg',
        statistics_engagement: 6.84
      )
      expect(influencer).to_not be_valid
    end
    it 'should have statistics_engagement' do
      influencer = Influencer.new(
        influencer_full_name: 'Anna Griffin',
        influencer_instagram_username: 'anna_griffin_123',
        influencer_instagram_profile_image: 'https://randomuser.me/api/portraits/women/6.jpg',
        statistics_followers: 21231,
      )
      expect(influencer).to_not be_valid
    end
  end
  # context 'scope tests' do
  # end
end
