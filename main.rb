require 'nokogiri'
require 'open-uri'
require 'byebug'

url = 'https://www.nasa.gov/press-release/nasa-industry-to-collaborate-on-space-communications-by-2025'

html_file = URI.open(url) { |result| result.read }

document = Nokogiri::HTML.parse(html_file)

p document