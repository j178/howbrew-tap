# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Chatgpt < Formula
  desc "A simple cli wrapper for ChatGPT API, powered by GPT-3.5-turbo model."
  homepage "https://github.com/j178/chatgpt"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v0.5.0/chatgpt_Darwin_x86_64.tar.gz"
      sha256 "5a22f7694c385930b551ece24e9a920f0aabc44a4099fd7b3c57f57371e340d8"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/j178/chatgpt/releases/download/v0.5.0/chatgpt_Darwin_arm64.tar.gz"
      sha256 "65d13cb243e9743228e7f3b93e75baf0a557318e541b8475b5a6915222ffcf55"

      def install
        bin.install "chatgpt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/j178/chatgpt/releases/download/v0.5.0/chatgpt_Linux_arm64.tar.gz"
      sha256 "20dd802fcb9b9adfa78c702909ea09cc48fe1fd86e32751f26f6bc48c9c14d6f"

      def install
        bin.install "chatgpt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/j178/chatgpt/releases/download/v0.5.0/chatgpt_Linux_x86_64.tar.gz"
      sha256 "7c7bc42f48050dbc01fda0101a65bada574b4c8166b320c535991f9c771243c3"

      def install
        bin.install "chatgpt"
      end
    end
  end
end
