require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::AdminsController, type: :controller do
  describe '#new' do
    let!(:admin) { FactoryBot.create :admin }
    context 'Admin 1' do
      before(:each) do
        post :create, params: { email: admin.email}
      end
      it { expect(response).to_not have_http_status(200)}# 302 é resposta ao método get
      context 'Verifica email' do
        before(:each) do
          post :create, params: { email: admin.email}
        end
        it { expect(controller.current_admin).to_not eq(admin.email) }
      end
    end
  end
end

RSpec.describe AdminsBackoffice::AdminsController, type: :controller do
  describe 'users#destroy' do
    context 'password is valid' do
      before(:each) do
        binding.pry
        delete admins_backoffice_admin_path(@admin)
      end
      it { expect(response).to render_template(:index) }
    end
  end
end