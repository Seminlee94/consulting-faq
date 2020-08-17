class Answer < ApplicationRecord
    has_rich_text :body 
    belongs_to :consultant 
    has_many :question_answers
    has_many :questions, through: :question_answers
end
