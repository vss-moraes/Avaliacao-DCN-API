class Usuario < ApplicationRecord
  has_secure_password
  belongs_to :perfil, polymorphic: true

  validates :cpf, presence: true, uniqueness: true
end
