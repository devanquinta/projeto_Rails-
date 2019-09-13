class Question < ApplicationRecord
  belongs_to :subject, counter_cache: true, inverse_of: :questions # Um assunto
  #counter_cache: true - contagem de qustoes por assunto
  # inverse_of: explica que subject verifica question

  has_many :answers # Muitas respostas
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true # Aceita atriibutos aninhados de uma resposta
  #Se respostas = branco, então rejeita
  # Obrigado a preencher o assunto
  # Callback
  after_create :set_statistic # chama a função depois de uma questão ser criada

  # Kaminari
  paginates_per 5

  ####################################################################################


  # Scopes somente usados para pesquisas / usar metodos de classes para outros
  # Boa pratica deixar parte do o comandos no model
  scope :_search_subject_, ->(page, subject_id){
    includes(:answers, :subject)
        .where(subject_id: subject_id)
        .page(page)
  }

  scope :_search_, ->(page, term){
    includes(:answers, :subject)
        .where("lower(description) LIKE ?", "%#{term.downcase}%")
        .page(page)
  }

  scope :last_questions, ->(page) {
    includes(:answers, :subject).order('created_at desc').page(page)
  }



  private

  def set_statistic
    AdminStatistic.set_event(AdminStatistic::EVENTS[:total_questions])
  end
end
