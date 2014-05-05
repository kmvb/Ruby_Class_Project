class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|

    #adding joining categories
	   t.references :exercise, index: true
      t.references :workout, index: true  
      t.integer :quantity

      #generated code
      t.timestamps
     

    end
  end
end
