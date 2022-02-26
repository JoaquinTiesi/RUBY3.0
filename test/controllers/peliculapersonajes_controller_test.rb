require "test_helper"

class PeliculapersonajesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peliculapersonaje = peliculapersonajes(:one)
  end

  test "should get index" do
    get peliculapersonajes_url
    assert_response :success
  end

  test "should get new" do
    get new_peliculapersonaje_url
    assert_response :success
  end

  test "should create peliculapersonaje" do
    assert_difference("Peliculapersonaje.count") do
      post peliculapersonajes_url, params: { peliculapersonaje: { pelicula_id: @peliculapersonaje.pelicula_id, personaje_id: @peliculapersonaje.personaje_id } }
    end

    assert_redirected_to peliculapersonaje_url(Peliculapersonaje.last)
  end

  test "should show peliculapersonaje" do
    get peliculapersonaje_url(@peliculapersonaje)
    assert_response :success
  end

  test "should get edit" do
    get edit_peliculapersonaje_url(@peliculapersonaje)
    assert_response :success
  end

  test "should update peliculapersonaje" do
    patch peliculapersonaje_url(@peliculapersonaje), params: { peliculapersonaje: { pelicula_id: @peliculapersonaje.pelicula_id, personaje_id: @peliculapersonaje.personaje_id } }
    assert_redirected_to peliculapersonaje_url(@peliculapersonaje)
  end

  test "should destroy peliculapersonaje" do
    assert_difference("Peliculapersonaje.count", -1) do
      delete peliculapersonaje_url(@peliculapersonaje)
    end

    assert_redirected_to peliculapersonajes_url
  end
end
