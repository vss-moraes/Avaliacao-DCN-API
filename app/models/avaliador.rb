class Avaliador < ApplicationRecord
  has_one :usuario, as: :perfil
end
