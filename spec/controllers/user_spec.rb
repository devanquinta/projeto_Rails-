require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::AdminsController, type: :controller do
  describe 'admins#new' do
    let!(:admin) { FactoryBot.create :admin }
    context 'Admin 1' do
      before(:each) do
        post :create, params: { email: admin.email}
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
      it { expect(controller.current_admin).to eq(nil) }
    end
  end
end