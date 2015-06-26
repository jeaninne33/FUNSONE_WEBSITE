require 'test_helper'

class CoordinadorsControllerTest < ActionController::TestCase
  setup do
    @coordinador = coordinadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordinadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordinador" do
    assert_difference('Coordinador.count') do
      post :create, coordinador: { apellido: @coordinador.apellido, correo: @coordinador.correo, facebook: @coordinador.facebook, foto: @coordinador.foto, linkd: @coordinador.linkd, nombre: @coordinador.nombre, twitter: @coordinador.twitter }
    end

    assert_redirected_to coordinador_path(assigns(:coordinador))
  end

  test "should show coordinador" do
    get :show, id: @coordinador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coordinador
    assert_response :success
  end

  test "should update coordinador" do
    patch :update, id: @coordinador, coordinador: { apellido: @coordinador.apellido, correo: @coordinador.correo, facebook: @coordinador.facebook, foto: @coordinador.foto, linkd: @coordinador.linkd, nombre: @coordinador.nombre, twitter: @coordinador.twitter }
    assert_redirected_to coordinador_path(assigns(:coordinador))
  end

  test "should destroy coordinador" do
    assert_difference('Coordinador.count', -1) do
      delete :destroy, id: @coordinador
    end

    assert_redirected_to coordinadors_path
  end
end
