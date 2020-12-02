#
describe file('/mnt/mysql_backups/database_list.txt') do
  its('content') { should match(/dev,test,qa,prod/) }
end

describe file('/mnt/mysql_backups/archive.gz') do
  it { should exist }
end
