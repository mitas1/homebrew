class Scip4 < Formula
  desc "SCIP Optimization Suite"
  homepage "http://scip.zib.de/"
  url "http://scip.zib.de/download/release/scipoptsuite-4.0.0.tgz"
  sha256 "087535760eae3d633e2515d942a9b22e1f16332c022be8d093372bdc68e8a661"
  version "4.0.0"

  def install
    system "make", "all", "GMP=false", "SHARED=true", "READLINE=false", "ZLIB=false"
    system "make", "test"
    system "make", "install", "GMP=false", "SHARED=true", "READLINE=false", "ZLIB=false",
        "INSTALLDIR=#{prefix}"

    bin.install
    lib.install
    include.install
  end
end
