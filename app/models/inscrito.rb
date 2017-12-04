class Inscrito < ApplicationRecord
  belongs_to :inscricao, polymorphic: true
end
