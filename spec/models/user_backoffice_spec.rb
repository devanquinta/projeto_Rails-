require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe UserBackoffice, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:user_backoffice) { FactoryBot.create :user_backoffice }

    it 'é válido' do
      expect(user_backoffice).to be_valid
    end
  end
end
