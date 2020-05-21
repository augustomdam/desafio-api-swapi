require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get peoples" do
    get home_peoples_url
    assert_response :success
  end

  test "should get planets" do
    get home_planets_url
    assert_response :success
  end

  test "should get films" do
    get home_films_url
    assert_response :success
  end

  test "should get species" do
    get home_species_url
    assert_response :success
  end

  test "should get vehicules" do
    get home_vehicules_url
    assert_response :success
  end

  test "should get starships" do
    get home_starships_url
    assert_response :success
  end

end
