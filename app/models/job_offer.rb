class JobOffer < ActiveRecord::Base
  belongs_to :user
  attr_accessible :budget, :category, :detail, :expired_on, :open_code, :option, :place, :reqest_on, :state, :title
end
