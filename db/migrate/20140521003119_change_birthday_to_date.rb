class ChangeBirthdayToDate < ActiveRecord::Migration
  def change
  	change_column :profiles, :date_of_birth, :datetime
  end
end
