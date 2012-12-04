require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { address_1: @profile.address_1, address_2: @profile.address_2, birth: @profile.birth, division: @profile.division, fax: @profile.fax, mobile_phone: @profile.mobile_phone, name: @profile.name, organization: @profile.organization, organization_type: @profile.organization_type, phone: @profile.phone, pref: @profile.pref, zip_code_1: @profile.zip_code_1, zip_code_2: @profile.zip_code_2 }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    put :update, id: @profile, profile: { address_1: @profile.address_1, address_2: @profile.address_2, birth: @profile.birth, division: @profile.division, fax: @profile.fax, mobile_phone: @profile.mobile_phone, name: @profile.name, organization: @profile.organization, organization_type: @profile.organization_type, phone: @profile.phone, pref: @profile.pref, zip_code_1: @profile.zip_code_1, zip_code_2: @profile.zip_code_2 }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
