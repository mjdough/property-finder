class User < ActiveRecord::Base
    has_many :listings, dependent: :destroy
    
    validates :name, presence: true, length: {minimum: 3, maximum: 50} 
    validates :username, presence: true, length: {minimum: 3, maximum: 50}
    validates :email, presence: true, length: {minimum: 8, maximum: 70}
end
