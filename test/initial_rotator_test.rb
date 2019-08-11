require "test/unit"
require_relative "../src/app.rb"

class InitialRotatorTest < Test::Unit::TestCase
  def test_raises_error_on_invalid_move
    assert_raise ArgumentError do
      InitialRotator.call(["BR", "LLLX"])
    end
  end

  def test_moves_the_block_to_initial_location_1
    assert_equal(
      InitialRotator.call(["BR", "LLL"]),
      ["B     ", "R     "],
    )
  end

  def test_moves_the_block_to_initial_location_2
    assert_equal(
      InitialRotator.call(["BG", "ALL"]),
      ["GB    ", "      "],
    )
  end

  def test_moves_the_block_to_initial_location_3
    assert_equal(
      InitialRotator.call(["BY", "BRR"]),
      ["    BY", "      "],
    )
  end

  def test_moves_the_block_to_initial_location_4
    assert_equal(
      InitialRotator.call(["BB", "AALLL"]),
      ["B     ", "B     "],
    )
  end

  def test_moves_the_block_to_initial_location_5
    assert_equal(
      InitialRotator.call(["YR", ""]),
      ["   Y  ", "   R  "],
    )
  end

  def test_moves_the_block_to_initial_location_6
    pend

    assert_equal(
      InitialRotator.call(["BG", "BBRR"]),
      ["     G", "     B"],
    )
  end

  def test_moves_the_block_to_initial_location_7
    pend

    assert_equal(
      InitialRotator.call(["RR", "BBBBLLL"]),
      ["R     ", "R     "],
    )
  end

  def test_moves_the_block_to_initial_location_8
    pend

    assert_equal(
      InitialRotator.call(["YG", "BBBALL"]),
      [" G    ", " Y    "],
    )
  end

  def test_moves_the_block_to_initial_location_9
    assert_equal(
      InitialRotator.call(["BR", "L"]),
      ["  B   ", "  R   "],
    )
  end

  def test_moves_the_block_to_initial_location_10
    assert_equal(
      InitialRotator.call(["BR", "LLLLL"]),
      ["B     ", "R     "],
    )
  end

  def test_moves_the_block_to_initial_location_11
    assert_equal(
      InitialRotator.call(["BR", "R"]),
      ["    B ", "    R "],
    )
  end

  def test_moves_the_block_to_initial_location_12
    assert_equal(
      InitialRotator.call(["BR", "RRRRRR"]),
      ["     B", "     R"],
    )
  end

  def test_moves_the_block_to_initial_location_13
    assert_equal(
      InitialRotator.call(["BR", "LLLLLLRRRRR"]),
      ["     B", "     R"],
    )
  end

  def test_moves_the_block_to_initial_location_14
    assert_equal(
      InitialRotator.call(["BR", "LRLRLRLRLR"]),
      ["   B  ", "   R  "],
    )
  end

  def test_rotates_the_block_clockwise_1
    assert_equal(
      InitialRotator.call(["BR", "A"]),
      ["  RB  ", "      "],
    )
  end

  def test_rotates_the_block_clockwise_2
    assert_equal(
      InitialRotator.call(["BR", "AA"]),
      ["   R  ", "   B  "],
    )
  end

  def test_rotates_the_block_clockwise_3
    assert_equal(
      InitialRotator.call(["BR", "AAA"]),
      ["   BR ", "      "],
    )
  end

  def test_rotates_the_block_clockwise_4
    assert_equal(
      InitialRotator.call(["BR", "AAAA"]),
      ["   B  ", "   R  "],
    )
  end

  def test_rotates_the_block_clockwise_5
    assert_equal(
      InitialRotator.call(["BR", "AAAAAAA"]),
      ["   BR ", "      "],
    )
  end

  def test_rotates_the_block_clockwise_6
    assert_equal(
      InitialRotator.call(["BR", "AAAAAAAA"]),
      ["   B  ", "   R  "],
    )
  end

  def test_rotates_the_block_anticlockwise_1
    assert_equal(
      InitialRotator.call(["BR", "B"]),
      ["   BR ", "      "],
    )
  end
end
