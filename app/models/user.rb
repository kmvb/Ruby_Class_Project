class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :omniauthable, :omniauth_providers => [:twitter]

 
 	validates :email, presence: true, unless: :uid


  

  has_many :workouts
  has_many :tasks, through: :workouts
  has_many :exercises, through: :tasks
  has_one :profile

  before_save :build_profile, on: :create

end
