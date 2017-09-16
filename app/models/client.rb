class Client < ApplicationRecord
    validates :nombre, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    validates :cel, length: { is: 10 }
    validates :cel, numericality: { only_integer: true }
    validates :doc, numericality: { only_integer: true }
    validates :nombre, :cel, :doc, presence: true
    validates :doc, uniqueness: true
    has_many :books 
end
