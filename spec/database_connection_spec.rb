require 'pg'
require 'database_connection'
require 'set_up_test_db'

feature 'database connection' do
  it 'connects to the database successfully' do 
    connection = PG.connect(dbname: 'reminders_test')
    connection.exec("INSERT INTO tasks (description) VALUES ('Walk the dog');")
    result = connection.exec('SELECT * FROM tasks;')
    result.map { |value| {"id" => value['id'], "description" => value['description'] } }
    expect(result[0]["description"]).to eq "Walk the dog"
  end 
end
