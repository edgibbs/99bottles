class Bottles
  def song
    verses(99, 0)
  end

  def verse(number_of_bottles)
<<-VERSE
#{quantity(number_of_bottles).capitalize} #{container(number_of_bottles)} of beer on the wall, #{quantity(number_of_bottles)} #{container(number_of_bottles)} of beer.
#{action(number_of_bottles)}, #{quantity(successor(number_of_bottles))} #{container(successor(number_of_bottles))} of beer on the wall.
VERSE
  end

  def verses(first, last)
    result = []
    (first).downto(last).each do |bottle|
      result << verse(bottle)
    end
    result.join("\n")
  end

  private

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end
end
