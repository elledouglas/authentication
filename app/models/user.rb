class User < ApplicationRecord
  has_secure_password

#Add uniqueness validation 
  validation :email, presence :true

end
