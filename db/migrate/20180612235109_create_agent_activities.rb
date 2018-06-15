class CreateAgentActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :agent_activities do |t|
      t.integer :agent_id
      t.integer :average_talk_time
      t.integer :calls_accepted
      t.integer :calls_denied
      t.integer :calls_missed
      t.integer :online_time
      t.integer :available_time
      t.integer :total_call_duration
      t.integer :total_talk_time
      t.integer :total_wrap_up_time
      t.integer :average_wrap_up_time
      t.integer :accepted_transfers
      t.integer :calls_put_on_hold
      t.integer :average_hold_time
      t.integer :total_hold_time

      t.timestamps
    end
  end
end
