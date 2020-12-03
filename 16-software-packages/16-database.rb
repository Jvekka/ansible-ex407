#
describe package('lsof') do
  it { should be_installed }
end

describe package('mailx') do
  it { should be_installed }
end
