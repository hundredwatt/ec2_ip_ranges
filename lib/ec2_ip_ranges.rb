require "ec2_ip_ranges/version"
require "ipaddr"

module Ec2IpRanges
  RAW_DATA = File.read(File.expand_path('../../data/amazon_ec2_public_ip_ranges.txt', __FILE__)).split("\n")

  def self.ec2_ip?(ip_address_string)
    test_ip = IPAddr.new(ip_address_string)

    address_ranges.select{ |range| range === test_ip }.any?
  end

  def self.address_ranges
    @@address_ranges ||= RAW_DATA.map { |i| IPAddr.new(i) }
  end
end
