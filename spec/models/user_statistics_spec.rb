require 'rails_helper'
require 'simplecov'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe UserStatistic, type: :model do
  describe 'metodos' do
    context '#' do
      let!(:user_statistic) { FactoryBot.create :user_statistic }
      before(:each) { user_statistic.total_questions }
      it '#' do
        expect(user_statistic.total_questions).to be_truthy
      end
    end
    # context '#' do
    #   let!(:user_statistic) { FactoryBot.create :user_statistic }
    #   before(:each) { self.set_statistic( "correct", "current_user") }
    #   it '#' do
    #     expect(self.set_statistic( correct, current_user)).to be_truthy
    #   end
    # end
  end
end






