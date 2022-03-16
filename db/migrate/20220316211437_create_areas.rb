class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.integer :codigo_area
      t.string :nombre_area

      t.timestamps
    end
  end
end
