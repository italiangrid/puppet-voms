require 'spec_helper'

describe 'voms::repo' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      let(:title) { 'stable' }

      case facts[:operatingsystemmajrelease]
      when '6'
        it {
          is_expected.to contain_yumrepo('voms-stable-centos6').with(
            enabled: 1,
          )
        }
      when '7'
        it {
          is_expected.to contain_yumrepo('voms-stable-centos7').with(
            enabled: 1,
          )
        }
      end
    end
  end
end
