println("Hello")

print("Test")

2 + 2

13.20 + sqrt(15)

12 % 5

my_answer = 42
typeof(my_answer)

my_pi = 3.14159
typeof(my_pi)

##
#  https://docs.julialang.org/en/v1/base/file/
# Working Directory
pwd()

##
# https://docs.juliaplots.org/latest/tutorial/
# Pkg.add("Plots")
using Plots

x = 1:10
y = rand(10)
plot(x, y)

y = rand(10, 2)
plot(x, y)

z = rand(10)
plot!(x, z)

plot(x, y, title = "Two Lines part2", label = ["Line 1" "Line 2"], lw = 1.5)
xlabel!("My x label")
ylabel!("My y label")

wd="C:/Julian_LaCie/_GitHub/Learning_Julia"
string(wd,"/myplot.png")
savefig(string(wd,"/plots/myplot.png"))

p=plot(x, y, title = "Two Lines part2", label = ["Line 1" "Line 2"], lw = 1.5)
xlabel!("My x label")
ylabel!("My y label")

savefig(p,string(wd,"/plots/myplot2.png"))

scatter(x,y, title="a scatter plot!!")

y2=rand(10,4)
p2=scatter(x,y2, layout=(4,1),ylims=(0,5),xlim=(0,13))
savefig(p2,string(wd,"/plots/mulit_plot2.png"))

p1 = plot(x, y) # Make a line plot
p2 = scatter(x, y) # Make a scatter plot
p3 = plot(x, y, xlabel = "This one is labelled", lw = 3, title = "Subtitle")
p4 = histogram(x, y) # Four histograms each with 10 points? Why not!
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)

# Pkg.add("Distributions")
using Distributions
tmp=Normal(3,5)
plot(tmp)

##
# Reading data into Julia
# https://towardsdatascience.com/read-csv-to-data-frame-in-julia-programming-lang-77f3d0081c14
# Pkg.add("CSV")
# Pkg.add("DataFrames")
using CSV
using DataFrames
wd="C:/Julian_LaCie/_GitHub/Learning_Julia"

# option 1
dat=DataFrame(CSV.File(string(wd,"/Data/REPORT.csv")))

# option 2...with a pipe
dat=CSV.File(string(wd,"/Data/REPORT.csv")) |> DataFrame

# option 3
dat=CSV.read(string(wd,"/Data/REPORT.csv"),DataFrame;)

show(first(dat,5))

## https://towardsdatascience.com/how-to-manipulate-data-with-dataframes-jl-179d236f8601
dat[2,5]
dat[2,"Collection_Date"]

dat.Collection_Date[1]
dat."Station ID"[1]
dat.StationID=dat."Station ID"
dat.Date=dat.Collec
plot(dat.Collection_Date, dat.Value*1000)

# If else hell
# similar to if(){}else{} in r
if dat."Station ID"=="S12B"
    x="yes"
else
    x="no"
end

f(StationID)=(StationID=="S12B")
res=f.(dat.StationID)

ifelse(dat.StationID=="S12B","yes","no")

## Data processing
# Pkg.add("Dates")
using Dates

dat$HalfMDL=if(dat$Value)
