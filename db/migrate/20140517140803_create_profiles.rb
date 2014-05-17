class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :profile_image_url
      t.string :location
      t.string :gender
      t.string :email
      t.integer :date_of_birth
      t.integer :user_id

      t.timestamps
    end
  end
end
