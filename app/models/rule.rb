class Rule < ApplicationRecord

  with_options presence: true do
    validates :image
    validates :name
    validates :ashi_id
    validates :kind_id
    validates :pair_id
    validates :issue_id
    validates :indi_main
    validates :indi_sub
    validates :overview
    validates :overview_content
    validates :entry
    validates :exit
    validates :summary
  end

  with_options numericality: { other_than: 1 ,message: 'を選択してください' } do
    validates :ashi_id
    validates :pair_id
    validates :issue_id
    validates :kind_id
    validates :indi_main
    validates :indi_sub
  end

  belongs_to :user
  has_one_attached :image 
  has_many :comment_rules, dependent: :destroy
  has_many :like_rules, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ashi
  belongs_to :pair
  belongs_to :issue
  belongs_to :kind
  belongs_to :indi_main
  belongs_to :indi_sub

end
