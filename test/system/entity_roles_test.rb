require "application_system_test_case"

class EntityRolesTest < ApplicationSystemTestCase
  setup do
    @entity_role = entity_roles(:one)
  end

  test "visiting the index" do
    visit entity_roles_url
    assert_selector "h1", text: "Entity Roles"
  end

  test "creating a Entity role" do
    visit entity_roles_url
    click_on "New Entity Role"

    fill_in "Entity", with: @entity_role.entity_id
    fill_in "Name", with: @entity_role.name
    fill_in "Notice", with: @entity_role.notice_id
    click_on "Create Entity role"

    assert_text "Entity role was successfully created"
    click_on "Back"
  end

  test "updating a Entity role" do
    visit entity_roles_url
    click_on "Edit", match: :first

    fill_in "Entity", with: @entity_role.entity_id
    fill_in "Name", with: @entity_role.name
    fill_in "Notice", with: @entity_role.notice_id
    click_on "Update Entity role"

    assert_text "Entity role was successfully updated"
    click_on "Back"
  end

  test "destroying a Entity role" do
    visit entity_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entity role was successfully destroyed"
  end
end
