class Site::SearchController < SiteController
  # herda do seu namespace
  def questions
    # @questions = Question.all
    @questions = Question.includes(:answers).page(params[:page])
  end
end
