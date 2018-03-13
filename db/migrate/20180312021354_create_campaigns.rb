class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.text :nombre
      t.date :fecha_inicio
      t.date :fecha_fin
      t.text :segmento_cliente
      t.integer :lista_distribucion_clientes
      t.integer :lista_productos

      t.timestamps
    end
  end
end
