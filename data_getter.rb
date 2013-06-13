require 'rubygems'
require 'nokogiri'
require 'open-uri'


 File.open('scrapped2.txt', 'w') do |f|
      page = Nokogiri::HTML(open("http://www.interestingfacts.net/"))
      #results = page.css("#middle table.adcontent.tblClpsePad table.viewad_frame_tbl #attributeTable td").text
      #results = page.css(".postcontent ol").first
       results = page.css(".postcontent ol li")
       results.each do |whatever|
        what = (whatever.text + "\n")
        f.write(what)
      end
end
