require 'rails_helper'

describe WelcomeController, type: :controller do

  describe "GET /" do
    context 'when user is not signed in' do
      let(:response) { get :index }
      let(:app_title) { 'Activity app' }

      it "returns http success" do
        expect(response).to have_http_status(:success)
      end

      it "has correct title" do

      end
    end
  end

end
