require 'test_helper'

class GpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gp = gps(:one)
  end

  test "should get index" do
    get gps_url
    assert_response :success
  end

  test "should get new" do
    get new_gp_url
    assert_response :success
  end

  test "should create gp" do
    assert_difference('Gp.count') do
      post gps_url, params: { gp: { available_gps: @gp.available_gps, emei: @gp.emei, latitude: @gp.latitude, length: @gp.length, number_gps: @gp.number_gps, number_phone: @gp.number_phone, status: @gp.status, xtra: @gp.xtra } }
    end

    assert_redirected_to gp_url(Gp.last)
  end

  test "should show gp" do
    get gp_url(@gp)
    assert_response :success
  end

  test "should get edit" do
    get edit_gp_url(@gp)
    assert_response :success
  end

  test "should update gp" do
    patch gp_url(@gp), params: { gp: { available_gps: @gp.available_gps, emei: @gp.emei, latitude: @gp.latitude, length: @gp.length, number_gps: @gp.number_gps, number_phone: @gp.number_phone, status: @gp.status, xtra: @gp.xtra } }
    assert_redirected_to gp_url(@gp)
  end

  test "should destroy gp" do
    assert_difference('Gp.count', -1) do
      delete gp_url(@gp)
    end

    assert_redirected_to gps_url
  end
end
