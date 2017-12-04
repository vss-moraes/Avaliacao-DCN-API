class Inscritor < ApplicationRecord
  has_one :usuario, as: :perfil
end
