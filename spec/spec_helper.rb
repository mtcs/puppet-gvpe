require 'puppetlabs_spec_helper/module_spec_helper'

fixture_path = File.expand_path(File.join(__FILE__, '..', 'fixtures'))

RSpec.configure do |c|
  c.module_path  = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
  c.default_facts = {
    :osfamily        => 'Debian',
    :lsbdistid       => 'Ubuntu',
    :operatingsystem => 'Ubuntu',
    :concat_basedir  => '/var/lib/puppet/concat',
    :hostname        => 'test_node',
    :ipaddress       => '10.0.0.1',
  }
end
