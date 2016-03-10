class Comment < ActiveRecord::Base
  has_many   :commentings
  belongs_to :topic#, through: :commentings, source: :commentings, source_type: :Topic
  belongs_to :post#, through: :commentings, source: :commentings, source_type: :Post
  belongs_to :user

  validates :body, length: { minimum: 5 }, presence: true
  validates :user, presence: true
end
