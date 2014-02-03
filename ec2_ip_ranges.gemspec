# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ec2_ip_ranges/version'

Gem::Specification.new do |spec|
  spec.name          = "ec2_ip_ranges"
  spec.version       = Ec2IpRanges::VERSION
  spec.authors       = ["Jason Nochlin"]
  spec.email         = ["hundredwatt@gmail.com"]
  spec.summary       = %q{Check if an IP Address belongs to the Public IP Address Ranges for Amazon EC2}
  spec.description   = %q{Check if an IP Address belongs to the Public IP Address Ranges for Amazon EC2}
  spec.homepage      = "https://github.com/hundredwatt/ec2_ip_ranges"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
