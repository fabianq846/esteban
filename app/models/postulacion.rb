# test/models/postulacion_test.rb
require 'test_helper'

class PostulacionTest < ActiveSupport::TestCase
  def setup
    @user = User.create(nombre: "Juan", email: "juan@example.com")
    @oferta = OfertaLaboral.create(titulo: "Ingeniero", descripcion: "Requiere experiencia...")
  end

  test "usuario puede postularse a oferta laboral" do
    postulacion = Postulacion.new(user: @user, oferta_laboral: @oferta)
    assert postulacion.valid?
  end
end
