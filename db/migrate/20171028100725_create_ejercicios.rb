class CreateEjercicios < ActiveRecord::Migration[5.1]
  def change
    create_table :ejercicios do |t|
      t.string :nombre
      t.string :musculo

      t.timestamps
    end
  end
end
