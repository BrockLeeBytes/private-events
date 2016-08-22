class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    #drop_table :invites
    create_table :invites do |t|
      t.integer :attendee_id
      t.integer :attended_event_id

      t.timestamps
    end
    add_index :invites, :attendee_id
    add_index :invites, :attended_event_id
    add_index :invites, [:attendee_id, :attended_event_id], unique: true
  end
end
