require 'test_helper'

class LinguagensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linguagem = linguagens(:one)
  end

  test "should get index" do
    get linguagens_url
    assert_response :success
  end

  test "should get new" do
    get new_linguagem_url
    assert_response :success
  end

  test "should create linguagem" do
    assert_difference('Linguagem.count') do
      post linguagens_url, params: { linguagem: { descricao: @linguagem.descricao, extensao: @linguagem.extensao, icone: @linguagem.icone, nome: @linguagem.nome } }
    end

    assert_redirected_to linguagem_url(Linguagem.last)
  end

  test "should show linguagem" do
    get linguagem_url(@linguagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_linguagem_url(@linguagem)
    assert_response :success
  end

  test "should update linguagem" do
    patch linguagem_url(@linguagem), params: { linguagem: { descricao: @linguagem.descricao, extensao: @linguagem.extensao, icone: @linguagem.icone, nome: @linguagem.nome } }
    assert_redirected_to linguagem_url(@linguagem)
  end

  test "should destroy linguagem" do
    assert_difference('Linguagem.count', -1) do
      delete linguagem_url(@linguagem)
    end

    assert_redirected_to linguagens_url
  end
end
