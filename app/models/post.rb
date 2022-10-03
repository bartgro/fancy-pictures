class Post < ApplicationRecord
  has_one_attached :picture

  def count_likes
    rand(1...1_000_000)
  end
end
