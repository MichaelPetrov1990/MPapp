# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Questionnaire.destroy_all
Question.destroy_all

  tarun = User.create! email: "tarun@gmail.com", password: "hello123", first_name: "Tarun", last_name: "Mookhey"
  michael = User.create! email: "mpetrovcello@gmail.com", password: "hello123", first_name: "Michael", last_name: "Petrov"
  priya = User.create! email: "priya.biring@gmail.com", password: "hello123", first_name: "Priya", last_name: "Biring"

  health_question1 = Question.create!(body: "From 1 to 10, please rate your fitness", category: "health", sub_category: "fitness")
  health_question2 = Question.create!(body: "Please rate your mental health", category: "health", sub_category: "mental")
  health_question3 = Question.create!(body: "Rate your nutrition", category: "health", sub_category: "nutrition")
  health_question4 = Question.create!(body: "2nd time: From 1 to 10, please rate your fitness", category: "health", sub_category: "fitness")
  health_question5 = Question.create!(body: "2nd time: Again please rate your mental health", category: "health", sub_category: "mental")
  health_question6 = Question.create!(body: "2nd time: Rate your nutrition", category: "health", sub_category: "nutrition")
  health_question7 = Question.create!(body: "3rd time: From 1 to 10, please rate your fitness", category: "health", sub_category: "fitness")
  health_question8 = Question.create!(body: "3rd time: Again please rate your mental health", category: "health", sub_category: "mental")
  health_question9 = Question.create!(body: "3rd time: Rate your nutrition", category: "health", sub_category: "nutrition")

  wealth_question1 = Question.create!(body: "From 1 to 10, please rate your financial fitness", category: "wealth", sub_category: "financial")
  wealth_question2 = Question.create!(body: "Again please rate your financial health", category: "wealth", sub_category: "financial")
  wealth_question3 = Question.create!(body: "Rate your financial nutrition", category: "wealth", sub_category: "financial")
  wealth_question4 = Question.create!(body: "From 1 to 10, please rate your social fitness", category: "wealth", sub_category: "social")
  wealth_question5 = Question.create!(body: "Again please rate your social health", category: "wealth", sub_category: "social")
  wealth_question6 = Question.create!(body: "Rate your social nutrition", category: "wealth", sub_category: "social")
  wealth_question7 = Question.create!(body: "From 1 to 10, please rate your time fitness", category: "wealth", sub_category: "time")
  wealth_question8 = Question.create!(body: "Again please rate your time health", category: "wealth", sub_category: "time")
  wealth_question9 = Question.create!(body: "Rate your time nutrition", category: "wealth", sub_category: "time")
 
  happiness_question1 = Question.create!(body: "From 1 to 10, please rate your happy fitness", category: "happiness", sub_category: "")
  happiness_question2 = Question.create!(body: "Again please rate your happy health", category: "happiness", sub_category: "")
  happiness_question3 = Question.create!(body: "Rate your happy nutrition", category: "happiness", sub_category: "")