class Bottles
  def song
    verses(99, 0)
  end

  def verse(number_of_bottles)
    case number_of_bottles
    when 0
<<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    when 1
<<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    else
<<-VERSE
#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.
Take one down and pass it around, #{number_of_bottles - 1} #{container(number_of_bottles - 1)} of beer on the wall.
VERSE
    end
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
end
