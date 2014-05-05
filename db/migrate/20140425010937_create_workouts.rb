class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.date :completed_at
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
