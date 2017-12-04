class Avaliador < ApplicationRecord
  has_one :usuario, as: :perfil
  has_many :notas
  has_many :inscritos, through: :notas
end
