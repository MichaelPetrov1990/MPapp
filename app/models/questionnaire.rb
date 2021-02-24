class Questionnaire < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  def lowest_score
    self.answers.pluck(:rating).min
  end

  def highest_score
    self.answers.pluck(:rating).max
  end

  def average_score
    rating_array = self.answers.pluck(:rating)
    rating_array.sum / rating_array.length
  end
end
