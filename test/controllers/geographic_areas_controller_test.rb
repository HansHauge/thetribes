require 'test_helper'

class GeographicAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geographic_area = geographic_areas(:one)
  end

  test "should get index" do
    get geographic_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_geographic_area_url
    assert_response :success
  end

  test "should create geographic_area" do
    assert_difference('GeographicArea.count') do
      post geographic_areas_url, params: { geographic_area: { archeology: @geographic_area.archeology, civilizations: @geographic_area.civilizations, fauna: @geographic_area.fauna, flora: @geographic_area.flora, geography: @geographic_area.geography, history: @geographic_area.history, landscape: @geographic_area.landscape, lore: @geographic_area.lore, name: @geographic_area.name, points_of_interest: @geographic_area.points_of_interest, recommended_experience: @geographic_area.recommended_experience, ruins: @geographic_area.ruins, size: @geographic_area.size, summary: @geographic_area.summary, territory_control: @geographic_area.territory_control } }
    end

    assert_redirected_to geographic_area_url(GeographicArea.last)
  end

  test "should show geographic_area" do
    get geographic_area_url(@geographic_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_geographic_area_url(@geographic_area)
    assert_response :success
  end

  test "should update geographic_area" do
    patch geographic_area_url(@geographic_area), params: { geographic_area: { archeology: @geographic_area.archeology, civilizations: @geographic_area.civilizations, fauna: @geographic_area.fauna, flora: @geographic_area.flora, geography: @geographic_area.geography, history: @geographic_area.history, landscape: @geographic_area.landscape, lore: @geographic_area.lore, name: @geographic_area.name, points_of_interest: @geographic_area.points_of_interest, recommended_experience: @geographic_area.recommended_experience, ruins: @geographic_area.ruins, size: @geographic_area.size, summary: @geographic_area.summary, territory_control: @geographic_area.territory_control } }
    assert_redirected_to geographic_area_url(@geographic_area)
  end

  test "should destroy geographic_area" do
    assert_difference('GeographicArea.count', -1) do
      delete geographic_area_url(@geographic_area)
    end

    assert_redirected_to geographic_areas_url
  end
end
