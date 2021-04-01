class Questionnaire < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  after_touch :mark_as_completed

  def self.generate(user)
    find_or_create_by(user: user, completed: false)
    # where(user: user, completed: false).any? ? Questionnaire.find_by(user: user, completed: false) : Questionnaire.create!(user: user)
  end

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


  def lowest_ranking_answers(amount_integer)
    answers.pluck(:rating).sort.first(amount_integer)
  end


  def mark_as_completed
    update!(completed: true) if total_answers_provided?
  end

  def total_answers_provided?
    answers.count >= Question.count
  end

  def provide_unanswered_questions(amount_integer)
    answered = self.answers.pluck(:question_id)
    list = Question.pluck(:id)
    remaining = list + answered - (list & answered)
    Question.find(remaining.sample(amount_integer))
  end

  def count_questions_remaining
    Question.count - answers.count
  end

  def sample_answers(amount_integer)
    count = Question.count
   raise ArgumentError, "Maximum answers is #{count}!" if amount_integer > count
    questionnaire = self
    questionnaire.answers.destroy_all
    Question.first(amount_integer).shuffle.each { |q| answers = []; answers << Answer.new(question_id: q.id, rating: rand(10), user_id: questionnaire.user_id); questionnaire.answers << answers }
  end

end
