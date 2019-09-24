require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::QuestionsController, type: :controller do
  describe 'question#new' do
    let!(:question) { FactoryBot.create :question }
    context 'Question rspec_controller' do
      before(:each) do
        post :create, params: { description: question.description}# criar factory question
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
      it { expect(controller.current_admin).to eq(nil) }
    end
  end
end