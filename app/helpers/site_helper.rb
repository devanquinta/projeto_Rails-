module SiteHelper
  def msg_container
    case params[:action]
    when 'index'
      "Últimas perguntas cadastradas..."
    when 'questions'
      "Resultados para o termo \"#{sanitize params[:term]}\"..."
      # sanitize esconde textos html
    when 'subject'
      "Mostrando questões para o assunto \"#{sanitize params[:subject]}\"..."
    end
  end
end
