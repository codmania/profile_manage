class CreateUsersProfiles < ActiveRecord::Migration
  def change
    create_table :users_profiles do |t|
      t.integer :age
      t.string :address

      t.timestamps null: false
    end
  end
end
