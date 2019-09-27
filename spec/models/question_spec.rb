require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe Question, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:question) { FactoryBot.create :question  }
    subject { question }
    it { should accept_nested_attributes_for(:answers)}
    it { should validate_numericality_of(:subject_id).only_integer}
    it 'é válido' do
# expect(subject).to be_valid
      expect(question).to be_valid
    end
  end
  describe 'metodos' do
    context '#usuario_ativo' do
      let!(:question) { FactoryBot.create :question }
      before(:each) { question.questoes}
      it 'ativa o usuario' do
        expect(question.questoes).to be_truthy
      end
    end
  end
end

