require "test_helper"

class CetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cet = cets(:one)
  end

  test "should get index" do
    get cets_url
    assert_response :success
  end

  test "should get new" do
    get new_cet_url
    assert_response :success
  end

  test "should create cet" do
    assert_difference("Cet.count") do
      post cets_url, params: { cet: { project_id: @cet.project_id } }
    end

    assert_redirected_to cet_url(Cet.last)
  end

  test "should show cet" do
    get cet_url(@cet)
    assert_response :success
  end

  test "should get edit" do
    get edit_cet_url(@cet)
    assert_response :success
  end

  test "should update cet" do
    patch cet_url(@cet), params: { cet: { project_id: @cet.project_id } }
    assert_redirected_to cet_url(@cet)
  end

  test "should destroy cet" do
    assert_difference("Cet.count", -1) do
      delete cet_url(@cet)
    end

    assert_redirected_to cets_url
  end
end
