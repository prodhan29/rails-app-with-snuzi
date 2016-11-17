json.extract! regdetail, :id, :user_id, :semester_id, :course_id, :gpa, :created_at, :updated_at
json.url regdetail_url(regdetail, format: :json)