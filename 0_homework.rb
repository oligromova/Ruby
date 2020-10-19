# 1. Fixnum(Integer)
a.next or a.a.succ
a.zero
a.abs or a.magnitude
# 2. Float
a.floor
a.divmod(x)
# 3. String
a.downcase!
a.next
a.strip!
# 4. Array
a.delete(x)
a.shuffle
["r", "u", "b", "y"].join
# 5. Hash
h.has_key?("key")
h.merge(h1, h2)
# 6. Range
(1..100).max
# 7. 
results = [10, 2, 5, 12, 11, 11, 4]
for sum in results
    puts "Index #{results.index(sum).next}: Value #{sum}\n"
end