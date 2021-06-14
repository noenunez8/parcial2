require "application_system_test_case"

class MedicalCenterOfficialsTest < ApplicationSystemTestCase
  setup do
    @medical_center_official = medical_center_officials(:one)
  end

  test "visiting the index" do
    visit medical_center_officials_url
    assert_selector "h1", text: "Medical Center Officials"
  end

  test "creating a Medical center official" do
    visit medical_center_officials_url
    click_on "New Medical Center Official"

    fill_in "Address", with: @medical_center_official.address
    fill_in "Description", with: @medical_center_official.description
    fill_in "Medical center type", with: @medical_center_official.medical_center_type_id
    fill_in "Name", with: @medical_center_official.name
    fill_in "Phone number", with: @medical_center_official.phone_number
    click_on "Create Medical center official"

    assert_text "Medical center official was successfully created"
    click_on "Back"
  end

  test "updating a Medical center official" do
    visit medical_center_officials_url
    click_on "Edit", match: :first

    fill_in "Address", with: @medical_center_official.address
    fill_in "Description", with: @medical_center_official.description
    fill_in "Medical center type", with: @medical_center_official.medical_center_type_id
    fill_in "Name", with: @medical_center_official.name
    fill_in "Phone number", with: @medical_center_official.phone_number
    click_on "Update Medical center official"

    assert_text "Medical center official was successfully updated"
    click_on "Back"
  end

  test "destroying a Medical center official" do
    visit medical_center_officials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medical center official was successfully destroyed"
  end
end
