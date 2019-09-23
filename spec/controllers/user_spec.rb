require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe User, type: :controller do
  describe 'userss#new' do
    let!(:user) { FactoryBot.create :user }
    context 'User 1' do
      before(:each) do
        post :create, params: { email: user.email}
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
      it { expect(controller.current_user).to eq(nil) }
    end
  end
end