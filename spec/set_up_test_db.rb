require 'pg'

def setup_test_database
  connection = PG.connect(dbname: 'reminders_test')
  connection.exec("TRUNCATE tasks;")
end
