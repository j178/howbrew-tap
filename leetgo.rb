# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "0.2.0-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/leetgo/releases/download/v0.2.0-beta/leetgo_Darwin_arm64.tar.gz"
      sha256 "5b1f6fe8dbcbfa61cd7de5faf08d3aa1ea836f42592f9c5eda46fdacc10e52bf"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.2.0-beta/leetgo_Darwin_x86_64.tar.gz"
      sha256 "b54729c8c1b2c702ae43a742510f3484bb83a6ddc7bb2c42d6f0f4c57c21e180"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/j178/leetgo/releases/download/v0.2.0-beta/leetgo_Linux_arm64.tar.gz"
      sha256 "23fbadbac3d125e78737398139d68a9ff227d6cd310f5178d37fd1adb4429e31"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.2.0-beta/leetgo_Linux_x86_64.tar.gz"
      sha256 "34ba42dc34b698c23e2e13a63087a963ab40aacdc210df04ebe25241df79226a"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end

  test do
    system "#{bin}/leetgo", "-v"
  end
end
