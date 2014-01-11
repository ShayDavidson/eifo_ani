class FindStreet
  require 'open-uri'

  def self.decode_string(string)
    string.encode("UTF-8", "ISO-8859-15").strip
  end

  def self.read(csvurl)
    result = []
    web_file = open(csvurl)
      web_file.readlines.each do |line|
        words = line.split(',')
        # TODO get long lat
        result << {:remote_id => decode_string(words[0]), :eng_name => decode_string(words[4]), :heb_name => decode_string(words[3]), :min_range => words[1].to_i, :max_range => words[2].to_i}
      end
    result.select{ |res|
      !res[:eng_name].empty?
    }
  end

end
