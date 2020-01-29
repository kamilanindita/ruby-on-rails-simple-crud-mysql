require 'test_helper'

class BukuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get buku_index_url
    assert_response :success
  end

  test "should get new" do
    get buku_new_url
    assert_response :success
  end

  test "should get create" do
    get buku_create_url
    assert_response :success
  end

  test "should get edit" do
    get buku_edit_url
    assert_response :success
  end

  test "should get update" do
    get buku_update_url
    assert_response :success
  end

  test "should get delete" do
    get buku_delete_url
    assert_response :success
  end

end
