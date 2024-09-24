class Image < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  validates :file_path, presence: true
end
