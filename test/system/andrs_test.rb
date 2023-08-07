require "application_system_test_case"

class AndrsTest < ApplicationSystemTestCase
  setup do
    @andr = andrs(:one)
  end

  test "visiting the index" do
    visit andrs_url
    assert_selector "h1", text: "Andrs"
  end

  test "should create andr" do
    visit andrs_url
    click_on "New andr"

    fill_in "Project", with: @andr.project_id
    fill_in "Title", with: @andr.title
    click_on "Create Andr"

    assert_text "Andr was successfully created"
    click_on "Back"
  end

  test "should update Andr" do
    visit andr_url(@andr)
    click_on "Edit this andr", match: :first

    fill_in "Project", with: @andr.project_id
    fill_in "Title", with: @andr.title
    click_on "Update Andr"

    assert_text "Andr was successfully updated"
    click_on "Back"
  end

  test "should destroy Andr" do
    visit andr_url(@andr)
    click_on "Destroy this andr", match: :first

    assert_text "Andr was successfully destroyed"
  end
end
