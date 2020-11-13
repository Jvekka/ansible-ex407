# ensure user automation exist
describe user('automation') do
  it { should exist }
end

describe package('ansible') do
  it { should be_installed }
end

# I had no idea how to escape forward slash so I used . :)
describe file('/home/automation/plays/ansible.cfg') do
  it { should exist }
  its('content') { should match (/^remote_user(.*)=(.*)automation/) }
  its('content') { should match (/^roles_path(.*)=(.*)roles/) }
  its('content') { should match (/^host_key_checking(.*)=(.*)False/) }
  its('content') { should match (/^inventory(.*)=(.*).home.automation.plays.inventory/) }
  its('content') { should match (/^forks(.*)=(.*)10/) }
  its('content') { should match (/^become=false/) }
end

describe json({ command: 'ansible-inventory -i /home/automation/plays/inventory --list'}) do
  its(['database','hosts', 0]) { should eq "host05" }
  its(['proxy','hosts', 0]) { should eq "host02" }
  its(['webservers','hosts', 0]) { should eq "host03" }
  its(['webservers','hosts', 1]) { should eq "host04" }
end
