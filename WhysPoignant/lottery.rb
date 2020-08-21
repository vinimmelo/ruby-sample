#!/usr/bin/env ruby

# Lottery Ticket
class LotteryTicket
  NUMERIC_RANGE = (1..25).freeze

  attr_reader :picks, :purchased

  def initialize(*picks)
    if picks.length != 3
      raise ArgumentError, 'three numbers must be picked'
    elsif picks.uniq.length != 3
      raise ArgumentError, 'the three picks must be different numbers'
    elsif picks.detect { |p| not NUMERIC_RANGE === p }
      raise ArgumentError, 'the three picks must be numbers between 1 and 25'
    end

    @picks = picks
    @purchased = Time.now
  end

  def self.new_random
    new(rand(1..25), rand(1..25), rand(1..25))
  rescue ArgumentError
    retry
  end

  def score(final)
    count = 0
    final.picks.each do |note|
      count += 1 if picks.include? note
    end
    count
  end
end

# Lottery Draw
class LotteryDraw
  @@tickets = {}
  def self.buy(customer, *tickets)
    unless @@tickets.has_key?(customer)
      @@tickets[customer] = []
    end
    @@tickets[customer] += tickets
  end
end
