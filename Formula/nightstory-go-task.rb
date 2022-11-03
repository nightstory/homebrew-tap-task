# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NightstoryGoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nightstory/task/releases/download/v1.0.0/task_darwin_arm64.tar.gz"
      sha256 "3bbedb1f1635b01507f23887d0471b84d0d11ee9ef99d84e4e72c9014119606d"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v1.0.0/task_darwin_amd64.tar.gz"
      sha256 "559f9d0407e40df8b32281495897012ef2918009220125e7f0b9f1fd932f414f"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v1.0.0/task_linux_arm.tar.gz"
      sha256 "0af34404b6486f5bb2c957b46e233866666b4bb62d8fe17c09998534b6bf802b"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v1.0.0/task_linux_amd64.tar.gz"
      sha256 "5f63d1787127a9799b9c306dbaf1832206ffcd90ffc93882896d497000ea4ef4"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v1.0.0/task_linux_arm64.tar.gz"
      sha256 "a47edf8a746e938387db39b53fe6092500b08fe76dfe5ec1f13c58c63689ddfd"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  test do
    system "#{bin}/task", "--help"
  end
end
