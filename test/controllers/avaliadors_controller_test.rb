require 'test_helper'

class AvaliadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @avaliador = avaliadors(:one)
  end

  test "should get index" do
    get avaliadors_url, as: :json
    assert_response :success
  end

  test "should create avaliador" do
    assert_difference('Avaliador.count') do
      post avaliadors_url, params: { avaliador: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show avaliador" do
    get avaliador_url(@avaliador), as: :json
    assert_response :success
  end

  test "should update avaliador" do
    patch avaliador_url(@avaliador), params: { avaliador: {  } }, as: :json
    assert_response 200
  end

  test "should destroy avaliador" do
    assert_difference('Avaliador.count', -1) do
      delete avaliador_url(@avaliador), as: :json
    end

    assert_response 204
  end
end
