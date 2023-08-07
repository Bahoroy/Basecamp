require "application_system_test_case"

class AndersTest < ApplicationSystemTestCase
  setup do
    @ander = anders(:one)
  end

  test "visiting the index" do
    visit anders_url
    assert_selector "h1", text: "Anders"
  end

  test "should create ander" do
    visit anders_url
    click_on "New ander"

    fill_in "Andr", with: @ander.andr_id
    fill_in "Comment", with: @ander.comment
    click_on "Create Ander"

    assert_text "Ander was successfully created"
    click_on "Back"
  end

  test "should update Ander" do
    visit ander_url(@ander)
    click_on "Edit this ander", match: :first

    fill_in "Andr", with: @ander.andr_id
    fill_in "Comment", with: @ander.comment
    click_on "Update Ander"

    assert_text "Ander was successfully updated"
    click_on "Back"
  end

  test "should destroy Ander" do
    visit ander_url(@ander)
    click_on "Destroy this ander", match: :first

    assert_text "Ander was successfully destroyed"
  end
end
