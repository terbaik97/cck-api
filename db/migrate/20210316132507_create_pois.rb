class CreatePois < ActiveRecord::Migration[6.1]
  def change
    create_table :pois do  |t|
      t.string :user_id
      t.json :fields
      t.point :coordinate
      t.string :subcategory_id
      t.timestamps
    end
    add_index(:pois, [ :created_at ])
  end
end
