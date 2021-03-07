class AdminController < ApplicationController
    before_action :check_if_user_is_admin

  def questions
    @questions = Question.order(updated_at: :desc)
  end

  def create
    @question = Question.create! "category"=>params[:category], "sub_category" => params[:sub_category], "body" => params[:body]
    flash[:alert] = "New Question saved!"
    redirect_to admin_questions_path
  end

  def question
    @question = Question.find params[:id]
    case params[:method]
    when "update"
      @question.update! body: params[:body], category: params[:category]
      flash[:alert] = "Question ##{@question.id} updated!"
    when "delete"
      @question.destroy!
      flash[:alert] = "Question ##{@question.id} deleted!"
    end
    redirect_to admin_questions_path
  end

  def users
    @users = User.all
  end
end
