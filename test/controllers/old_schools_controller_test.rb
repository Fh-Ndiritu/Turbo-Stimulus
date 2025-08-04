require "test_helper"

class OldSchoolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @old_school = old_schools(:one)
  end

  test "should get index" do
    get old_schools_url
    assert_response :success
  end

  test "should get new" do
    get new_old_school_url
    assert_response :success
  end

  test "should create old_school" do
    assert_difference("OldSchool.count") do
      post old_schools_url, params: { old_school: { age: @old_school.age, description: @old_school.description, title: @old_school.title } }
    end

    assert_redirected_to old_school_url(OldSchool.last)
  end

  test "should show old_school" do
    get old_school_url(@old_school)
    assert_response :success
  end

  test "should get edit" do
    get edit_old_school_url(@old_school)
    assert_response :success
  end

  test "should update old_school" do
    patch old_school_url(@old_school), params: { old_school: { age: @old_school.age, description: @old_school.description, title: @old_school.title } }
    assert_redirected_to old_school_url(@old_school)
  end

  test "should destroy old_school" do
    assert_difference("OldSchool.count", -1) do
      delete old_school_url(@old_school)
    end

    assert_redirected_to old_schools_url
  end
end
