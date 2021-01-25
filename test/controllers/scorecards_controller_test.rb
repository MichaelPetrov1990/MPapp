require 'test_helper'

class ScorecardsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get scorecards_show_url
    assert_response :success
  end

  test "should get new" do
    get scorecards_new_url
    assert_response :success
  end

  test "should get create" do
    get scorecards_create_url
    assert_response :success
  end

  test "should get edit" do
    get scorecards_edit_url
    assert_response :success
  end

  test "should get update" do
    get scorecards_update_url
    assert_response :success
  end

  test "should get delete" do
    get scorecards_delete_url
    assert_response :success
  end

end
