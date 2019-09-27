RSpec.describe Answer, type: :model do
  describe 'associations' do
    let(:answer) { create :answer }
    # subject { user }
    it { is_expected.to belong_to(:question) }
  end
end