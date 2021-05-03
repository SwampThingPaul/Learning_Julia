println("Hello")

print("Test")

2 + 2

13.20 + sqrt(15)

12 % 5

my_answer = 42
typeof(my_answer)

my_pi = 3.14159
typeof(my_pi)

#####
# https://docs.juliaplots.org/latest/tutorial/
Pkg.add("Plots")
using Plots

x = 1:10
y = rand(10)
plot(x, y)

y = rand(10, 2)
plot(x, y)

z = rand(10)
plot!(x, z)

plot(x, y, title = "Two Lines", label = ["Line 1" "Line 2"], lw = 1.5)
xlabel!("My x label")
ylabel!("My y label")
