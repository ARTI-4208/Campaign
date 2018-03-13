class CreateListaClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :lista_clientes do |t|
      t.integer :cliente
      t.text :correo

      t.timestamps
    end
  end
end
