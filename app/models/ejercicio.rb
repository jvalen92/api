class Ejercicio < ApplicationRecord


  # model association
  has_many :usuarios, dependent: :destroy

  # validations
  validates_presence_of :nombre, :musculo
end
