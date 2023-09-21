class OfertaLaboral < ApplicationRecord
    has_many :postulaciones
has_many :users, through: :postulaciones

end
