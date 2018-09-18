n=10
queries=[[2, 6, 8],[3, 5, 7],[1, 8, 1],[5, 9, 15]]

sum = Array.new(n,0)
  queries.each do |q|
      sum[q[0]-1]+=q[2]
      if sum[q[1]-1]<0 && ((sum[q[1]-1]+=q[2]) > 0)
        sum[q[1]-1]+=(q[2]+1)
        i = q[1]
        until (sum[i]>=0 || sum[i].nil?)
          i+=1
        end
        sum[i] = -1 unless sum[q[1]+i].nil? 
      else
         sum[q[1]-1]-=q[2] 
      end

  end

  sums = Array.new(1,0)
  lookahead = 0
  push = false
  (sum.length-1).times do |i|
      if(sum[i] > 0)
          puts "Adding: i: #{i}, sums[-1]: #{sums[-1]} , sum[i]: #{sum[i]}"
          lookahead +=1
          push ? sums.push(sum[i]) : sums[-1]+=sum[i]
          push = false
          puts "Sums last: #{sums[-1]}"
      elsif sum[i] < 0
          lookahead -=1
          push = true
          puts "i: #{i}, Push: #{push}"
      end
  end
