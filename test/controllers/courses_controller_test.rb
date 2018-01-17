require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
    @course.instance_variable_set('@_doorkeeper_token', StubToken.new)
  end

  test "should get index" do
    get api_v2_courses_path, as: :json
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post api_v2_courses_path, params: { course: { author: @course.author, category_id: @course.category_id, name: @course.name, state: @course.state } }, as: :json
    end

    assert_response 201
  end

  test "should show course" do
    get api_v2_course_path(@course), as: :json
    assert_response :success
  end

  test "should update course" do
    patch api_v2_course_path(@course), params: { course: { author: @course.author, category_id: @course.category_id, name: @course.name, state: @course.state } }, as: :json
    assert_response 200
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete api_v2_course_path(@course), as: :json
    end

    assert_response 204
  end
end
