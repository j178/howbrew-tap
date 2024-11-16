# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Leetgo < Formula
  desc "leetgo is a command line tool for leetcode.com. It can help you to login, submit, test, and view your submissions."
  homepage "https://github.com/j178/leetgo"
  version "1.4.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/j178/leetgo/releases/download/v1.4.11/leetgo_macOS_x86_64.tar.gz"
      sha256 "71f29a6c772e270e6177c3982e9810a598d8ec5084b3499828f8123816385e3a"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
    on_arm do
      url "https://github.com/j178/leetgo/releases/download/v1.4.11/leetgo_macOS_arm64.tar.gz"
      sha256 "b00c4110d6ee7ee24712a12c1283c6edfb857c6fe8c94f2053c7ffad33ff6cf1"

      def install
        bin.install "leetgo"
        bash_completion.install "completions/leetgo.bash" => "leetgo"
        zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
        fish_completion.install "completions/leetgo.fish"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/j178/leetgo/releases/download/v1.4.11/leetgo_linux_x86_64.tar.gz"
        sha256 "0da63d7bdbe3ee25690307d6d6209e501cfac35d716fddec6faa5dd05eb9fbd9"

        def install
          bin.install "leetgo"
          bash_completion.install "completions/leetgo.bash" => "leetgo"
          zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
          fish_completion.install "completions/leetgo.fish"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/j178/leetgo/releases/download/v1.4.11/leetgo_linux_arm64.tar.gz"
        sha256 "aae816dae8eafe1f09d85e7a42d0b7206c41d98f8893d7596c0c3c8f7877a8d6"

        def install
          bin.install "leetgo"
          bash_completion.install "completions/leetgo.bash" => "leetgo"
          zsh_completion.install "completions/leetgo.zsh" => "_leetgo"
          fish_completion.install "completions/leetgo.fish"
        end
      end
    end
  end

  test do
    system "#{bin}/leetgo", "-v"
  end
end
