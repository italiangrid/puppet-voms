require 'spec_helper'

describe 'voms::repo' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      context 'check default configuration' do
        case facts[:operatingsystem]
        when 'CentOS', 'Scientific'
          case facts[:operatingsystemmajrelease]
          when '7'
            it 'voms-stable-centos7 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-stable-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/centos7/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-centos7 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-beta-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-beta/centos7/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-nightly-centos7 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-nightly-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-nightly/centos7/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
          end
        when 'RedHat', 'AlmaLinux'
          case facts[:operatingsystemmajrelease]
          when '9'
            it 'voms-stable-redhat9 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-stable-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/redhat9/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-redhat9 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-beta-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-beta/redhat9/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-nightly-redhat9 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-nightly-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-nightly/redhat9/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
          end
        end
      end

      context 'check all installed and stable disabled' do
        let(:params) do
          {
            enabled: ['nightly', 'beta'],
          }
        end

        case facts[:operatingsystem]
        when 'CentOS', 'Scientific'
          case facts[:operatingsystemmajrelease]
          when '7'
            it 'voms-stable-centos7 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-stable-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/centos7/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-centos7 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-beta-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-beta/centos7/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-nightly-centos7 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-nightly-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-nightly/centos7/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
          end
        when 'RedHat', 'AlmaLinux'
          case facts[:operatingsystemmajrelease]
          when '9'
            it 'voms-stable-redhat9 is installed but disabled' do
              is_expected.to contain_yumrepo('voms-stable-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/redhat9/',
                enabled: 0,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-redhat9 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-beta-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-beta/redhat9/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-nightly-redhat9 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-nightly-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-nightly/redhat9/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
          end
        end
      end

      context 'check only stable installed and enabled' do
        let(:params) do
          {
            installed: ['stable'],
          }
        end

        case facts[:operatingsystem]
        when 'CentOS', 'Scientific'
          case facts[:operatingsystemmajrelease]
          when '7'
            it 'voms-stable-centos7 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-stable-centos7').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/centos7/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-centos7 is not present' do
              is_expected.not_to contain_yumrepo('voms-beta-centos7')
            end
            it 'voms-nightly-centos7 is not present' do
              is_expected.not_to contain_yumrepo('voms-nightly-centos7')
            end
          end
        when 'RedHat', 'AlmaLinux'
          case facts[:operatingsystemmajrelease]
          when '9'
            it 'voms-stable-redhat9 is installed and enabled' do
              is_expected.to contain_yumrepo('voms-stable-redhat9').with(
                ensure: 'present',
                baseurl: 'https://repo.cloud.cnaf.infn.it/repository/voms-rpm-stable/redhat9/',
                enabled: 1,
                protect: 1,
                gpgcheck: 0,
                priority: 1,
              )
            end
            it 'voms-beta-redhat9 is not present' do
              is_expected.not_to contain_yumrepo('voms-beta-redhat9')
            end
            it 'voms-nightly-redhat9 is not present' do
              is_expected.not_to contain_yumrepo('voms-nightly-redhat9')
            end
          end
        end
      end

    end
  end
end
