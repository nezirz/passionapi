require 'test_helper'

class VerticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vertical = verticals(:one)
  end

  test "should get index" do
    get verticals_url, as: :json
    assert_response :success
  end

  test "should create vertical" do
    assert_difference('Vertical.count') do
      post verticals_url, params: { vertical: { name: @vertical.name } }, as: :json
    end

    assert_response 201
  end

  test "should show vertical" do
    get vertical_url(@vertical), as: :json
    assert_response :success
  end

  test "should update vertical" do
    patch vertical_url(@vertical), params: { vertical: { name: @vertical.name } }, as: :json
    assert_response 200
  end

  test "should destroy vertical" do
    assert_difference('Vertical.count', -1) do
      delete vertical_url(@vertical), as: :json
    end

    assert_response 204
  end
end
