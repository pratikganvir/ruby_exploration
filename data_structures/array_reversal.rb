require 'byebug'

a = [1,2,3,4,5,6,7,8,9,10]
puts a.inspect
def reverse(arr,d,n)
	for i in (0..((n/d)-1)) do
		arr = reverse_pos(arr,d,n,i)
	end
	arr
end

def reverse_pos(arr,d,n,i)
	temp = 0
	for j in (0..(d-1)) do
		temp = arr[j]
		arr[j] = arr[n - (d*(i+1))+j]
		arr[n - (d*(i+1))+j] = temp
	end
	arr
end

arr = reverse(a,6,10)
puts arr.inspect