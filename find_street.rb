class FindStreet
  require 'open-uri'
  require 'net/http'
  require 'rubygems'
  require 'csv'
  #uri = URI('http://gisn.tel-aviv.gov.il/ws_iriya_zmina/wsgis.asmx/GetGeoFromAddress')
  #file = open('streets.txt') { |f| f.read }


  #def self.ready(url)
  #  CSV.new(open(url), :headers => :first_row, col_sep: ",", encoding: "UTF-8").each do |line|
  #    puts line
  #    puts line[0]
  #    puts line['FEB11']
  #  end
  #end

  def self.read(csvurl)
    web_file = open(csvurl)
    #web_file.read.encode!("UTF-8", "iso-8859-1", :invalid => :replace)
    puts web_file.size
    CSV.parse(web_file) do |row|
      puts row
    end
  end
  #  line = f.readlines.sample
  #  print line
  #
  #  words = line.split(',')
  #
  #  #res = Net::HTTP.post_form(uri, 'astrk_rechov' => words[0], 'astrms_bayit' => words[1], "max" => "50")
  #  #res.printf()
  #
  #  #print "\n\n"
  #  #print "street ", words[4], " from ", words[1], " to ", words[2], "\n"
  #  #print "long\lat: ", res
  #}



end

csvurl = 'http://www.tel-aviv.gov.il/OnlineServices/DataTLV/Documents/%D7%98%D7%91%D7%9C%D7%AA%20%D7%A8%D7%97%D7%95%D7%91%D7%95%D7%AA%20%D7%A2%D7%99%D7%A8%D7%95%D7%A0%D7%99%D7%99%D7%9D%20%D7%AA%D7%9C-%D7%90%D7%91%D7%99%D7%91-%D7%99%D7%A4%D7%95.csv'


FindStreet.read(csvurl)