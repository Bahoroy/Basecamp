require "test_helper"

class AndrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @andr = andrs(:one)
  end

  test "should get index" do
    get andrs_url
    assert_response :success
  end

  test "should get new" do
    get new_andr_url
    assert_response :success
  end

  test "should create andr" do
    assert_difference("Andr.count") do
      post andrs_url, params: { andr: { project_id: @andr.project_id, title: @andr.title } }
    end

    assert_redirected_to andr_url(Andr.last)
  end

  test "should show andr" do
    get andr_url(@andr)
    assert_response :success
  end

  test "should get edit" do
    get edit_andr_url(@andr)
    assert_response :success
  end

  test "should update andr" do
    patch andr_url(@andr), params: { andr: { project_id: @andr.project_id, title: @andr.title } }
    assert_redirected_to andr_url(@andr)
  end

  test "should destroy andr" do
    assert_difference("Andr.count", -1) do
      delete andr_url(@andr)
    end

    assert_redirected_to andrs_url
  end
end
