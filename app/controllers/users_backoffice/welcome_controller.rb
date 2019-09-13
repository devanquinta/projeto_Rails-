class UsersBackoffice::WelcomeController < UsersBackofficeController
  def index
    @user_statistic = UserStatistic.find_or_create_by(user: current_user) # passa pela quesoes certas e erradas
  end
end
