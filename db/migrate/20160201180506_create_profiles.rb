class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :school_address

      t.timestamps null: false
    end
  end
end
