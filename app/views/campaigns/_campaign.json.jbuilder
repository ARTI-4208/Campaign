json.extract! campaign, :id, :nombre, :fecha_inicio, :fecha_fin, :segmento_cliente, :lista_distribucion_clientes, :lista_productos, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
