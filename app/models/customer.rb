class Customer < ApplicationRecord
<<<<<<< HEAD
  validates :name, :telephone, :email, presence: true
  validates :name, length: {minimum:4}
  validates :telephone, length: {minimum:13}
  validates :email, length: {minimum:10}, uniqueness: true
=======
  validates :name, :phone_number, :email, presence: true
>>>>>>> 3e5e798d36af851dcf90272cddbc589ba31f9b28
end
