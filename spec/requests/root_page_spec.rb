require 'rails_helper'

describe 'Root page:' do
  let(:response) { get root_path }

  it 'should have logout button' do
    expect(response).to has_selector?('a', text: 'Log in')
  end
end
