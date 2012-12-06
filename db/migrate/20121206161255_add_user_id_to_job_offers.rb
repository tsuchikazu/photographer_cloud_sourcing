class AddUserIdToJobOffers < ActiveRecord::Migration
  def change
    add_column :job_offers, :user_id, :integer, after: :state
  end
end
