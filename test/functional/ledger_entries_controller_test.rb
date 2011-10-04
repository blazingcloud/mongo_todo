require 'test_helper'

class LedgerEntriesControllerTest < ActionController::TestCase
  setup do
    # this builds a ledger_entry but it does not save it to the database
    @ledger_entry = Factory.build(:ledger_entry)
  end

  test "should get index" do
    get :index

    # successful http request
    assert_response :success

    # successfully assigns the ledger_entries from the database
    assert_not_nil assigns(:ledger_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ledger_entry" do
    assert_difference('LedgerEntry.count') do
      post :create, :ledger_entry => @ledger_entry.attributes
    end

    assert_redirected_to ledger_entry_path(assigns(:ledger_entry))
  end

  test "should show ledger_entry" do
    @ledger_entry.save!
    get :show, :id => @ledger_entry.to_param

    assert_response :success
  end

  test "should get edit" do
    @ledger_entry.save!
    get :edit, :id => @ledger_entry.to_param
    assert_response :success
  end

  test "should update ledger_entry" do
    @ledger_entry.save!
    put :update, :id => @ledger_entry.to_param, :ledger_entry => @ledger_entry.attributes
    assert_redirected_to ledger_entry_path(assigns(:ledger_entry))
  end

  test "should destroy ledger_entry" do
    @ledger_entry.save!
    assert_difference('LedgerEntry.count', -1) do
      delete :destroy, :id => @ledger_entry.to_param
    end

    assert_redirected_to ledger_entries_path
  end
end
