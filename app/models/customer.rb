class Customer < ActiveRecord::Base
  has_many :orders
  validates :nombre_customer, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :telefono, length: { is: 7 }
  validates :telefono, numericality: { only_integer: true }
  validates :cc, numericality: { only_integer: true }
  validates :nombre, :telefono, :cc, presence: true
  validates :cc, uniqueness: true
end
 
