class CreateAportacions < ActiveRecord::Migration
  def change
    create_table :aportacions do |t|
      t.string :name
      t.string :email
      t.string :dni_cif
      t.string :dir1
      t.string :dir2
      t.string :cp
      t.string :localidad
      t.string :provincia
      t.string :telefono
      t.string :email
      t.string :cantidad
      t.bool :en_mecenas
      t.bool :certificado
      t.bool :comprobado

      t.timestamps
    end
  end
end
