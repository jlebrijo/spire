require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "should create address" do
    visit addresses_url
    click_on "New address"

    fill_in "Address1", with: @address.address1
    fill_in "Address2", with: @address.address2
    fill_in "City", with: @address.city
    fill_in "Firm name", with: @address.firm_name
    fill_in "State", with: @address.state
    fill_in "Urbanization", with: @address.urbanization
    fill_in "Zip4", with: @address.zip4
    fill_in "Zip5", with: @address.zip5
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "should update Address" do
    visit address_url(@address)
    click_on "Edit this address", match: :first

    fill_in "Address1", with: @address.address1
    fill_in "Address2", with: @address.address2
    fill_in "City", with: @address.city
    fill_in "Firm name", with: @address.firm_name
    fill_in "State", with: @address.state
    fill_in "Urbanization", with: @address.urbanization
    fill_in "Zip4", with: @address.zip4
    fill_in "Zip5", with: @address.zip5
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "should destroy Address" do
    visit address_url(@address)
    click_on "Destroy this address", match: :first

    assert_text "Address was successfully destroyed"
  end
end
