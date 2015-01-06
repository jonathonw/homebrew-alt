# Archives: http://www.physionet.org/physiotools/archives/wfdb-10.5/
class Wfdb < Formula
  homepage 'http://www.physionet.org/physiotools/wfdb.shtml'
  url 'http://www.physionet.org/physiotools/archives/wfdb-10.5.23.tar.gz'
  sha256 '755955227caca075296d691847c25f3b6c5354ed2155f54706eb182e39d7f5be'

  def install
    system "./configure"
    system "make", "install", "WFDBROOT=${prefix}"
  end

  def test
    system "make check"
  end
end
