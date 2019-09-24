require 'rails_helper'
require_relative "../support/devise" # para o devise
# Está no bando do admin e no model. Está ligado ao devise
RSpec.describe Devise::Test::ControllerHelpers, type: :controller do
  describe 'Devise/users#new' do
    context 'User 1' do
      it { expect(response).to have_http_status(200)}# controller do devise retorna 200
    end
  end
end

