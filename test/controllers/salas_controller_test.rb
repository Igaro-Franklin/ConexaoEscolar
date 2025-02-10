require "test_helper"

class SalasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get salas_index_url
    assert_response :success
  end

  test "should get show" do
    get salas_show_url
    assert_response :success
  end

  test "should get new" do
    get salas_new_url
    assert_response :success
  end

  test "should get edit" do
    get salas_edit_url
    assert_response :success
  end

  test "should get create" do
    get salas_create_url
    assert_response :success
  end

  test "should get update" do
    get salas_update_url
    assert_response :success
  end

  test "should get destroy" do
    get salas_destroy_url
    assert_response :success
  end
end
