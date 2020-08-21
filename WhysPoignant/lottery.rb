#!/usr/bin/env ruby

class LotteryTicket
  NUMERIC_RANGE = (1..25).freeze

  attr_reader :picks, :purchased

  def initialize(*picks)
    if picks.length != 3
      raise ArgumentError, 'three numbers must be picked'
    elsif picks.uniq.length != 3
      raise ArgumentError, 'the three picks must be different numbers'
    elsif picks.detect { |p| !p.is_a?(NUMERIC_RANGE) }
      raise ArgumentError, 'the three picks must be numbers between 1 and 25'
    end

    @picks = picks
    @purchased = Time.now
  end
end
