class CreateUserApps < ActiveRecord::Migration[5.2]
  def change
    create_table :user_apps do |t|
      t.references :app, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
