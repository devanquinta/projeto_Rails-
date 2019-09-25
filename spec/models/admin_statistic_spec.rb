require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe AdminStatistic, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:admin_statistic) { FactoryBot.create :admin_statistic }
    before(:each) { admin_statistic.last }
    it 'é válido' do
      expect(admin_statistic.last).to be_truthy
    end
  end
end
