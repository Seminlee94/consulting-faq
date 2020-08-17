class Question < ApplicationRecord
    has_rich_text :body
    belongs_to :company
    has_many :assignments
    has_many :consultants, through: :assignments
    has_many :question_answers
    has_many :answers, through: :question_answers
end
