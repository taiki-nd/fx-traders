class CommentRule < ApplicationRecord
  validates :text, presence: true
  belongs_to :rule
end
