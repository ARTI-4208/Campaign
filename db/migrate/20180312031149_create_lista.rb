class CreateLista < ActiveRecord::Migration[5.1]
  def change
    create_table :lista do |t|
      t.text :nombre

      t.timestamps
    end
  end
end
