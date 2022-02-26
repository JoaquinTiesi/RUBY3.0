require "application_system_test_case"

class PeliculapersonajesTest < ApplicationSystemTestCase
  setup do
    @peliculapersonaje = peliculapersonajes(:one)
  end

  test "visiting the index" do
    visit peliculapersonajes_url
    assert_selector "h1", text: "Peliculapersonajes"
  end

  test "should create peliculapersonaje" do
    visit peliculapersonajes_url
    click_on "New peliculapersonaje"

    fill_in "Pelicula", with: @peliculapersonaje.pelicula_id
    fill_in "Personaje", with: @peliculapersonaje.personaje_id
    click_on "Create Peliculapersonaje"

    assert_text "Peliculapersonaje was successfully created"
    click_on "Back"
  end

  test "should update Peliculapersonaje" do
    visit peliculapersonaje_url(@peliculapersonaje)
    click_on "Edit this peliculapersonaje", match: :first

    fill_in "Pelicula", with: @peliculapersonaje.pelicula_id
    fill_in "Personaje", with: @peliculapersonaje.personaje_id
    click_on "Update Peliculapersonaje"

    assert_text "Peliculapersonaje was successfully updated"
    click_on "Back"
  end

  test "should destroy Peliculapersonaje" do
    visit peliculapersonaje_url(@peliculapersonaje)
    click_on "Destroy this peliculapersonaje", match: :first

    assert_text "Peliculapersonaje was successfully destroyed"
  end
end
