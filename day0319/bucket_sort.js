a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]

function bucket_sort(arr){
  bucket = []
  ans = []
  max = arr.reduce((acc,cur)=>{
    return acc < cur? acc=cur : acc;
  },0)
  for(i = 0; i < max+1; i++){
    bucket.push([])
  }
  arr.forEach((elm) =>{
    bucket[elm].push(elm)
  })
  bucket.forEach(elm=>{
    elm.forEach(elm2=>{
      ans.push(elm2)
    })
  })
  return ans
}


console.log(bucket_sort(a))
console.log(bucket_sort(b))
console.log(bucket_sort(c))