# 
describe file('/etc/server_list.txt') do
  it { should exist }
end