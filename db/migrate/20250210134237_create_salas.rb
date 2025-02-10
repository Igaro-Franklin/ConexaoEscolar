class CreateSalas < ActiveRecord::Migration[8.0]
  def change
    create_table :salas do |t|
      t.string :numero
      t.integer :capacidade
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
