class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  def index
    @total_users = AdminStatistic.total_users
    @total_questions = AdminStatistic.total_questions
    # @total_users = AdminStatistic.find_or_create_by(AdminStatistic.set_event(AdminStatistic::EVENTS[:total_users]))
    # @total_questions = AdminStatistic.find_or_create_by(AdminStatistic.set_event(AdminStatistic::EVENTS[:total_questions]))
  end
end
