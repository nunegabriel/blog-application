require 'rails_helper'
RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a successful response' do
      # Assume we have a post with ID 1 in the database
      get :show, params: { id: 1 }
      expect(response).to be_successful
    end
  end
end
