class AdminsBackoffice::AdminsController < AdminsBackofficeController
  # herda de AdminsBackofficeController layout
  before_action :set_admin, only: [:edit, :update]
  before_action :verify_password, only: [:update]

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def edit
  end

  def update
    if @admin.update(params_admin)
      redirect_to admins_backoffice_admins_path, notice: "Administrador atualizado com sucesso!"
    else
      render :edit
    end
  end
   # privados - usados pelos metodos acima
  private

  def params_admin
    params.require(:admin).permit(:email, :password, :password_confirmation)
  end

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def verify_password
    if params[:admin][:password].blank? &&
        params[:admin][:password_confirmation].blank?
      params[:admin].extract!(:password, :password_confirmation)
    end
  end
end