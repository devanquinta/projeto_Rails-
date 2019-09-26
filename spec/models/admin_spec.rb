require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe Admin, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:admin) { FactoryBot.create :admin  }
    subject { admin }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:encrypted_password) }
    # it { is_expected.to validate_presence_of(:reset_password_token) }
    it 'é válido' do
# expect(subject).to be_valid
      expect(admin).to be_valid
    end
    describe 'metodos' do
      context '#usuario_ativo' do
        let!(:admin) { FactoryBot.create :admin }
        before(:each) { admin.last }
        it 'ativa o usuario' do
          expect(admin.last).to be_truthy
        end
      end
    end
  end
end




