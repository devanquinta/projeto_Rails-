RSpec.describe Site::AnswerController, type: :model do
  describe 'VALIDAÇÃO' do
    let!(:answer) { FactoryBot.create :answer }
    before(:each) { answer.question }
    it 'é válido' do
      expect(answer.question).to be_truthy
      expect(answer.attributes).to include("correct" => true, "description" => "Descrição1", "id" => 1, "question_id" => 1)
    end
  end
end
