require "application_system_test_case"

class SharksTest < ApplicationSystemTestCase
  setup do
    @shark = sharks(:one)
  end

  test "visiting the index" do
    visit sharks_url
    assert_selector "h1", text: "Sharks"
  end

  test "should create shark" do
    visit sharks_url
    click_on "New shark"

    fill_in "Facts", with: @shark.facts
    fill_in "Name", with: @shark.name
    click_on "Create Shark"

    assert_text "Shark was successfully created"
    click_on "Back"
  end

  test "should update Shark" do
    visit shark_url(@shark)
    click_on "Edit this shark", match: :first

    fill_in "Facts", with: @shark.facts
    fill_in "Name", with: @shark.name
    click_on "Update Shark"

    assert_text "Shark was successfully updated"
    click_on "Back"
  end

  test "should destroy Shark" do
    visit shark_url(@shark)
    click_on "Destroy this shark", match: :first

    assert_text "Shark was successfully destroyed"
  end
end
