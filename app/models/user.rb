class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :my_services

  validates :name, 
              presence: true, 
              length: { minimum: 3, maximum: 20 },
              format: { with: /\A[a-zA-Z]+\z/,
                        message: "Only letters are allowed" }
  validates :address, 
              presence: true,
                length: { minimum: 10, maximum:50 }
  
  validates :email,
              presence: true,
              format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i ,
                        message: "Email not valid" }
  validates :phone_number, 
              presence: true,
              format: { with: /^\d+$/,
                        multiline: true,
                        message: "Only Numbers are allowed in Phone"}       
end
