class AddParticipantTables < ActiveRecord::Migration[5.2]
  def change

    add_column :participants, :date_created, :string

    create_table :failed_activities do |t|
      t.integer :activity_id
    end

    create_table :completed_activities do |t|
      t.integer :activity_id
    end

    create_table :interactions do |t|
      t.string :date_created
      t.string :method
      t.string :message
    end

    create_table :ratings do |t|
      t.string :date_created
      t.string :question
      t.integer :rate
    end
  end
end
