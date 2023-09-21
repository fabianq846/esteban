class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :foto

  has_many :postulaciones
  has_many :ofertas_laborales, through: :postulaciones
  


end
