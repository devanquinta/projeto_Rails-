class Site::WelcomeController < SiteController
  def index
    ###################################################
    @questions = Question.last_questions(params[:page]) # ordenação inversa das questões
    # #######################################################
    # @questions = Question.includes(:answers).page(params[:page])
  end
end
