class Site::AnswerController < SiteController
  def question # question é uma view - lembrar
    @answer = Answer.find(params[:answer_id])
  end
end
