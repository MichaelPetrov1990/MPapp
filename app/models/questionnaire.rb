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

  def provide_three_unanswered_questions
    answered = self.answers
    list = Question.all
    remaining = list - answered
    remaining.sample(3)
  end

end

