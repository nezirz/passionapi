require 'test_helper'


class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)


  end

  test "should get index" do
    @category.instance_variable_set('@_doorkeeper_token', StubToken.new)
    get api_v2_categories_path, as: :json
    assert_response :success
  end
  #
  # test "should create category" do
  #   assert_difference('Category.count') do
  #   post api_v2_categories_path, params: { category: { name: @category.name, state: @category.state, vertical_id: @category.vertical_id } }, as: :json
  #   end
  #
  #   assert_response 201
  # end

  test "should show category" do
    get api_v2_category_path(@category), as: :json
    assert_response :success
  end

  test "should update category" do
    sign_in users(:one)
    patch api_v2_category_path(@category), params: { category: { name: @category.name, state: @category.state, vertical_id: @category.vertical_id } }, as: :json
    assert_response 200
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete  api_v2_category_path(@category), as: :json
    end

    assert_response 204
  end
end
