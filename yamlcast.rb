require 'formula'

class Yamlcast < Formula
  homepage 'http://yamlcast.readthedocs.org/'
  url 'https://github.com/unnonouno/yamlcast/archive/0.1.0.tar.gz'
  head 'https://github.com/unnonouno/yamlcast.git'
  sha256 'af8e8d0cf40540238b56c87dc7b6751c77de6de00c7b9959595f889cfac1b7fd'
  version 'mavericks-0.1.0'

  depends_on 'libyaml'
  depends_on 'pficommon'
  depends_on 'pkg-config'

  def install
    if MacOS.version >= "10.9"
      ENV['CXXFLAGS'] = '-std=c++11'
    end
    system './waf', 'configure', "--prefix=#{prefix}"
    system './waf'
    system './waf', 'install'
  end
end
