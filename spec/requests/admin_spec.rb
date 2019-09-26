RSpec.describe 'Gerenciando Usuarios', type: :request do
  describe 'requests' do
    describe 'admins' do
      let!(:admin) { FactoryBot.create :admin  }
      context 'params válidos' do
        let(:admin_params) { { email: 'novoemail@email.com' } }
        before(:each) do
          patch new_admins_backoffice_admin_path, params: {admin: admin_params }
        end
        it { expect(response.code).to_not eq '200' }
        # it { expect(response).to render_template(:show) } # teste de controller
        it { expect(admin.email).to_not eq(admin_params) }
      end
    end
  end
end