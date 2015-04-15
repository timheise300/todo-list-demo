class User < ActiveRecord::Base
  has_many :tasks
  
  validates :name, presence: true, length: { maximum: 50 }
  
  validates :email, presence: true, length: { maximum: 200 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false}
  
  has_secure_password
  validates :password, length: { minimum: 6 }, allow_blank: true
end
