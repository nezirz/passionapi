require 'test_helper'

class VerticalTest < ActiveSupport::TestCase
  # test 'should not save Vertical without name' do
  #   vertical = Vertical.new
  #   assert_not vertical.save
  # end
  #
  test 'unauthorized' do
    it "should return unauthorized" do
      get :index
      assert_response :unauthorized
    end
  end

  test 'authorized' do
    let(:user) { users(:one) }
    let(:token) { Minitest::Mock.new }
    setup do
      token.expect(:acceptable?, true, [Doorkeeper::OAuth::Scopes])
    end

    it "should return success" do
      @controller.stub :doorkeeper_token, token do
        get :index
        assert_response :success
      end
    end
  end
end
