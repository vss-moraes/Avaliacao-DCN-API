class Cosplay < ApplicationRecord
  has_one :inscrito, :as => :inscricao
end
