require 'formula'

class Yamlcast < Formula
  homepage 'http://yamlcast.readthedocs.org/'
  url 'https://github.com/unnonouno/yamlcast/archive/master.tar.gz'
  head 'https://github.com/unnonouno/yamlcast.git'
  sha1 'b3be97c0a87ae8cf79228d751e4a36bdee4013af'
  version 'mavericks-2015219'

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
