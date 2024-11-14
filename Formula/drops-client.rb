class drops-client < Formula
  desc 'Fetches your total LOC and commits from all your GitHub repos'
  homepage 'https://github.com/kralle333/drops-client'
  url 'https://github.com/kralle333/drops-client/archive/v0.1.2.zip'
  sha256 '670ed43252af55231203fad1150a3f9b5a917b0c758ca6ebb87c6a98cc7742e5'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', *std_cargo_args
  end

  test do
    # this test runs `drops-client --version` and checks that it starts with "drops-client "
    assert_match(/^drops-client /, shell_output("#{bin}/drops-client --version"))
  end
end
