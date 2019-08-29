class AdminsBackofficeController < ApplicationController
  before_action :authenticate_admin! #autentifica admim
  layout 'admins_backoffice'
end
