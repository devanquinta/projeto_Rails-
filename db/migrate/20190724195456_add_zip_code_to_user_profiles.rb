class AddZipCodeToUserProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :user_profiles, :zip_code, :string # nova migração que adiciona o campo zip_cod na tabela user_profiles
  end
end
