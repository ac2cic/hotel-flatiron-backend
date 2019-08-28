class User < ApplicationRecord
  has_secure_password 
  validates :username, uniqueness: true

  has_many :reservations
  has_many :rooms, through: :reservations


  def full_name
		[self.first_name, ' ', self.last_name].join
  end

  # Authenticate works w/o this code
  # def authenticate(plaintext_password)
  #   if BCrypt::Password.new(self.password_digest) == plaintext_password
  #     self
  #   else
  #     false
  #   end
  # end
  
end
