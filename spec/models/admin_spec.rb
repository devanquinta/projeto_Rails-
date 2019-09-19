require 'rails_helper'
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe Admin, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:admin) { FactoryBot.create :admin }
    subject { admin }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    # it { is_expected.to validate_presence_of(:reset_password_token) }
    it 'é válido' do
# expect(subject).to be_valid
      expect(admin).to be_valid
    end
  end
end
