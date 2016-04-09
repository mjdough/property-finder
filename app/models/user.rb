class User < ActiveRecord::Base
    
  has_many :listings, dependent: :destroy
  before_save { self.email = email.downcase }
  
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: {minimum: 3, maximum: 25 }
            
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }
            
    validates :name, presence: true, length: {minimum: 3, maximum: 70} 
    validates :username, presence: true, length: {minimum: 3, maximum: 50}
    validates :email, presence: true, length: {minimum: 8, maximum: 70}
    
    has_secure_password
    
   
end
