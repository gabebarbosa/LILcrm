require 'test_helper'

class TipoatendimentosControllerTest < ActionController::TestCase
  setup do
    @tipoatendimento = tipoatendimentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipoatendimentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipoatendimento" do
    assert_difference('Tipoatendimento.count') do
      post :create, tipoatendimento: { descricao: @tipoatendimento.descricao }
    end

    assert_redirected_to tipoatendimento_path(assigns(:tipoatendimento))
  end

  test "should show tipoatendimento" do
    get :show, id: @tipoatendimento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipoatendimento
    assert_response :success
  end

  test "should update tipoatendimento" do
    patch :update, id: @tipoatendimento, tipoatendimento: { descricao: @tipoatendimento.descricao }
    assert_redirected_to tipoatendimento_path(assigns(:tipoatendimento))
  end

  test "should destroy tipoatendimento" do
    assert_difference('Tipoatendimento.count', -1) do
      delete :destroy, id: @tipoatendimento
    end

    assert_redirected_to tipoatendimentos_path
  end
end
