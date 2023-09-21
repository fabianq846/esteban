require "test_helper"

class OfertaLaboralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta_laboral = oferta_laborals(:one)
  end

  test "should get index" do
    get oferta_laborals_url
    assert_response :success
  end

  test "should get new" do
    get new_oferta_laboral_url
    assert_response :success
  end

  test "should create oferta_laboral" do
    assert_difference("OfertaLaboral.count") do
      post oferta_laborals_url, params: { oferta_laboral: { descripcion: @oferta_laboral.descripcion, titulo: @oferta_laboral.titulo } }
    end

    assert_redirected_to oferta_laboral_url(OfertaLaboral.last)
  end

  test "should show oferta_laboral" do
    get oferta_laboral_url(@oferta_laboral)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferta_laboral_url(@oferta_laboral)
    assert_response :success
  end

  test "should update oferta_laboral" do
    patch oferta_laboral_url(@oferta_laboral), params: { oferta_laboral: { descripcion: @oferta_laboral.descripcion, titulo: @oferta_laboral.titulo } }
    assert_redirected_to oferta_laboral_url(@oferta_laboral)
  end

  test "should destroy oferta_laboral" do
    assert_difference("OfertaLaboral.count", -1) do
      delete oferta_laboral_url(@oferta_laboral)
    end

    assert_redirected_to oferta_laborals_url
  end
end
