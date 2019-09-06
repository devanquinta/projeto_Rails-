class Site::SearchController < SiteController
  # herda do seu namespace
  # def questions
    # @questions = Question.search(params[:page], params[:term])
    # # metodo search esta no model - metodo de pesquisa
  # end
    def questions # pesquisa na view questions
      @questions = Question._search_(params[:page], params[:term]) # Vai para um escopo - no model
    end
    def subject # pesquisa na view subject
      @questions = Question._search_subject_(params[:page],# Vai para um escopo - no model
                                             params[:subject_id])
    end
  end

