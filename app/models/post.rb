class Post < ApplicationRecord
  has_many :sub_comments
  validates_presence_of :title
end
