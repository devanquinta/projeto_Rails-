require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe UsersBackoffice::ProfileController, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:user_profile) { FactoryBot.create :user_profile }
    subject { user_profile }
    it { is_expected.to validate_presence_of(:address) }

    it 'é válido' do
# expect(subject).to be_valid
      expect(user_profile).to be_valid
    end
  end
end
