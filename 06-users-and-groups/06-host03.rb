# Check if user exist
describe user('alice') do
  it { should exist }
  its('uid') { should eq 1201 }
  its('group') { should eq 'wheel' }
  its('shell') { should eq '/bin/bash' }
end

describe user('vincent') do
  it { should exist }
  its('uid') { should eq 1202 }
  its('group') { should eq 'wheel' }
  its('shell') { should eq '/bin/bash' }
end

describe user('sandy') do
  it { should_not exist }
end

describe user('patrick') do
  it { should_not exist }
end