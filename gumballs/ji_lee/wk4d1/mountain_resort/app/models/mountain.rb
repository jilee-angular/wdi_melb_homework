class Mountain < ActiveRecord::Base
  validates :name, :presence => true
end
