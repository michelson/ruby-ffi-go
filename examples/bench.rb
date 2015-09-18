require File.expand_path("../gofuncs.rb", File.dirname(__FILE__))
require 'benchmark'

Benchmark.bmbm do |r|
  
  r.report("Ruby Add") do 
    100.times do 
      1 + 3
    end
  end

  r.report("Go add") do 
    100.times do 
      Gofuncs.GoAdd(1,3)
    end
  end

  r.report("Names") do
    Gofuncs.CreatePerson("Miguel", "Michelson", 3)
  end
end