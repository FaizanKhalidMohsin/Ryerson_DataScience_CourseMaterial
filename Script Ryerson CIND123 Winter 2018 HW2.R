d1 = rep(1:6, 36)
d2 = rep(rep(1:6, each = 6), 6)
d3 = rep(1:6, each = 36) 
three.dice= cbind(d1, d2, d3) 
print(three.dice)
p = rep(1/216, 216)
sum = d1+d2+d3
mean = (d1+d2+d3)/3
three.dice = cbind(d1, d2, d3, p, sum, mean)
three.dice = data.frame(three.dice)
three.dice$sum
hist(three.dice$sum, breaks = 15, probability =  TRUE)
range(three.dice$sum)

vector_probabilities = three.dice$p[ 12 < three.dice$sum & three.dice$sum < 18 ]

sum(vector_probabilities)
4%%8
evens = three.dice$sum %% 2 == 0
vector_probabilities_even = three.dice$p[ evens = three.dice$sum %% 2 == 0 ]
vector_probabilities_odd =  three.dice$p[ evens = three.dice$sum %% 2 != 0 ]
sum(vector_probabilities_even)
sum(vector_probabilities_odd)
