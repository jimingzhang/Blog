class Post < ApplicationRecord
  validates_presence_of :title, :body
  belongs_to :author

  scope :published, -> { where(published: true) }
  scope :recent, -> { order('updated_at DESC') }
end
