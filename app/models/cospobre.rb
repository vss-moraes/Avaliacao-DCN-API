class Cospobre < ApplicationRecord
  has_one :inscrito, :as => :inscricao
end
