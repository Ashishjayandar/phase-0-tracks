#Leader board
# The program is going to get a csv file and create a database from the csv file 
#The goal is to create queries that would assist in real world companies.

#program
require 'sqlite3'
require 'csv'
#database creation and tables creation
db = SQLite3::Database.new("leaderboard.db")

create_lang_table = <<-SQL
CREATE TABLE IF NOT EXISTS Language(
	id INTEGER PRIMARY KEY,
	language_name VARCHAR(255)
)
SQL

create_commit_table = <<-SQL
CREATE TABLE IF NOT EXISTS Commit_table(
	id INTEGER PRIMARY KEY,
	commit_msg VARCHAR(255)
)
SQL

create_board_table = <<-SQL
CREATE TABLE IF NOT EXISTS board(
	id INTEGER PRIMARY KEY,
	unique_id INTEGER,
	fname VARCHAR(255),
	lname VARCHAR(255),
	lang INTEGER,
	num_of_commits INTEGER,
	last_commit_msg INTEGER,
	FOREIGN KEY (lang) REFERENCES Language(id),
	FOREIGN KEY (last_commit_msg) REFERENCES Commit_table(id)
)
SQL

db.execute(create_lang_table)
db.execute(create_commit_table)
db.execute(create_board_table)

def insert_value(db,arr)
	unique_id = arr[0]
	fname = arr[1]
	lname = arr[2]
	num_of_commits = arr[4]
	lang_id=lang_check(db,arr[3])
	commit_id=commit_id(db,arr[5],unique_id)
	db.execute("INSERT INTO board (unique_id, fname, lname, lang, num_of_commits, last_commit_msg) VALUES ( ? , ?, ?, ?, ?, ? );",[unique_id, fname, lname, lang_id, num_of_commits, commit_id])
end 


def lang_check(db,lang)
	db.execute("INSERT INTO Language(language_name) SELECT ? WHERE NOT EXISTS (SELECT 1 FROM Language WHERE language_name = ?);",[lang,lang])
	lang_id=db.execute("SELECT id FROM Language WHERE language_name = ?",[lang])
	#puts lang_id
	return lang_id
end



def commit_id(db,msg,id)
	if check_condition(db,id)
		db.execute("INSERT INTO Commit_table(commit_msg) VALUES (?)",[msg])
	end
	return db.last_insert_row_id
end

def check_condition(db,id)
	var=db.execute("SELECT *
	FROM board
	WHERE EXISTS (SELECT 1 FROM board WHERE unique_id = ? )",[id])
		if var == []
			return true
		else
			return false
		end
end

def highest_commits(db)
	highest=db.execute("SELECT * FROM board ORDER BY num_of_commits DESC;")
	puts "The highest number of commits was by #{highest[0][2]} #{highest[0][3]} of #{highest[0][5]}"
end
def lowest_commits(db)
	lowest=db.execute("SELECT * FROM board ORDER BY num_of_commits ASC;")
	puts "The lowest number of commits was by #{lowest[0][2]} #{lowest[0][3]} of #{lowest[0][5]}"
	lowest = []
end
def language_of_user(db,user_name)
	#usr_lang=[]
	l_id = db.execute("SELECT lang FROM board WHERE lname = ?",[user_name])
	usr_lang=db.execute("SELECT language_name FROM Language WHERE Language.id = ?",[l_id])
	puts "#{user_name} is currently working on #{usr_lang[0][0]}"
end
def commit_msg_usr(db,user_name)
	c_id = db.execute("SELECT last_commit_msg FROM board WHERE lname = ?",[user_name])
	usr_msg=db.execute("SELECT commit_msg FROM Commit_table WHERE Commit_table.id = ?",[c_id])
	puts "#{user_name}'s last commit message is #{usr_msg[0][0]}"
end
arr=[]
insert = false
CSV.foreach("file.csv") do	|row|
arr=row
	if check_condition(db,arr[0])
			insert_value(db,arr)
	end
end
user_input = ""
while user_input != "exit"
	
	puts "You can request for the following queries"
	puts "1.Highest number of commits "
	puts "2.Lowest number of commits"
	puts "3.The language a user is working on"
	puts "4.The last commit message of the user"
	puts "exit"

	user_input=gets.chomp
	if user_input.include?("exit")
		break
	end
	if user_input.include?("Highest")
		v=1
	end
	if user_input.include?("Lowest")
		v=2
	end
	if user_input.include?("language")
		v=3
	end
	if user_input.include?("commit")
		v=4
	end

	case v
		when 1
			highest_commits(db)
		when 2
			lowest_commits(db)
		when 3
			puts "Enter the name of the user (enter last name)"
			user_name=gets.chomp
			language_of_user(db,user_name)
		when 4
		puts "Enter the name of the user (enter last name)"
		usr_name=gets.chomp
		commit_msg_usr(db,usr_name)
	end

end
















