require "test_helper"

class InscricoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inscricao = inscricoes(:one)
  end

  test "should get index" do
    get inscricoes_url
    assert_response :success
  end

  test "should get new" do
    get new_inscricao_url
    assert_response :success
  end

  test "should create inscricao" do
    assert_difference("Inscricao.count") do
      post inscricoes_url, params: { inscricao: { palestra_id: @inscricao.palestra_id, participante_id: @inscricao.participante_id } }
    end

    assert_redirected_to inscricao_url(Inscricao.last)
  end

  test "should show inscricao" do
    get inscricao_url(@inscricao)
    assert_response :success
  end

  test "should get edit" do
    get edit_inscricao_url(@inscricao)
    assert_response :success
  end

  test "should update inscricao" do
    patch inscricao_url(@inscricao), params: { inscricao: { palestra_id: @inscricao.palestra_id, participante_id: @inscricao.participante_id } }
    assert_redirected_to inscricao_url(@inscricao)
  end

  test "should destroy inscricao" do
    assert_difference("Inscricao.count", -1) do
      delete inscricao_url(@inscricao)
    end

    assert_redirected_to inscricoes_url
  end
end
