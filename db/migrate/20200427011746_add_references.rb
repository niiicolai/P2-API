class AddReferences < ActiveRecord::Migration[5.2]
  def change
    add_reference :failed_activities, :participant, index: true
    add_reference :completed_activities, :participant, index: true
    add_reference :interactions, :participant, index: true
    add_reference :ratings, :participant, index: true
  end
end
