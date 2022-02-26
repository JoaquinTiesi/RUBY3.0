require "application_system_test_case"

class PersonajesTest < ApplicationSystemTestCase
  setup do
    @personaje = personajes(:one)
  end

  test "visiting the index" do
    visit personajes_url
    assert_selector "h1", text: "Personajes"
  end

  test "should create personaje" do
    visit personajes_url
    click_on "New personaje"

    fill_in "Edad", with: @personaje.edad
    fill_in "Hisoria", with: @personaje.hisoria
    fill_in "Nombre", with: @personaje.nombre
    fill_in "Peso", with: @personaje.peso
    click_on "Create Personaje"

    assert_text "Personaje was successfully created"
    click_on "Back"
  end

  test "should update Personaje" do
    visit personaje_url(@personaje)
    click_on "Edit this personaje", match: :first

    fill_in "Edad", with: @personaje.edad
    fill_in "Hisoria", with: @personaje.hisoria
    fill_in "Nombre", with: @personaje.nombre
    fill_in "Peso", with: @personaje.peso
    click_on "Update Personaje"

    assert_text "Personaje was successfully updated"
    click_on "Back"
  end

  test "should destroy Personaje" do
    visit personaje_url(@personaje)
    click_on "Destroy this personaje", match: :first

    assert_text "Personaje was successfully destroyed"
  end
end
