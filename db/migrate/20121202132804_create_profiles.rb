class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :organization_type
      t.string :organization
      t.string :division
      t.date :birth
      t.string :zip_code_1
      t.string :zip_code_2
      t.string :pref
      t.string :address_1
      t.string :address_2
      t.string :phone
      t.string :mobile_phone
      t.string :fax
      t.references :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
