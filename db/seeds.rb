# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Questionnaire.destroy_all

questionnaire1 = Questionnaire.create(category: "Health")
question1 = questionnaire1.questions.create(body: "From 1 to 10, please rate your fitness")
question2 = questionnaire1.questions.create(body: "Again please rate your physical health")
question3 = questionnaire1.questions.create(body: "Rate your nutrition")

questionnaire1 = Questionnaire.create(category: "Wealth")
question1 = questionnaire1.questions.create(body: "From 1 to 10, please rate your financial fitness")
question2 = questionnaire1.questions.create(body: "Again please rate your financial health")
question3 = questionnaire1.questions.create(body: "Rate your financial nutrition")

questionnaire1 = Questionnaire.create(category: "Happiness")
question1 = questionnaire1.questions.create(body: "From 1 to 10, please rate your happy fitness")
question2 = questionnaire1.questions.create(body: "Again please rate your happy health")
question3 = questionnaire1.questions.create(body: "Rate your happy nutrition")