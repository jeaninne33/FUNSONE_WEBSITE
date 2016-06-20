require 'test_helper'

class NoticiaControllerTest < ActionController::TestCase
  setup do
    @noticium = noticia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noticia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noticium" do
    assert_difference('Noticium.count') do
      post :create, noticium: { categoria: @noticium.categoria, foto: @noticium.foto, mensaje: @noticium.mensaje, titulo: @noticium.titulo }
    end

    assert_redirected_to noticium_path(assigns(:noticium))
  end

  test "should show noticium" do
    get :show, id: @noticium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @noticium
    assert_response :success
  end

  test "should update noticium" do
    patch :update, id: @noticium, noticium: { categoria: @noticium.categoria, foto: @noticium.foto, mensaje: @noticium.mensaje, titulo: @noticium.titulo }
    assert_redirected_to noticium_path(assigns(:noticium))
  end

  test "should destroy noticium" do
    assert_difference('Noticium.count', -1) do
      delete :destroy, id: @noticium
    end

    assert_redirected_to noticia_path
  end
end
