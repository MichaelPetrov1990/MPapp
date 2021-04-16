class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  belongs_to :questionnaire
  has_one :importance

  after_save :touch_questionnaire

  def touch_questionnaire
    questionnaire.touch
  end

  def sub_category
    question.sub_category
  end
  # validates :score, inclusion: { in: 1..5 }
end