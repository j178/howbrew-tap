# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "0.1.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/leetgo/releases/download/v0.1.0-beta.1/leetgo_Darwin_arm64.tar.gz"
      sha256 "ca3e5f62cf85d56c772211a1f81e0c0309b8c1b3468f617fb0ebb7905947b10b"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.1.0-beta.1/leetgo_Darwin_x86_64.tar.gz"
      sha256 "14dc1abc932663da06f4b82d5454e9d83cb8d77785ad1b5aa568d16585c9ab2b"

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
      url "https://github.com/j178/leetgo/releases/download/v0.1.0-beta.1/leetgo_Linux_arm64.tar.gz"
      sha256 "e797ea649dae3bcce0b2c1dc138258ac0b2208b40b5d70203c49dfba169dcdd2"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.1.0-beta.1/leetgo_Linux_x86_64.tar.gz"
      sha256 "a8f973641eb8001d7ac598e31fea2049fd06fbc77131a67a00e40c16aa5ac227"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end
end
