class Rule < ApplicationRecord

  with_options presence: true do
    validates :image
    validates :name
    validates :ashi_id
    validates :pair_id
    validates :issue_id
    validates :overview
    validates :overview_content
    validates :entry
    validates :exit
    validates :summary
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :ashi_id
    validates :pair_id
    validates :issue_id
  end

  belongs_to :user
  has_one_attached :image 
  has_many :comment_rules, dependent: :destroy
  has_many :like_rules, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ashi
  belongs_to :pair
  belongs_to :issue

end
