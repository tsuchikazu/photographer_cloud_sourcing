class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address_1, :address_2, :birth, :division, :fax, :mobile_phone, :name, :organization, :organization_type, :phone, :pref, :zip_code_1, :zip_code_2
end
