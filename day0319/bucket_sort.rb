a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]

# def bucket_sort(arr)
#   bucket = [[],[],[],[],[],[],[],[],[],[]]
#   ans = []
#   arr.each {|elm| bucket[elm].push(elm)}
#   bucket.each { |elm| elm.each { |elm2| ans.push(elm2)}}
#   return ans
# end

def bucket_sort(arr)
  bucket,ans = [],[]
  (arr.max+1).times{ bucket.push([]) }
  arr.each {|elm| bucket[elm].push(elm)}
  buckets.each { |elm| ans += elm }
  ans
end

p bucket_sort(a)
p bucket_sort(b)
p bucket_sort(c)

# 下記の出力値が出力されればOK
# => [0, 1, 1, 2, 2, 3, 4, 5, 6, 7, 7, 8, 8]
# => [0, 1, 1, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 7, 7, 8, 8, 9, 9]
# => [0, 1, 2, 4, 4, 5, 7, 8, 8, 9]