SPEC_DIR = File.dirname(__FILE__)
lib_path = File.expand_path("#{SPEC_DIR}/../lib")
$LOAD_PATH.unshift lib_path unless $LOAD_PATH.include?(lib_path)

require 'rubygems'
require 'bundler/setup'

require 'bumpy'

module SpecHelpers
end

RSpec.configure do |conf|
  conf.include SpecHelpers
end
