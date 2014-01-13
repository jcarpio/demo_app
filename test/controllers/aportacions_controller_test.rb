require 'test_helper'

class AportacionsControllerTest < ActionController::TestCase
  setup do
    @aportacion = aportacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aportacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aportacion" do
    assert_difference('Aportacion.count') do
      post :create, aportacion: { cantidad: @aportacion.cantidad, certificado: @aportacion.certificado, comprobado: @aportacion.comprobado, cp: @aportacion.cp, dir1: @aportacion.dir1, dir2: @aportacion.dir2, dni_cif: @aportacion.dni_cif, email: @aportacion.email, email: @aportacion.email, en_mecenas: @aportacion.en_mecenas, localidad: @aportacion.localidad, name: @aportacion.name, provincia: @aportacion.provincia, telefono: @aportacion.telefono }
    end

    assert_redirected_to aportacion_path(assigns(:aportacion))
  end

  test "should show aportacion" do
    get :show, id: @aportacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aportacion
    assert_response :success
  end

  test "should update aportacion" do
    patch :update, id: @aportacion, aportacion: { cantidad: @aportacion.cantidad, certificado: @aportacion.certificado, comprobado: @aportacion.comprobado, cp: @aportacion.cp, dir1: @aportacion.dir1, dir2: @aportacion.dir2, dni_cif: @aportacion.dni_cif, email: @aportacion.email, email: @aportacion.email, en_mecenas: @aportacion.en_mecenas, localidad: @aportacion.localidad, name: @aportacion.name, provincia: @aportacion.provincia, telefono: @aportacion.telefono }
    assert_redirected_to aportacion_path(assigns(:aportacion))
  end

  test "should destroy aportacion" do
    assert_difference('Aportacion.count', -1) do
      delete :destroy, id: @aportacion
    end

    assert_redirected_to aportacions_path
  end
end
