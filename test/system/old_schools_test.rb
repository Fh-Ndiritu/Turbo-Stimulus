require "application_system_test_case"

class OldSchoolsTest < ApplicationSystemTestCase
  setup do
    @old_school = old_schools(:one)
  end

  test "visiting the index" do
    visit old_schools_url
    assert_selector "h1", text: "Old schools"
  end

  test "should create old school" do
    visit old_schools_url
    click_on "New old school"

    fill_in "Age", with: @old_school.age
    fill_in "Description", with: @old_school.description
    fill_in "Title", with: @old_school.title
    click_on "Create Old school"

    assert_text "Old school was successfully created"
    click_on "Back"
  end

  test "should update Old school" do
    visit old_school_url(@old_school)
    click_on "Edit this old school", match: :first

    fill_in "Age", with: @old_school.age
    fill_in "Description", with: @old_school.description
    fill_in "Title", with: @old_school.title
    click_on "Update Old school"

    assert_text "Old school was successfully updated"
    click_on "Back"
  end

  test "should destroy Old school" do
    visit old_school_url(@old_school)
    accept_confirm { click_on "Destroy this old school", match: :first }

    assert_text "Old school was successfully destroyed"
  end
end
