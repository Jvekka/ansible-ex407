#
describe package('haproxy') do
  it { should be_installed }
end


describe service('haproxy') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe user('haproxy') do
  it { should exist }
end

describe file('/etc/haproxy/haproxy.cfg') do
  its('content') { should include('server host03') }
  its('content') { should include('server host04') }
  its('content') { should include('balance roundrobin') }
  it { should exist }
  it { should be_file }
end