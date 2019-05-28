class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tracks
  has_many :user_instruments
  has_many :instruments, through: :user_instruments
  has_many :requests, through: :tracks
end

