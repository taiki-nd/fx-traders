class CommentRule < ApplicationRecord
  validates :text
  belongs_to :rule
end
