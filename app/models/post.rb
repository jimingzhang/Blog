class Post < ApplicationRecord
  validates_presence_of :title, :body
  
  scope :published, -> { where(published: true) }
  scope :recent, -> { order('updated_at DESC') }
end
