class CreateAtendimentos < ActiveRecord::Migration[5.1]
  def change
    create_table :atendimentos do |t|
      t.text :situacao
      t.references :paciente, foreign_key: true
      t.references :hospital, foreign_key: true
      t.string :sintomas
      t.time :tempoCheg
      t.string :tipoAtendimento

      t.timestamps
    end
    add_index :atendimentos, [:paciente_id, :created_at]
    add_index :atendimentos, [:hospital_id, :created_at]
  end
end
