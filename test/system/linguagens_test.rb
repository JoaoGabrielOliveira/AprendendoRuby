require "application_system_test_case"

class LinguagensTest < ApplicationSystemTestCase
  setup do
    @linguagem = linguagens(:one)
  end

  test "visiting the index" do
    visit linguagens_url
    assert_selector "h1", text: "Linguagens"
  end

  test "creating a Linguagem" do
    visit linguagens_url
    click_on "New Linguagem"

    fill_in "Descricao", with: @linguagem.descricao
    fill_in "Extensao", with: @linguagem.extensao
    fill_in "Icone", with: @linguagem.icone
    fill_in "Nome", with: @linguagem.nome
    click_on "Create Linguagem"

    assert_text "Linguagem was successfully created"
    click_on "Back"
  end

  test "updating a Linguagem" do
    visit linguagens_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @linguagem.descricao
    fill_in "Extensao", with: @linguagem.extensao
    fill_in "Icone", with: @linguagem.icone
    fill_in "Nome", with: @linguagem.nome
    click_on "Update Linguagem"

    assert_text "Linguagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Linguagem" do
    visit linguagens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Linguagem was successfully destroyed"
  end
end
