class CreateMateria < ActiveRecord::Migration[8.0]
  def change
    create_table :materia do |t|
      t.string :nome
      t.text :descricao
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
