# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Libvmaf < Formula
  desc "A Static Library of VMAF, Perceptual video quality assessment based on multi-method fusion."
  homepage "https://github.com/Netflix/vmaf"
  url "https://github.com/Netflix/vmaf/archive/v1.3.9.tar.gz"
  sha256 "c9e4fc850f66cf959a36c9603cef26c4298eec20d6c26f9482a355c5753c092d"

  def install

    cd "ptools" do
      system "make"
    end

    cd "wrapper" do
      system "make"
      system "make", "install", "INSTALL_PREFIX=#{prefix}"
    end

  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test vmaf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
