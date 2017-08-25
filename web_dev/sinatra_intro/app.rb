# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  p student
  student.to_s
end

#write a route that displays an address

get '/contact' do
  "83 S King st, Seattle, WA-989898"
end

get '/' do
  name = params[:name]
  if name
    "Good job,#{name}"
  else
    "Good job!"
  end
end

get '/:num1/+/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  num1 = num1.to_i 
  num2 = num2.to_i
  res = num1 + num2
  res.to_s
  end

get '/:campus' do
  camp = params[:campus]
  campus_students = db.execute("SELECT * FROM students WHERE campus=?", [camp])
  response = ""
  campus_students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end







