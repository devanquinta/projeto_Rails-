require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::AdminsController, type: :controller do
  describe '#new' do
    render_views
    let!(:admin) { FactoryBot.create :admin }
    context 'Admin 1' do
      before(:each) do
        post :create, params: { email: admin.email, password: admin.password, reset_password_token: admin.reset_password_token}
      end
      it { expect(response).to_not have_http_status(200)}# 302 é resposta ao método get
      context 'Verifica email' do
        before(:each) do
          post :create, params: { email: admin.email}
        end
        it { expect(controller.current_admin).to_not eq(admin.email) }
        it { expect(response.code).to eq '302' }
        it { expect(response).to redirect_to(admin_session_path) }
      end
    end
  end
  describe 'users#destroy' do
    # render_views
    let!(:admin) { FactoryBot.create :admin }
    context 'password is valid' do
      before(:each) do
        delete :destroy, params: { email: admin.email , id: admin.id }
        get :index, params: { email: admin.email , id: admin.id }

      end
      it { expect(response.code).to eq '302' }
      it { expect(flash[:notice]).to_not eq( admin.email) }# È diferente dos parametros que vem da factory - nil
    end
  end
end


