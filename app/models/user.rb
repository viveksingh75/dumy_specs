class User < ApplicationRecord
   
    has_many :users
    has_secure_password
    # attr_accessor :password, :password_confirmation

    # before_save :encrypt_password
  
    # validates_confirmation_of :password
  
    # def encrypt_password
    #   self.password_digest = BCrypt::Password.create(password)
    # end
    
end
