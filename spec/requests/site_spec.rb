require 'rails_helper'
RSpec.describe 'Página Inicial', type: :request do
  describe 'requests' do
    describe '#index' do
      before(:each) { get root_path }
      it { expect(response.code).to eq '200' }
    end
  end
end

# # procurar erro
# # RAILS_ENV=test rake assets:precompile
# CTRL SHIFT F