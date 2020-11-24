# Check that crontab is created to run every hour
describe crontab.commands('date > /var/log/time.log') do
  its('hours') { should cmp '*' }
  its('minutes') { should cmp '1' }
end
