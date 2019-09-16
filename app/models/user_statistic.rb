class UserStatistic < ApplicationRecord
  belongs_to :user

  # atributo virtual

  def total_questions
    self.right_questions + self.wrong_questions
  end

  def self.set_statistic( correct, current_user)
    if !!current_user # !! tranforma em valoor booleano
      user_statistic = UserStatistic.find_or_create_by(user: current_user)# current_user não fica disponivel no model - passado por parametro
      correct ? user_statistic.right_questions += 1 :
          user_statistic.wrong_questions += 1
      user_statistic.save
    end
  end
end
