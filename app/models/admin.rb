class Admin < ApplicationRecord
  has_one :usuario, as: :perfil
end
