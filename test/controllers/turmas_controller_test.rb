require "test_helper"

class TurmasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get turmas_index_url
    assert_response :success
  end

  test "should get show" do
    get turmas_show_url
    assert_response :success
  end

  test "should get new" do
    get turmas_new_url
    assert_response :success
  end

  test "should get edit" do
    get turmas_edit_url
    assert_response :success
  end

  test "should get create" do
    get turmas_create_url
    assert_response :success
  end

  test "should get update" do
    get turmas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get turmas_destroy_url
    assert_response :success
  end
end
