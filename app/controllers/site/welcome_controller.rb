class Site::WelcomeController < SiteController
  def index
    ###################################################
    @questions = Question.last_questions(params[:page])
    # #######################################################
    # @questions = Question.includes(:answers).page(params[:page])

  end
end
