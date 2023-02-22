#! /usr/bin/env ruby

require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com',443)

https.use_ssl = true

response = https.get("/")

# Fetch and parse HTML document
doc = Nokogiri::HTML(response.body)

p = doc.at('p')

puts p.content
