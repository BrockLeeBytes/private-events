class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.date :event_date
      t.string :description

      t.timestamps
    end
  end
end