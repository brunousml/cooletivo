require 'test_helper'

class FornecedoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fornecedores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fornecedore" do
    assert_difference('Fornecedore.count') do
      post :create, :fornecedore => { }
    end

    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should show fornecedore" do
    get :show, :id => fornecedores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fornecedores(:one).to_param
    assert_response :success
  end

  test "should update fornecedore" do
    put :update, :id => fornecedores(:one).to_param, :fornecedore => { }
    assert_redirected_to fornecedore_path(assigns(:fornecedore))
  end

  test "should destroy fornecedore" do
    assert_difference('Fornecedore.count', -1) do
      delete :destroy, :id => fornecedores(:one).to_param
    end

    assert_redirected_to fornecedores_path
  end
end
