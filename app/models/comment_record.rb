class CommentRecord < ApplicationRecord
  validates :text, presence: true
  belongs_to :record
end
