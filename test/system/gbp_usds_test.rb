require "application_system_test_case"

class GbpUsdsTest < ApplicationSystemTestCase
  setup do
    @gbp_usd = gbp_usds(:one)
  end

  test "visiting the index" do
    visit gbp_usds_url
    assert_selector "h1", text: "Gbp Usds"
  end

  test "creating a Gbp usd" do
    visit gbp_usds_url
    click_on "New Gbp Usd"

    fill_in "Date", with: @gbp_usd.date
    fill_in "Spot exchange rate", with: @gbp_usd.spot_exchange_rate
    click_on "Create Gbp usd"

    assert_text "Gbp usd was successfully created"
    click_on "Back"
  end

  test "updating a Gbp usd" do
    visit gbp_usds_url
    click_on "Edit", match: :first

    fill_in "Date", with: @gbp_usd.date
    fill_in "Spot exchange rate", with: @gbp_usd.spot_exchange_rate
    click_on "Update Gbp usd"

    assert_text "Gbp usd was successfully updated"
    click_on "Back"
  end

  test "destroying a Gbp usd" do
    visit gbp_usds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gbp usd was successfully destroyed"
  end
end
