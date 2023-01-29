# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "0.1.6-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/leetgo/releases/download/v0.1.6-beta.2/leetgo_Darwin_arm64.tar.gz"
      sha256 "7af18170ba6e8736fc09ac3e32dda48b6de3d1476b18bdff60980ff7c7925a5f"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.1.6-beta.2/leetgo_Darwin_x86_64.tar.gz"
      sha256 "1e939732280e6fd8857a80eea2b6116a5e0e6f458d0c209e25fa991d91bf5f97"

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
      url "https://github.com/j178/leetgo/releases/download/v0.1.6-beta.2/leetgo_Linux_arm64.tar.gz"
      sha256 "043af55c6c5f4eb0a52789604b71f86a9abb1178f5d484b8f8a2745bd0d16a40"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v0.1.6-beta.2/leetgo_Linux_x86_64.tar.gz"
      sha256 "550017f0a6ad26dec074cdaa2289e6c3c985bf45dbf958dcea861395f6ab771f"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end
end
