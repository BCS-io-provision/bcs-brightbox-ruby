require 'serverspec'

set :backend, :exec

describe 'bcs_ruby::default' do
  describe 'ruby development environment installed' do
    %w(autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev
       zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev).each do |pack|
      describe package(pack) do
        it { should be_installed }
      end
    end
  end

  describe command('ruby -v') do
    its(:stdout) { should match(/ruby 2.2/) }
  end
end
