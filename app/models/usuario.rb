class Usuario < ApplicationRecord
  attr_accessor :perfil_type, :perfil_id
  has_secure_password
  belongs_to :perfil, polymorphic: true

  validates :cpf, presence: true, uniqueness: true

  accepts_nested_attributes_for :perfil

  def build_perfil(params)
      self.perfil = perfil_type.constantize.new(params)
  end
end
