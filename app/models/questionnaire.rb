class Questionnaire < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  def lowest_score
    answers.pluck(:rating).min
  end

  def highest_score
    answers.pluck(:rating).max
  end

  def average_score
    rating_array = answers.pluck(:rating)
    rating_array.sum / rating_array.length
  end


  def completed?
    answers.count == Question.count
  end

end


  def provide_three_unanswered_questions
    # priya to complete
  end

  def completed?
    # priya to complete
  end

end

