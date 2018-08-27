require 'rails_helper'

describe WelcomeController, type: :controller do
  context 'GET :index' do
    before { get :index }

    it 'response with success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index view' do
      expect(response).to render_template :index
    end
  end
end 
