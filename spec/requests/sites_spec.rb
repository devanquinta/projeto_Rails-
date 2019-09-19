require 'rails_helper'
RSpec.describe 'Página Inicial', type: :request do
  describe 'requests' do
    describe '/site/welcome/index' do
      before(:each) { get root_path }
      it { expect(response.code).to eq '200' }
    end
  end
end