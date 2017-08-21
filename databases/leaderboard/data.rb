require 'csv'
require 'faker'
require 'securerandom'
i=0
CSV.open("file.csv", "wb") do |csv|
	while i < 100 do
		names=[]
		id = SecureRandom.uuid
		fname = Faker::Name.first_name
		lname = Faker::Name.last_name
		lang = ["Java","JavaScript","Python","C","C++","ruby","scala"]
		language = lang.sample
		num_of_commits = rand(100..500)
		msg = ["initial commit", "features added", "bug fixed", "ready for deployment", "features updated to the requirement" ]
		commit = msg.sample



			
		 csv << [id, fname, lname, language, num_of_commits, commit]
			
		i+=1
	end
end