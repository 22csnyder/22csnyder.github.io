direc = File.dirname(__FILE__)

require 'rubygems'
require "#{direc}/../lib/ruby"
require 'bacon'

puts "Testing ruby version #{Ruby::VERSION}..." 
puts "Ruby version: #{RUBY_VERSION}"

describe Ruby do
end

