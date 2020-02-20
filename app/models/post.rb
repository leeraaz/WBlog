class Post < ApplicationRecord
	has_many :comments
	validates :title, presence: true,
						length: {minimum: 5}
	mount_uploader :picture, PictureUploader

	belongs_to :user
end
