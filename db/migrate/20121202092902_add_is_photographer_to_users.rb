class AddIsPhotographerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_photographer, :boolean, after: :email
  end
end
