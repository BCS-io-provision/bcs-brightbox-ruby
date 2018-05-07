require 'serverspec'
set :backend, :exec

describe 'bcs_ruby::default' do
  describe 'ruby development environment installed' do
    dependencies = %w[autoconf
                      bison
                      build-essential
                      libssl-dev
                      libyaml-dev
                      zlib1g-dev
                      libncurses5-dev
                      libffi-dev
                      libgdbm-dev]

    if os[:release] == '14.04' || os[:release] == '16.04'
      dependencies.push('libgdbm3')
                  .push('libreadline6-dev')
    elsif os[:release] >= '18.04'
      dependencies.push('libgdbm5')
                  .push('libreadline-dev')
    end

    dependencies.each do |pack|
      describe package(pack) do
        it { should be_installed }
      end
    end
  end

  describe command('ruby -v') do
    if os[:release] == '14.04' || os[:release] == '16.04'
      its(:stdout) { should match(/ruby 2.3/) }
    elsif os[:release] >= '18.04'
      its(:stdout) { should match(/ruby 2.5/) }
    end
  end
end
