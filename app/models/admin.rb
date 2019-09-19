class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Está no banco do admin devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Kaminari
   paginates_per 5
  # paginação a 5 elementos
  validates_presence_of :email # Obrigatorio
  validates_presence_of :encrypted_password # Obrigatorio
end
