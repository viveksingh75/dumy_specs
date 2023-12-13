require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:user) { create(:user) }
 let(:post_attributes) {attributes_for(:post) }
 let(:post) { FactoryBot.create(:post) }

  describe 'GET #index' do
    it 'returns a successful response' do 
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a successful response' do
     
      get :show, params: { id: post.id }
      expect(response).to be_successful
    end
  end
  describe 'GET #new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_successful
    end
  end
  describe 'POST #create' do
    it 'creates a new post' do   
       #post_attributes = attributes_for(:post)
      post_params = { title: "dummy comment", body: 'dummy data', user_id: user.id }
      post :create, method: :post, params: { post: post_params }
      
      expect(response).to have_http_status(:created)
    end
  end
 
end


