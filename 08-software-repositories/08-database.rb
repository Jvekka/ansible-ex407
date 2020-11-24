# Check that YUM repository exists
describe yum.repo('mysql56-community') do
  it { should exist }
  it { should be_enabled }
  its('baseurl') { should include 'http://repo.mysql.com/yum/mysql-5.6-community/el/7/x86_64/' }
end
