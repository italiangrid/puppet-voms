require 'spec_helper'

describe 'voms::vo' do
  on_supported_os.each do |os, facts|
    context "on #{os}" do
      let(:facts) do
        facts
      end

      let(:title) { 'test' }

      let(:params) do
        {
          'servers' => [
            {
              'server' => 'server.org',
              'port'   => 1234,
              'dn'     => '/O=example/CN=user',
              'ca_dn'  => '/O=example/CN=ca',
            },
          ]
        }
      end

      it 'check vomses file exists' do
        vomses_file = '/etc/vomses/test-server.org'
        is_expected.to contain_file(vomses_file).with(
          content: "\"test\" \"server.org\" \"1234\" \"/O=example/CN=user\" \"test\" \"24\"",
        )
      end

      it 'check lsc file exists' do
        lsc_file = '/etc/grid-security/vomsdir/test/server.org.lsc'
        is_expected.to contain_file(lsc_file).with(
          content: "/O=example/CN=user\n/O=example/CN=ca",
        )
      end
    end
  end
end
