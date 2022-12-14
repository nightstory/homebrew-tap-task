# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class NightstoryGoTask < Formula
  desc "Task runner / simpler Make alternative written in Go"
  homepage "https://taskfile.dev"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v0.0.1/task_darwin_amd64.tar.gz"
      sha256 "c538d8783e91fa504672a5289382973968cd2043ce90316cdbeb3263124d4e8a"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nightstory/task/releases/download/v0.0.1/task_darwin_arm64.tar.gz"
      sha256 "a84b4b354ea378befff12ec6d9739164a6f4962d5b758958e2b98a90fc69baa2"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v0.0.1/task_linux_arm64.tar.gz"
      sha256 "6a3e317ad0bc84c84c4b02f98feef7835d3f25e33b9a7098976bfe42592b53c5"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/nightstory/task/releases/download/v0.0.1/task_linux_arm.tar.gz"
      sha256 "91e6cd1fea12982be190e4d939d9ca4873f94d85af4dbb22e80d060bb2e0a102"

      def install
        bin.install "task"
        bash_completion.install "completion/bash/task.bash" => "task"
        zsh_completion.install "completion/zsh/_task" => "_task"
        fish_completion.install "completion/fish/task.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nightstory/task/releases/download/v0.0.1/task_linux_amd64.tar.gz"
      sha256 "d86362ad6b82f44b6a2500a55cd3a82fc95dfd5a422c853143a0ee351d04bdf9"

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
