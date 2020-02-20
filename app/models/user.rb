class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
	mount_uploader :avatar, AvatarUploader

  
  def username
    self.email.split('@')[0].capitalize
  end

  # def avatar
  #   self.avatar_url
  # end
end
