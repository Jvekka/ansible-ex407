# Check if the partition is created
describe filesystem('/dev/sdb') do
  its('size_kb') { should be >= 1048576 }
  its('type') { should cmp 'xfs' }
end

describe filesystem('/dev/sdb1') do
  its('size_kb') { should be >= 818176 }
  its('type') { should cmp 'xfs' }
end

# Not working yet