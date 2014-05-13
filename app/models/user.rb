class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]

 
 	validates :email, presence: true


  

  has_many :workouts
  has_many :tasks, through: :workouts
  has_many :exercises, through: :tasks


end
