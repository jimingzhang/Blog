class Post < ApplicationRecord
  scope :published, -> { where(published: true) }
  scope :recent, -> { order('updated_at DESC') }
end
