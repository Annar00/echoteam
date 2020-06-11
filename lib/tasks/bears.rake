file_route = "lib/assets/ClimateChange.csv"
record_import = Proc.new{
  count_row = 0  
  CSV.foreach(file_route,
              headers: true,
              skip_blanks: true,
              skip_lines: /^(?:,\s*)+$/) do |row|
    count_row += 1
  
    #import data from csv file
    TemperatureRecord.create!(
      recdate: row[0].to_date,
      avgtemp: row[1].to_d,
      uncertainty: row[2].to_d,
      country: row[4],
      city: row[3]
    )
    puts "Imported row #{count_row}"
  end
}
#data import from here
require 'csv'
require 'date'
namespace :bears do
  desc "Import data from ClimateChange.csv"
  task seed_climate: :environment do
    User.destroy_all
    #record_import.call
  end
end