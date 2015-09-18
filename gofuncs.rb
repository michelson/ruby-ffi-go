require 'rubygems'
require 'bundler/setup'

require 'fiddle'
require 'fiddle/import'

require 'ffi'

require 'pry'



#module Gofuncs  
#  extend Fiddle::Importer
#  dlload "./gofuncs.so"
#  extern "int GoAdd(int, int)"
#  extern "string CreatePerson(char, char, int)"
#end 

module Gofuncs
  extend FFI::Library
  ffi_lib "./gofuncs.so" #File.expand_path("./gofuncs.so", File.dirname(__FILE__))
  attach_function :GoAdd, [:int, :int], :int
  attach_function :CreatePerson, [:string, :string, :int], :string
end 