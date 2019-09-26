require 'rails_helper'
require_relative "../support/devise" # para o devise

RSpec.describe 'Gerenciando Usuarios', type: :request do
  describe 'requests' do
    describe 'users' do
      let!(:user) { FactoryBot.create :user  }
      context 'params válidos' do
        let(:user_params) { { email: 'novoemail@email.com' } }
        before(:each) do
          patch user_registration_path, params: {user: user_params }
        end
        it { expect(response.code).to_not eq '200' }
        # it { expect(response).to render_template(new_user_session_path) }# teste de controller
        it { expect(user.email).to_not eq(user_params)}
      end
    end
  end
end