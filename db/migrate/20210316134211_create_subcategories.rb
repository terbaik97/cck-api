class CreateSubcategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subcategories do   |t|
      t.string :subcategory_id
      t.string :url_icon
      t.timestamps
    end
    add_index(:subcategories, [ :created_at ])
  end
end
