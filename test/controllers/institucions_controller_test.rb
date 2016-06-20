require 'test_helper'

class InstitucionsControllerTest < ActionController::TestCase
  setup do
    @institucion = institucions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institucions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institucion" do
    assert_difference('Institucion.count') do
      post :create, institucion: { descripcion: @institucion.descripcion, foto1: @institucion.foto1, foto2: @institucion.foto2, foto3: @institucion.foto3, foto4: @institucion.foto4, foto5: @institucion.foto5, logo: @institucion.logo, mision: @institucion.mision, nombre: @institucion.nombre, objetivos: @institucion.objetivos, organigrama: @institucion.organigrama, tipo: @institucion.tipo, vision: @institucion.vision }
    end

    assert_redirected_to institucion_path(assigns(:institucion))
  end

  test "should show institucion" do
    get :show, id: @institucion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institucion
    assert_response :success
  end

  test "should update institucion" do
    patch :update, id: @institucion, institucion: { descripcion: @institucion.descripcion, foto1: @institucion.foto1, foto2: @institucion.foto2, foto3: @institucion.foto3, foto4: @institucion.foto4, foto5: @institucion.foto5, logo: @institucion.logo, mision: @institucion.mision, nombre: @institucion.nombre, objetivos: @institucion.objetivos, organigrama: @institucion.organigrama, tipo: @institucion.tipo, vision: @institucion.vision }
    assert_redirected_to institucion_path(assigns(:institucion))
  end

  test "should destroy institucion" do
    assert_difference('Institucion.count', -1) do
      delete :destroy, id: @institucion
    end

    assert_redirected_to institucions_path
  end
end
