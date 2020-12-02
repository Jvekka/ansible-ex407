#
describe firewalld do
  it { should be_running }
  it { should have_port_enabled_in_zone('80/tcp', 'public') }
  it { should have_port_enabled_in_zone('443/tcp', 'public') }
end

describe package('httpd') do
  it { should be_installed }
end

describe package('mod_ssl') do
  it { should be_installed }
end

describe package('php') do
  it { should be_installed }
end

describe file('/var/www/html/index.html') do
  its('content') { should match(/The address of the server is:/) }
end

describe service('httpd') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

# curl http://host03/