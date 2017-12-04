class Inscrito < ApplicationRecord
  has_many :notas
  has_many :notas, through: :avaliadors
end
