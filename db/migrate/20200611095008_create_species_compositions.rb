class CreateSpeciesCompositions < ActiveRecord::Migration[5.2]
  def change
    create_table :species_compositions do |t|
      t.integer :speciesCode
      t.float :percentage
      t.float :meanLength
      t.integer :bagNo
      t.string :echogramName

      t.timestamps
    end
  end
end
