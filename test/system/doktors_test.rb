require "application_system_test_case"

class DoktorsTest < ApplicationSystemTestCase
  setup do
    @doktor = doktors(:one)
  end

  test "visiting the index" do
    visit doktors_url
    assert_selector "h1", text: "Doktors"
  end

  test "creating a Doktor" do
    visit doktors_url
    click_on "New Doktor"

    fill_in "Description", with: @doktor.description
    fill_in "Last name", with: @doktor.last_name
    fill_in "Name", with: @doktor.name
    click_on "Create Doktor"

    assert_text "Doktor was successfully created"
    click_on "Back"
  end

  test "updating a Doktor" do
    visit doktors_url
    click_on "Edit", match: :first

    fill_in "Description", with: @doktor.description
    fill_in "Last name", with: @doktor.last_name
    fill_in "Name", with: @doktor.name
    click_on "Update Doktor"

    assert_text "Doktor was successfully updated"
    click_on "Back"
  end

  test "destroying a Doktor" do
    visit doktors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Doktor was successfully destroyed"
  end
end
