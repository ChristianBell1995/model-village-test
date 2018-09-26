require 'rails_helper'

RSpec.describe InfluencersController, type: :controller do
  context 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to be_successful
      # response refers to the http response - so here to be successful means it
      # is recieving a 200
    end
  end

  # context 'GET #show' do
  #   it 'returns a success response' do
  #     get :show
  #     expect(response).to be_successful
  #   end
  # end
end
