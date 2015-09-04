# Homebrew recipe, see README for usage.
require 'formula'

class GistImg < Formula
  url 'https://github.com/hecticjeff/gist-img/archive/v0.0.1.zip'
  homepage 'https://github.com/hecticjeff/gist-img'
  head 'https://github.com/hecticjeff/gist-img.git'
  sha256 '6d3b95fe70d5a03b3e3cd52d92fb2f9f1e2ba28cf105d20bbaefc017f43c46f3'

  depends_on 'gist'

  def install
    bin.install 'gist-img.sh' => 'gist-img'
  end
end
