def caesar_encode(str,num)
  ans = []
  n = num%26
  str.split('').each do |l|
    if l.ord > 64 && l.ord < 91
      val = l.ord + n
      if val > 90
        val = (val - 90) + 64
      end
    elsif l.ord > 96 && l.ord < 123
      val = l.ord + n
      if val > 122
        val = (val - 122) + 96
      end
    else
      val = l.ord
    end
    ans << val.chr
  end
  ans.join
end

def caesar_decode(str,num)
  ans = []
  n = num%26
  str.split('').each do |l|
    if l.ord > 64 && l.ord < 91
      val = l.ord - n
      if val < 65
        val = 91 - (65 - val)
      end
    elsif l.ord > 96 && l.ord < 123
      val = l.ord - n
      if val < 97
        val = 123 - (97 - val)
      end
    else
      val = l.ord
    end
    ans << val.chr
  end
  ans.join
end

#capital letters is 65 - 90
#lowercase is 97 - 122
