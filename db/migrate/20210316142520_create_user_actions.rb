class CreateUserActions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_actions do    |t|
      t.string :user_id
      t.string :action_type
      t.timestamps
    end
    add_index(:user_actions, [ :created_at ])
  end
end
