require "test_helper"

class ProfessoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professores_index_url
    assert_response :success
  end

  test "should get show" do
    get professores_show_url
    assert_response :success
  end

  test "should get new" do
    get professores_new_url
    assert_response :success
  end

  test "should get edit" do
    get professores_edit_url
    assert_response :success
  end

  test "should get create" do
    get professores_create_url
    assert_response :success
  end

  test "should get update" do
    get professores_update_url
    assert_response :success
  end

  test "should get destroy" do
    get professores_destroy_url
    assert_response :success
  end
end
