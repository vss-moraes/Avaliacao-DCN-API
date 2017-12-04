require 'test_helper'

class InscritosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscrito = inscritos(:one)
  end

  test "should get index" do
    get inscritos_url, as: :json
    assert_response :success
  end

  test "should create inscrito" do
    assert_difference('Inscrito.count') do
      post inscritos_url, params: { inscrito: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show inscrito" do
    get inscrito_url(@inscrito), as: :json
    assert_response :success
  end

  test "should update inscrito" do
    patch inscrito_url(@inscrito), params: { inscrito: {  } }, as: :json
    assert_response 200
  end

  test "should destroy inscrito" do
    assert_difference('Inscrito.count', -1) do
      delete inscrito_url(@inscrito), as: :json
    end

    assert_response 204
  end
end
