require "test_helper"

class AndersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ander = anders(:one)
  end

  test "should get index" do
    get anders_url
    assert_response :success
  end

  test "should get new" do
    get new_ander_url
    assert_response :success
  end

  test "should create ander" do
    assert_difference("Ander.count") do
      post anders_url, params: { ander: { andr_id: @ander.andr_id, comment: @ander.comment } }
    end

    assert_redirected_to ander_url(Ander.last)
  end

  test "should show ander" do
    get ander_url(@ander)
    assert_response :success
  end

  test "should get edit" do
    get edit_ander_url(@ander)
    assert_response :success
  end

  test "should update ander" do
    patch ander_url(@ander), params: { ander: { andr_id: @ander.andr_id, comment: @ander.comment } }
    assert_redirected_to ander_url(@ander)
  end

  test "should destroy ander" do
    assert_difference("Ander.count", -1) do
      delete ander_url(@ander)
    end

    assert_redirected_to anders_url
  end
end
