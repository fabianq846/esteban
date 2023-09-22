class Postulacion < ApplicationRecord
  belongs_to :user
  belongs_to :oferta_laboral
end
