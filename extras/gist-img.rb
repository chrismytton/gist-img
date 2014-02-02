# Homebrew recipe, see README for usage.
require 'formula'

class GistImg < Formula
  url 'https://github.com/hecticjeff/gist-img/archive/v0.0.1.zip'
  homepage 'https://github.com/hecticjeff/gist-img'
  head 'https://github.com/hecticjeff/gist-img.git'
  sha256 '168213f91284e740356a0df55ff6f6c203b128f95d5662124e1b53113c1625bf'

  depends_on 'gist'

  def install
    bin.install 'gist-img.sh' => 'gist-img'
  end
end
