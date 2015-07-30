require 'spec_helper'

describe package('apache2') do
  it { should be_installed }
end

describe service('apache2') do
  it { should be_enabled }
  it { should be_running }
end

describe ppa('ondrej/php5-5.6') do
  it { should exist }
end

describe package('php5') do
  it { should be_installed }
end

describe file('/var/www/html/test.php') do
  it { should be_file }
end

describe package('mysql-server') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/mysql/my.cnf') do
  it { should be_file }
end

describe port(80) do
  it { should be_listening }
end
