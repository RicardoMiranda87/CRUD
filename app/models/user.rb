class User < ApplicationRecord
  belongs_to :genero
  validates :name, :age, :cpf, :genero, presence:true
  validates_length_of :cpf, is: 14
  validates :cpf, uniqueness: true
  validates_numericality_of :age, minimum: 1, maximum: 150
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "need to be letter " }
  
end
