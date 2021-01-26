require "test_helper"

class DoktorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doktor = doktors(:one)
  end

  test "should get index" do
    get doktors_url
    assert_response :success
  end

  test "should get new" do
    get new_doktor_url
    assert_response :success
  end

  test "should create doktor" do
    assert_difference('Doktor.count') do
      post doktors_url, params: { doktor: { description: @doktor.description, last_name: @doktor.last_name, name: @doktor.name } }
    end

    assert_redirected_to doktor_url(Doktor.last)
  end

  test "should show doktor" do
    get doktor_url(@doktor)
    assert_response :success
  end

  test "should get edit" do
    get edit_doktor_url(@doktor)
    assert_response :success
  end

  test "should update doktor" do
    patch doktor_url(@doktor), params: { doktor: { description: @doktor.description, last_name: @doktor.last_name, name: @doktor.name } }
    assert_redirected_to doktor_url(@doktor)
  end

  test "should destroy doktor" do
    assert_difference('Doktor.count', -1) do
      delete doktor_url(@doktor)
    end

    assert_redirected_to doktors_url
  end
end
