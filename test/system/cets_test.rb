require "application_system_test_case"

class CetsTest < ApplicationSystemTestCase
  setup do
    @cet = cets(:one)
  end

  test "visiting the index" do
    visit cets_url
    assert_selector "h1", text: "Cets"
  end

  test "should create cet" do
    visit cets_url
    click_on "New cet"

    fill_in "Project", with: @cet.project_id
    click_on "Create Cet"

    assert_text "Cet was successfully created"
    click_on "Back"
  end

  test "should update Cet" do
    visit cet_url(@cet)
    click_on "Edit this cet", match: :first

    fill_in "Project", with: @cet.project_id
    click_on "Update Cet"

    assert_text "Cet was successfully updated"
    click_on "Back"
  end

  test "should destroy Cet" do
    visit cet_url(@cet)
    click_on "Destroy this cet", match: :first

    assert_text "Cet was successfully destroyed"
  end
end
