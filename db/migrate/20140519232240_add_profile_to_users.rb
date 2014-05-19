class AddProfileToUsers < ActiveRecord::Migration
  def change
  User.all.each do |user|
    Profile.create user_id: user.id, gender: user.gender
  end
end
