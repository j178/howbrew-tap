# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chatgpt < Formula
  desc "A simple cli wrapper for ChatGPT API, powered by GPT-3.5-turbo model."
  homepage "https://github.com/j178/chatgpt"
  version "1.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.3/chatgpt_Darwin_x86_64.tar.gz"
      sha256 "7dae5e1aa37b1d56124469165f5f8db3a625cceed817dc88d6bf924b98852c0f"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.3/chatgpt_Darwin_arm64.tar.gz"
      sha256 "23da2ac15832acb7c27f5f6af0c57923a64a59d1a3fb1ac9816dc5267b6dda4c"

      def install
        bin.install "chatgpt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.3/chatgpt_Linux_arm64.tar.gz"
      sha256 "7f1e7ca8239cb433bddf9de30253848bdae9ceb93647398d448fe352704bf972"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v1.3.3/chatgpt_Linux_x86_64.tar.gz"
      sha256 "0d915f6d9d532f164c6a717d912a339cf027fcdfc455b4cbbe00e1b65de0c150"

      def install
        bin.install "chatgpt"
      end
    end
  end
end
