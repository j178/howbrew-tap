# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "1.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/leetgo/releases/download/v1.0-beta.5/leetgo_Darwin_arm64.tar.gz"
      sha256 "01133288b229de307c58518e19f0705a05facfdde64abc930727a21ebf6380ec"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v1.0-beta.5/leetgo_Darwin_x86_64.tar.gz"
      sha256 "d1be6c4dd71342edffdb6fed0f2574f66cd9432000af17a560a0eeafc7a54f04"

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
      url "https://github.com/j178/leetgo/releases/download/v1.0-beta.5/leetgo_Linux_arm64.tar.gz"
      sha256 "f14e36e08bdd34c96b727a90d91aa4a59d51dcf09b1e40b10aaa48a2e4f5487d"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v1.0-beta.5/leetgo_Linux_x86_64.tar.gz"
      sha256 "f0bb939ed512d42614c6cd58deb0eac6a5e4cd70a4e546e09d513221138234d1"

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
