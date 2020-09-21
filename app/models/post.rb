class Post < ApplicationRecord
	mount_uploader :audio, AudioUploader
	validates :audio, presence: true
	validates :title, presence: true, length: {maximum: 50}
	
	belongs_to :user, optional: true
end
