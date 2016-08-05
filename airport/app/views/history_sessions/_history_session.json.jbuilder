json.extract! history_session, :id, :date, :hour, :state, :user_id, :created_at, :updated_at
json.url history_session_url(history_session, format: :json)