# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "1.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/j178/leetgo/releases/download/v1.3.10/leetgo_macOS_arm64.tar.gz"
      sha256 "288db6e25e9d6410fa885bd9fdbc8fe16bc63d69c85a77d8b052d6ba87239f14"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v1.3.10/leetgo_macOS_x86_64.tar.gz"
      sha256 "ee660fe088cbca10c548457b6a67871d4f4b82a425e94cbbcdcb3a305e822b18"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/j178/leetgo/releases/download/v1.3.10/leetgo_linux_x86_64.tar.gz"
      sha256 "b603c30f8c2ec7468f756bd106fbc5a570517ba4eaf5da229d789dfa7035a610"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/j178/leetgo/releases/download/v1.3.10/leetgo_linux_arm64.tar.gz"
      sha256 "c5df45b8aeacf0098ea1baf44ef282f0db5a7d38c5ee6f39a739291091cffbbc"

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
