namespace :db do
  desc 'Clear all data from the database'
  task clear_all_data: :environment do
    ApplicationRecord.descendants.each do |model|
      puts "Deleting all records from #{model.name}..."
      model.destroy_all
    end

    puts 'All data cleared successfully!'
  end
end