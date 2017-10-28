class Usuario < ApplicationRecord
  belongs_to :ejercicio

    # validation
  validates_presence_of :nombre
end
