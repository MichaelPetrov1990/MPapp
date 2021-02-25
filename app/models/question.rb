class Question < ApplicationRecord
  belongs_to :questionnaire, optional: true
  has_one :answer

  def self.generate_three_questions(category_string)
    return false unless category_string.class == String
    where(category: category_string).sample(3)
  end

end