class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/Estivador/tgenv"
  url "https://github.com/Estivador/tgenv/archive/v0.0.9.tar.gz"
  sha256 "76a2ebe6bed0b0ea64cba4619875a5e0e9064066e295a36b224e9ff4554e0799"
  head "https://github.com/Estivador/tgenv.git"

  bottle :unneeded

  conflicts_with "terragrunt", :because => "tgenv symlinks terragrunt binaries"

  def install
    prefix.install ["bin", "libexec"]
  end

  test do
    system bin/"tgenv", "list-remote"
  end
end
