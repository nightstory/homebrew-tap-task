# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NightstoryGoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v1.0.2/task_darwin_amd64.tar.gz"
      sha256 "4c083e1f4956e99a5beb4d3b210438a20cc6823d88b10cd05cb3fb6554ca0726"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nightstory/task/releases/download/v1.0.2/task_darwin_arm64.tar.gz"
      sha256 "7831f64b2ec97ca08e56c8c7638fe3f2ee1956007c6974b8e6f4897c5907ef97"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v1.0.2/task_linux_amd64.tar.gz"
      sha256 "905cfe8dde571545e841f4ef0cc29d17de35955b926f65b385f5033f4d213c2d"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v1.0.2/task_linux_arm.tar.gz"
      sha256 "764174a6278057828222f009e11adc12524f55e8cb90457f4d8401984e82fb6e"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v1.0.2/task_linux_arm64.tar.gz"
      sha256 "f9105ec2aeed2376978c1c8bd192c72151fae69a9e991c7fc070b63cd5a7544e"

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
