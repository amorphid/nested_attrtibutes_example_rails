require 'test_helper'

class EntityRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entity_role = entity_roles(:one)
  end

  test "should get index" do
    get entity_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_entity_role_url
    assert_response :success
  end

  test "should create entity_role" do
    assert_difference('EntityRole.count') do
      post entity_roles_url, params: { entity_role: { entity_id: @entity_role.entity_id, name: @entity_role.name, notice_id: @entity_role.notice_id } }
    end

    assert_redirected_to entity_role_url(EntityRole.last)
  end

  test "should show entity_role" do
    get entity_role_url(@entity_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_entity_role_url(@entity_role)
    assert_response :success
  end

  test "should update entity_role" do
    patch entity_role_url(@entity_role), params: { entity_role: { entity_id: @entity_role.entity_id, name: @entity_role.name, notice_id: @entity_role.notice_id } }
    assert_redirected_to entity_role_url(@entity_role)
  end

  test "should destroy entity_role" do
    assert_difference('EntityRole.count', -1) do
      delete entity_role_url(@entity_role)
    end

    assert_redirected_to entity_roles_url
  end
end
