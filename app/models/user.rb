class User < ApplicationRecord
  has_secure_password
  has_many :transactions, dependent: :destroy

  validates_presence_of :email
  validates_uniqueness_of :email


end
