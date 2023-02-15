require 'rails_helper'
RSpec.describe UsersController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a successful response for an existing user' do
      # Create a sample user
      user = FactoryBot.create(:user)

      get :show, params: { id: user.id }
      expect(response).to be_successful
    end

    it 'returns a 404 error for a non-existing user' do
      get :show, params: { id: 12_345 }
      expect(response.status).to eq(404)
    end
  end
end
