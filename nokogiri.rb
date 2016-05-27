require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open(“http://google.com”))

puts doc 
