require 'test_helper'

class ListaClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_cliente = lista_clientes(:one)
  end

  test "should get index" do
    get lista_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_cliente_url
    assert_response :success
  end

  test "should create lista_cliente" do
    assert_difference('ListaCliente.count') do
      post lista_clientes_url, params: { lista_cliente: { cliente: @lista_cliente.cliente, correo: @lista_cliente.correo } }
    end

    assert_redirected_to lista_cliente_url(ListaCliente.last)
  end

  test "should show lista_cliente" do
    get lista_cliente_url(@lista_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_cliente_url(@lista_cliente)
    assert_response :success
  end

  test "should update lista_cliente" do
    patch lista_cliente_url(@lista_cliente), params: { lista_cliente: { cliente: @lista_cliente.cliente, correo: @lista_cliente.correo } }
    assert_redirected_to lista_cliente_url(@lista_cliente)
  end

  test "should destroy lista_cliente" do
    assert_difference('ListaCliente.count', -1) do
      delete lista_cliente_url(@lista_cliente)
    end

    assert_redirected_to lista_clientes_url
  end
end
