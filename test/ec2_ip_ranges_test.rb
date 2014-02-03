require 'test_helper'

class TestEc2IpRanges < Minitest::Test
  def test_ip_address_not_in_ec2
    assert_equal Ec2IpRanges.ec2_ip?('127.0.0.1'), false
  end

  def test_ip_address_in_ec2
    assert_equal Ec2IpRanges.ec2_ip?('67.202.0.0'), true
  end
end
