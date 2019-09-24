require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe Devise::RegistrationsController, type: :controller do #controller do devise
  describe 'Devise/users#new' do
    let!(:user) { FactoryBot.create :user }
    context 'User 1' do
      before(:each) do
        @request.env["devise.mapping"] = Devise.mappings[:user]
        # @request.env["devise.mapping"] = Devise.mappings[:user]
        post :create, params: { email:@request.env["devise.mapping"]} #Erro - depois acertar
      end
      it { expect(response).to have_http_status(200)}# controller do devise retorna 200
    end
  end
end

