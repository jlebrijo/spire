require "test_helper"

class AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_address_url
    assert_response :success
  end

  test "should create address" do
    assert_difference("Address.count") do
      post addresses_url, params: { address: { address1: @address.address1, address2: @address.address2, city: @address.city, company: @address.company, state: @address.state, zip4: @address.zip4, zip5: @address.zip5 } }
    end

    assert_redirected_to address_url(Address.last)
  end

  test "should show address" do
    get address_url(@address)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_url(@address)
    assert_response :success
  end

  test "should update address" do
    patch address_url(@address), params: { address: { address1: @address.address1, address2: @address.address2, city: @address.city, company: @address.company, state: @address.state, zip4: @address.zip4, zip5: @address.zip5 } }
    assert_redirected_to address_url(@address)
  end

  test "should destroy address" do
    assert_difference("Address.count", -1) do
      delete address_url(@address)
    end

    assert_redirected_to addresses_url
  end
end
