class FindStreet
  require 'open-uri'
  require 'active_support'

  def self.read(csvurl)
    result = []
    web_file = open(csvurl)
      web_file.readlines.each do |line|
        words = line.split(',')
        # TODO get long lat
        result << {:eng_name => words[4].strip, :heb_name => words[3].strip, :min_range => words[1], :max_range => words[2]}
      end
    result.select{ |res|
      !res[:eng_name].empty?
    }
  end

end

csvurl = 'http://www.tel-aviv.gov.il/OnlineServices/DataTLV/Documents/%D7%98%D7%91%D7%9C%D7%AA%20%D7%A8%D7%97%D7%95%D7%91%D7%95%D7%AA%20%D7%A2%D7%99%D7%A8%D7%95%D7%A0%D7%99%D7%99%D7%9D%20%D7%AA%D7%9C-%D7%90%D7%91%D7%99%D7%91-%D7%99%D7%A4%D7%95.csv'


result = FindStreet.read(csvurl)

puts result

puts result.count

