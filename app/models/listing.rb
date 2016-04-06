class Listing < ActiveRecord::Base
validates :mlscode, presence: true, length: {minimum: 4, maximum: 20}    
validates :address, presence: true, length: {minimum: 10, maximum: 70}

end
