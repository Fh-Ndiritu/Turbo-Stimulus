class CreateOldSchools < ActiveRecord::Migration[8.0]
  def change
    create_table :old_schools do |t|
      t.string :title
      t.text :description
      t.integer :age

      t.timestamps
    end
  end
end
