#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'
require 'minitest/pride'

# Test data version:
# ab84334 Merge pull request #106 from bennn/grep-meta

class HammingTest < Minitest::Test
  def test_identical_strands
    ham = Hamming.new

    assert_equal 0, ham.compute('A', 'A')
  end

  def test_long_identical_strands
    ham = Hamming.new

    assert_equal 0, ham.compute('GGACTGA', 'GGACTGA')
  end

  def test_complete_distance_in_single_nucleotide_strands
    ham = Hamming.new

    assert_equal 1, ham.compute('A', 'G')
  end

  def test_complete_distance_in_small_strands
    ham = Hamming.new

    assert_equal 2, ham.compute('AG', 'CT')
  end

  def test_small_distance_in_small_strands
    ham = Hamming.new

    assert_equal 1, ham.compute('AT', 'CT')
  end

  def test_small_distance
    ham = Hamming.new

    assert_equal 1, ham.compute('GGACG', 'GGTCG')
  end

  def test_small_distance_in_long_strands
    ham = Hamming.new

    assert_equal 2, ham.compute('ACCAGGG', 'ACTATGG')
  end

  def test_non_unique_character_in_first_strand
    ham = Hamming.new

    assert_equal 1, ham.compute('AGA', 'AGG')
  end

  def test_non_unique_character_in_second_strand
    ham = Hamming.new

    assert_equal 1, ham.compute('AGG', 'AGA')
  end

  def test_large_distance
    ham = Hamming.new

    assert_equal 4, ham.compute('GATACA', 'GCATAA')
  end

  def test_large_distance_in_off_by_one_strand
    ham = Hamming.new

    assert_equal 9, ham.compute('GGACGGATTCTG', 'AGGACGGATTCT')
  end

  def test_empty_strands
    ham = Hamming.new

    assert_equal 0, ham.compute('', '')
  end

  def test_disallow_first_strand_longer
    ham = Hamming.new

    assert_raises(ArgumentError) { ham.compute('AATG', 'AAA') }
  end

  def test_disallow_second_strand_longer
    ham = Hamming.new

    assert_raises(ArgumentError) { ham.compute('ATA', 'AGTG') }
  end

  # Problems in exercism evolve over time,
  # as we find better ways to ask questions.
  # The version number refers to the version of the problem you solved,
  # not your solution.
  #
  # Define a constant named VERSION inside of Hamming.
  # If you are curious, read more about constants on RubyDoc:
  # http://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/constants.html
  def test_bookkeeping
    ham = Hamming.new

    assert_equal 1, Hamming::VERSION
  end
end
