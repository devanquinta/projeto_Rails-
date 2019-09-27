# require 'rails_helper'
# require 'simplecov'
# require_relative "../support/devise" # para o devise
# # Está no bando do admin e no model. Está ligado ao devise
# RSpec.feature 'Criando usuários', type: :feature do
#   let!(:admin) { FactoryBot.create :admin  }
#   scenario 'Criando um usuário', js: true do
#     visit '/admins_backoffice/admins/new'
#     # click_link 'button.save'
#     sleep 1
#     fill_in( "admin_email", with: admin.email)
#     sleep 1
#     fill_in("admin_password", with: '123456')
#     # sleep 1
#     # fill_in("admin_password_confirmation", with: '123456')
#     sleep 1
#     click_button "button.save"
#     expect(page).to have_content 'Usuário cadastrado com sucesso'
#   end
# end
#
# #Criar novas factorys que passam - com valores verdadeiros