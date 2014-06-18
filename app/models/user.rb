class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Add following when you want to allow registration:
  # :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
end
