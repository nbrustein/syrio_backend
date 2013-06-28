# -*- encoding: utf-8 -*-
#$:.push File.expand_path("../lib", __FILE__)

puts "ferret.gemspec"

Gem::Specification.new do |s|
  s.name              = "ferret"
  s.version           = "0.0.1"
  s.authors           = ["nbrustein"]
  s.email             = %q{nbrustein@gmail.com}
  s.homepage          = %q{https://github.com/nbrustein}
  s.summary           = %q{FIXME}
  s.description       = %q{FIXME}
  s.files = Dir.glob("{lib,test}/**/*") + %w[README.rdoc]
  
  s.add_dependency "activesupport", ">= 4.0.0"
  s.add_dependency "activemodel", ">= 4.0.0"
  s.add_dependency "tzinfo"
  
  # s.require_paths = ["lib"]
  # s.files = ["hbase_model", "hbase_model/base"]
end