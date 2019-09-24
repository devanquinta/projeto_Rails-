require 'rails_helper'
require_relative "../support/devise" # para o devise
RSpec.describe UsersBackoffice::ProfileController, type: :controller do
  # binding.pry
  describe 'user_profile#create' do
    # let!(:user) { FactoryBot.create :user }
    let!(:user_profile) { FactoryBot.create :user_profile }
    context 'User_profile 1' do
      before(:each) do
        post :create, params: { address: user_profile.address }
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
    end
  end
end

######################################ERRRRROOOO#################