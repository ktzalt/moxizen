class AgentActivity < ApplicationRecord
  validates :agent_id, :calls_accepted, :calls_denied, :calls_missed, :online_time,
  :available_time, :total_call_duration, :total_talk_time, :total_wrap_up_time,
  :started_transfers, :accepted_transfers, :calls_put_on_hold, :total_hold_time,
  presence: true

  def self.save_activity
    talk = Talk.new
    talk.agents_activity['agents_activity'].each do |agent|
      new_activity = AgentActivity.new
      new_activity.agent_id = agent['agent_id']
      new_activity.calls_accepted = agent['calls_accepted']
      new_activity.calls_denied = agent['calls_denied']
      new_activity.calls_missed = agent['calls_missed']
      new_activity.online_time = agent['online_time']
      new_activity.available_time = agent['available_time']
      new_activity.total_call_duration = agent['total_call_duration']
      new_activity.total_talk_time = agent['total_talk_time']
      new_activity.total_wrap_up_time = agent['total_wrap_up_time']
      new_activity.accepted_transfers = agent['accepted_transfers']
      new_activity.started_transfers = agent['started_transfers']
      new_activity.calls_put_on_hold = agent['calls_put_on_hold']
      new_activity.total_hold_time = agent['total_hold_time']
      new_activity.save
    end
  end
end
