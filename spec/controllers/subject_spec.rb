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
      it { expect(subject.description).to_not eq(nil) }
      it { expect(response).to redirect_to(admin_session_path) }
    end
    context 'password is valid' do
      before(:each) do
        # post :create, params: { email: admin }
        delete :destroy, params: { email: subject.description , id: subject.id }
      end
      it { expect(response.code).to eq '302' }
      it { expect(flash[:notice]).to_not eq( subject.description ) }
      end
  end
end