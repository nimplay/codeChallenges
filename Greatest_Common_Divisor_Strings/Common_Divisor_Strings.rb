# Greatest Common Divisor of Strings

#For two strings s and t, we say "t divides s"
#if and only if s = t + t + t + ... + t + t
#(i.e., t is concatenated with itself one or more times).

#Given two strings str1 and str2, return the largest string x
#such that x divides both str1 and str2.


start_time = Time.now

def common_divisor_strings(str1, str2)
 if str1 + str2 != str2 + str1
   return ""
 end

 gcd = lambda do |a, b|
   while b != 0
     a, b = b, a % b
   end
   a
 end

 len1 = str1.length
 len2 = str2.length
 gcd_length = gcd.call(len1, len2)

 str1[0...gcd_length]
end

puts common_divisor_strings('ABCABC', 'ABC')

puts "--- Tiempo: #{Time.now - start_time} segundos ---"
