json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :description, :due_date, :category_id
  json.url task_url(task, format: :json)
end
