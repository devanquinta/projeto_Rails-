require 'rails_helper'
# require_relative "../support/devise" # para o devise
RSpec.describe User, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:user) { FactoryBot.create :user }
    # let!(:user_profile) { FactoryBot.create :user_profile }
    subject { user }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    it 'é válido' do
# expect(subject).to be_valid
      expect(user).to be_valid
    end
  end
  describe 'ASSOCIATION' do
    let!(:user) { FactoryBot.create :user }
    # let!(:user_profile) { FactoryBot.create :user_profile }
    subject { user }
    it { is_expected.to have_one(:user_profile) }
    it 'ASSOCIADO' do
      expect(user).to be_valid
    end
  end
end


