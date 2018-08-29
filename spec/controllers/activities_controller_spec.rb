require 'rails_helper'

RSpec.describe ActivitiesController do
  let!(:user) { create(:user) }

  describe 'GET #index' do
    subject { response }

    before do
      sign_in user
      get :index
    end

    it { is_expected.to have_http_status(:success) }
  end

  describe 'GET #edit' do
    let!(:activity) { create(:activity) }
    subject { response }

    before do
      sign_in user
      get :edit, params: { id: activity.id }
    end

    it { is_expected.to have_http_status(:success) }
  end

  describe 'GET #new' do
    subject { response }

    before do
      sign_in user
      get :new
    end

    it { is_expected.to have_http_status(:success) }
  end

  describe 'POST #create' do
    subject { response }

    before do
      sign_in user
      post :create, params: { activity: { name: 'name' }}
    end

    it { is_expected.to have_http_status(302) }
  end

  describe 'PUT #update' do
    let!(:activity) { create(:activity, user: user.id) }
    subject { response }

    before do
      sign_in user
      post :update, params: { id: activity.id, activity: { name: 'name' }}
    end

    it { is_expected.to have_http_status(302) }
  end

  describe 'DELETE #destroy' do
    let!(:activity) { create(:activity, user_id: user.id) }
    subject { response }

    before do
      sign_in user
      delete :destroy, params: { id: activity.id }
    end

    it { is_expected.to have_http_status(302) }
  end
end
