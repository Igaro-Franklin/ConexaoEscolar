class CreateTurmas < ActiveRecord::Migration[8.0]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.string :serie
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
