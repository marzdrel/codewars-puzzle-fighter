require_relative "debug.rb"

class BaseScaffold
  def self.call(*args)
    new(*args).call
  end
end

class PuzzleFighter < BaseScaffold
  def initialize(input)
    @input = input
  end

  def call
    output_format
  end

  private

  def process_input
    @input.reduce(initial_state) do |state, step|
      MainLoop.call(state, step)
    end
  end

  def initial_state
    Array.new(12, " " * 6)
  end

  def output_format
    process_input.join("\n")
  end
end

class MainLoop < BaseScaffold
  def initialize(state, step)
    self.state = state
    self.step = step
  end

  def call
    state
  end

  private

  attr_accessor :state, :step
end


class InitialRotator < BaseScaffold
  def initialize(move)
    @move = move
  end

  def call
    @move
  end
end

def puzzle_fighter(instructions)
  PuzzleFighter.call(instructions)
end
