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
    answers.count == 27
  end

  def self.completed_all
    # questionnaires with 3 answers completed
    self.where(:answers == 3).count #count method needs to work correctly
  end

end

