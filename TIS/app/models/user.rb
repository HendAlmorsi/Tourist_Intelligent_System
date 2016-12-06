class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum user_type: {admin: 0, company: 1, tourist: 2}

  validates :first_name, :last_name, :email, :phone_number, :user_type, presence: true

  
end
