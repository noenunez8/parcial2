require "test_helper"

class MedicalCenterOfficialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_center_official = medical_center_officials(:one)
  end

  test "should get index" do
    get medical_center_officials_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_center_official_url
    assert_response :success
  end

  test "should create medical_center_official" do
    assert_difference('MedicalCenterOfficial.count') do
      post medical_center_officials_url, params: { medical_center_official: { address: @medical_center_official.address, description: @medical_center_official.description, medical_center_type_id: @medical_center_official.medical_center_type_id, name: @medical_center_official.name, phone_number: @medical_center_official.phone_number } }
    end

    assert_redirected_to medical_center_official_url(MedicalCenterOfficial.last)
  end

  test "should show medical_center_official" do
    get medical_center_official_url(@medical_center_official)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_center_official_url(@medical_center_official)
    assert_response :success
  end

  test "should update medical_center_official" do
    patch medical_center_official_url(@medical_center_official), params: { medical_center_official: { address: @medical_center_official.address, description: @medical_center_official.description, medical_center_type_id: @medical_center_official.medical_center_type_id, name: @medical_center_official.name, phone_number: @medical_center_official.phone_number } }
    assert_redirected_to medical_center_official_url(@medical_center_official)
  end

  test "should destroy medical_center_official" do
    assert_difference('MedicalCenterOfficial.count', -1) do
      delete medical_center_official_url(@medical_center_official)
    end

    assert_redirected_to medical_center_officials_url
  end
end
