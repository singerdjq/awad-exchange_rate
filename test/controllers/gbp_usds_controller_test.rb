require 'test_helper'

class GbpUsdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gbp_usd = gbp_usds(:one)
  end

  test "should get index" do
    get gbp_usds_url
    assert_response :success
  end

  test "should get new" do
    get new_gbp_usd_url
    assert_response :success
  end

  test "should create gbp_usd" do
    assert_difference('GbpUsd.count') do
      post gbp_usds_url, params: { gbp_usd: { date: @gbp_usd.date, spot_exchange_rate: @gbp_usd.spot_exchange_rate } }
    end

    assert_redirected_to gbp_usd_url(GbpUsd.last)
  end

  test "should show gbp_usd" do
    get gbp_usd_url(@gbp_usd)
    assert_response :success
  end

  test "should get edit" do
    get edit_gbp_usd_url(@gbp_usd)
    assert_response :success
  end

  test "should update gbp_usd" do
    patch gbp_usd_url(@gbp_usd), params: { gbp_usd: { date: @gbp_usd.date, spot_exchange_rate: @gbp_usd.spot_exchange_rate } }
    assert_redirected_to gbp_usd_url(@gbp_usd)
  end

  test "should destroy gbp_usd" do
    assert_difference('GbpUsd.count', -1) do
      delete gbp_usd_url(@gbp_usd)
    end

    assert_redirected_to gbp_usds_url
  end
end
