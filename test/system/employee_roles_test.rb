require "application_system_test_case"

class EmployeeRolesTest < ApplicationSystemTestCase
  setup do
    @employee_role = employee_roles(:one)
  end

  test "visiting the index" do
    visit employee_roles_url
    assert_selector "h1", text: "Employee Roles"
  end

  test "creating a Employee role" do
    visit employee_roles_url
    click_on "New Employee Role"

    fill_in "Name", with: @employee_role.name
    fill_in "Role", with: @employee_role.role_id
    click_on "Create Employee role"

    assert_text "Employee role was successfully created"
    click_on "Back"
  end

  test "updating a Employee role" do
    visit employee_roles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @employee_role.name
    fill_in "Role", with: @employee_role.role_id
    click_on "Update Employee role"

    assert_text "Employee role was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee role" do
    visit employee_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee role was successfully destroyed"
  end
end
