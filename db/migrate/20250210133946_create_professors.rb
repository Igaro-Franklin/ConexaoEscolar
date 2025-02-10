class CreateProfessors < ActiveRecord::Migration[8.0]
  def change
    create_table :professors do |t|
      t.string :nome
      t.string :especializacao

      t.timestamps
    end
  end
end
