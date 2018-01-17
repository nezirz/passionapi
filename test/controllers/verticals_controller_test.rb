require 'test_helper'

class VerticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vertical = verticals(:one)
    @vertical.instance_variable_set('@_doorkeeper_token', StubToken.new)

  end

  test "should get index" do
    get api_v2_verticals_path, as: :json
    assert_response :success
  end

  # test "should create vertical" do
  #   assert_difference('Vertical.count') do
  #     post api_v2_verticals_path, params: { vertical: { name: @vertical.name } }, as: :json
  #   end
  #
  #   assert_response 201
  # end

  test "should show vertical" do
    get api_v2_vertical_path(@vertical), as: :json
    assert_response :success
  end

  test "should update vertical" do
    patch api_v2_vertical_path(@vertical), params: { vertical: { name: @vertical.name } }, as: :json
    assert_response 200
  end

  test "should destroy vertical" do
    assert_difference('Vertical.count', -1) do
      delete api_v2_vertical_path(@vertical), as: :json
    end

    assert_response 204
  end
end
