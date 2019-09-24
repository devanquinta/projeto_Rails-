require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminsBackoffice::SubjectsController , type: :controller do
  describe 'subject#new' do
    let!(:subject) { FactoryBot.create :subject }
    context 'Subject rspec_controller' do
      before(:each) do
        post :create, params: { description: subject.description}# criar factory question
      end
      it { expect(response).to have_http_status(302)}# 302 é resposta ao método get
    end
  end
end