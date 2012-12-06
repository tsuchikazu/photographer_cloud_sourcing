class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.string :title
      t.string :category
      t.string :budget
      t.text :detail
      t.date :expired_on
      t.date :reqest_on
      t.string :place
      t.string :open_code
      t.string :option
      t.string :state

      t.timestamps
    end
  end
end
