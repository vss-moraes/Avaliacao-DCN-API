class Inscrito < ApplicationRecord
  has_many :notas
  has_many :avaliadors, through: :notas
end
