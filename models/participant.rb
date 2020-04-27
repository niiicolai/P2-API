class Participant < ActiveRecord::Base
  has_many :completed_activities
  has_many :failed_activities
  has_many :interactions
  has_many :ratings
end
