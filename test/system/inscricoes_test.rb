require "application_system_test_case"

class InscricoesTest < ApplicationSystemTestCase
  setup do
    @inscricao = inscricoes(:one)
  end

  test "visiting the index" do
    visit inscricoes_url
    assert_selector "h1", text: "Inscricoes"
  end

  test "should create inscricao" do
    visit inscricoes_url
    click_on "New inscricao"

    fill_in "Palestra", with: @inscricao.palestra_id
    fill_in "Participante", with: @inscricao.participante_id
    click_on "Create Inscricao"

    assert_text "Inscricao was successfully created"
    click_on "Back"
  end

  test "should update Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Edit this inscricao", match: :first

    fill_in "Palestra", with: @inscricao.palestra_id
    fill_in "Participante", with: @inscricao.participante_id
    click_on "Update Inscricao"

    assert_text "Inscricao was successfully updated"
    click_on "Back"
  end

  test "should destroy Inscricao" do
    visit inscricao_url(@inscricao)
    click_on "Destroy this inscricao", match: :first

    assert_text "Inscricao was successfully destroyed"
  end
end
