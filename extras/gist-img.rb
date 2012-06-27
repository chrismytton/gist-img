# Homebrew recipe, see README for usage.
require 'formula'

class GistImg < Formula
  url 'https://github.com/hecticjeff/gist-img/zipball/v0.0.1'
  homepage 'https://github.com/hecticjeff/gist-img'
  head 'https://github.com/hecticjeff/gist-img.git'
  md5 'd98ee80e3cd3a0c0c42097210810bffc'

  depends_on 'gist'

  def install
    bin.install 'gist-img.sh' => 'gist-img'
  end
end
