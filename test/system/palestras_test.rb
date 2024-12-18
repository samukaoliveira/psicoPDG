require "application_system_test_case"

class PalestrasTest < ApplicationSystemTestCase
  setup do
    @palestra = palestras(:one)
  end

  test "visiting the index" do
    visit palestras_url
    assert_selector "h1", text: "Palestras"
  end

  test "should create palestra" do
    visit palestras_url
    click_on "New palestra"

    fill_in "Data", with: @palestra.data
    fill_in "Horario", with: @palestra.horario
    fill_in "Local", with: @palestra.local
    fill_in "Titulo", with: @palestra.titulo
    fill_in "Valor", with: @palestra.valor
    click_on "Create Palestra"

    assert_text "Palestra was successfully created"
    click_on "Back"
  end

  test "should update Palestra" do
    visit palestra_url(@palestra)
    click_on "Edit this palestra", match: :first

    fill_in "Data", with: @palestra.data
    fill_in "Horario", with: @palestra.horario.to_s
    fill_in "Local", with: @palestra.local
    fill_in "Titulo", with: @palestra.titulo
    fill_in "Valor", with: @palestra.valor
    click_on "Update Palestra"

    assert_text "Palestra was successfully updated"
    click_on "Back"
  end

  test "should destroy Palestra" do
    visit palestra_url(@palestra)
    click_on "Destroy this palestra", match: :first

    assert_text "Palestra was successfully destroyed"
  end
end
