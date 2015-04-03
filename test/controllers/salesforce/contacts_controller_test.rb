require 'test_helper'

class Salesforce::ContactsControllerTest < ActionController::TestCase
  setup do
    @salesforce_contact = salesforce_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:salesforce_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create salesforce_contact" do
    assert_difference('Salesforce::Contact.count') do
      post :create, salesforce_contact: { first_name: @salesforce_contact.first_name, last_name: @salesforce_contact.last_name, phone: @salesforce_contact.phone }
    end

    assert_redirected_to salesforce_contact_path(assigns(:salesforce_contact))
  end

  test "should show salesforce_contact" do
    get :show, id: @salesforce_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @salesforce_contact
    assert_response :success
  end

  test "should update salesforce_contact" do
    patch :update, id: @salesforce_contact, salesforce_contact: { first_name: @salesforce_contact.first_name, last_name: @salesforce_contact.last_name, phone: @salesforce_contact.phone }
    assert_redirected_to salesforce_contact_path(assigns(:salesforce_contact))
  end

  test "should destroy salesforce_contact" do
    assert_difference('Salesforce::Contact.count', -1) do
      delete :destroy, id: @salesforce_contact
    end

    assert_redirected_to salesforce_contacts_path
  end
end
