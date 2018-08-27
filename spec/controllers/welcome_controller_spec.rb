require 'rails_helper'

describe WelcomeController, type: :controller do

  describe "GET /" do
    context 'when user is not signed in' do
      let(:response) { get :index }
      let(:app_title) { 'Activity app' }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end
    end

    context 'when user is signed in' do
      it 'has link to' do
        sign_in create(:user, name: 'John Doe')
        visit root_path
        expect(page).to include('John Doe')
      end
    end
  end

end
