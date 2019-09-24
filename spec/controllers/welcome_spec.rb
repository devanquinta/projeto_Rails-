require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::WelcomeController, type: :controller do
  describe 'welcome#index' do
    let!(:admin_statistic) { FactoryBot.create :admin_statistic }
    context 'Welcome rspec_controller' do
      before(:each) do
        post :index, params: { 	event:@total_users, value:@total_questions }# criar factory question
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
    end
  end
end

