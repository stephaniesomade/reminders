require_relative '.lib/database_connection.rb'

if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('reminders_test')
else
  DatabaseConnection.setup('reminders')
end
