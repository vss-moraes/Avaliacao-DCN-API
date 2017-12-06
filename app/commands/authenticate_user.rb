class AuthenticateUser
  prepend SimpleCommand

  def initialize(cpf, password)
    @cpf = cpf
    @password = password
  end

  def call
    JsonWebToken::encode(usuario_id: usuario.id) if usuario
  end

  private
    attr_accessor :cpf, :password

    def usuario
      usuario = Usuario.find_by_cpf(cpf)
      return usuario if usuario && usuario.authenticate(password)

      errors.add :user_authentication, 'invalid credentials'
      nil
    end
end
