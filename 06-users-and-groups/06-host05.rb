# Check if user exist
describe user('sandy') do
  it { should exist }
  its('uid') { should eq 2201 }
  its('group') { should eq 'wheel' }
  its('shell') { should eq '/bin/bash' }
end

describe user('patrick') do
  it { should exist }
  its('uid') { should eq 2202 }
  its('group') { should eq 'wheel' }
  its('shell') { should eq '/bin/bash' }
end

describe user('alice') do
  it { should_not exist }
end

describe user('vincent') do
  it { should_not exist }
end