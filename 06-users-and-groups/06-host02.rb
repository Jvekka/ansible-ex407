# Check if user exist
describe user('alice') do
  it { should_not exist }
end

describe user('vincent') do
  it { should_not exist }
end

describe user('sandy') do
  it { should_not exist }
end

describe user('patrick') do
  it { should_not exist }
end