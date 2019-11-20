require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "creating a Account" do
    visit accounts_url
    click_on "New Account"

    fill_in "Shopify account url", with: @account.shopify_account_url
    fill_in "Shopify api key", with: @account.shopify_api_key
    fill_in "Shopify password", with: @account.shopify_password
    fill_in "Shopify shared secret", with: @account.shopify_shared_secret
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounts_url
    click_on "Edit", match: :first

    fill_in "Shopify account url", with: @account.shopify_account_url
    fill_in "Shopify api key", with: @account.shopify_api_key
    fill_in "Shopify password", with: @account.shopify_password
    fill_in "Shopify shared secret", with: @account.shopify_shared_secret
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end
