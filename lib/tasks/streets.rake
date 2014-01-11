namespace :streets do
  desc 'load items from remote TLV csv and add them to the database'
  task :import => :environment do |task|
    url = 'http://www.tel-aviv.gov.il/OnlineServices/DataTLV/Documents/%D7%98%D7%91%D7%9C%D7%AA%20%D7%A8%D7%97%D7%95%D7%91%D7%95%D7%AA%20%D7%A2%D7%99%D7%A8%D7%95%D7%A0%D7%99%D7%99%D7%9D%20%D7%AA%D7%9C-%D7%90%D7%91%D7%99%D7%91-%D7%99%D7%A4%D7%95.csv'
    results = FindStreet.read(url)
    puts 'Loaded CSV'
    results.each do |result|
      Street.create!(result)
    end
    puts 'Finished importing to DB'
  end
end