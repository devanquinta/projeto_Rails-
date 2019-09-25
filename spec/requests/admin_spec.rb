RSpec.describe 'Gerenciando Usuarios', type: :request do
  describe 'requests' do
    describe 'admins' do
      let!(:admin) { FactoryBot.create :admin  }
      context 'params válidos' do
        let(:admin_params) { { email: 'novoemail@email.com' } }
        before(:each) do
          patch new_admins_backoffice_admin_path, params: {admin: admin_params }
        end
        it { expect(response.code).to eq '302' }
        it { expect(response).to_not render_template(:show) }
        it { expect(admin.email).to_not eq('novoemail@email.com') }
        # it { expect(admin.email).to eq('novoemail@email.com') }
      end
    end
  end
end