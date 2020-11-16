# Check that variables exist with vault
describe file('/home/automation/plays/secret.yml') do
  it { should exist }
  its('content') { should match (/^user_password: !vault/) }
  its('content') { should match (/^database_password: !vault/) }
end

describe file('/home/automation/plays/vault_key') do
  it { should exist }
  its('content') { should match (/^devops/) }
end
