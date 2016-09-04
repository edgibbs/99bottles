class Bottles
  def verse(number_of_bottles)
    if number_of_bottles == 0
<<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    else
<<-VERSE
#{number_of_bottles} #{bottle_pluralization(number_of_bottles)} of beer on the wall, #{number_of_bottles} #{bottle_pluralization(number_of_bottles)} of beer.
Take #{after_pass_first(number_of_bottles - 1)} down and pass it around,#{after_pass(number_of_bottles - 1)}#{bottle_pluralization(number_of_bottles - 1)} of beer on the wall.
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

  def after_pass_first(number)
    if number == 0
      "it"
    else
      "one"
    end
  end

  def after_pass(number)
    if number == 0
      " "
    else
      " #{number} "
    end
  end

  def bottle_pluralization(number)
    case number
    when 1 then "bottle"
    when 0 then "no more bottles"
    else "bottles"
    end
  end
end
