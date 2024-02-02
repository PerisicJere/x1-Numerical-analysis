# Exploration 1.2.2
#------------------
A = [2 -4; 3 -5; 7 0]
B = [-5 1 4; 5 6 8; 10 5 0]
C = [-8 0; 2 -3; -1 4]
D = A + 3*(B*C)
println(D)

# Exploration 1.2.5
#------------------

matrixEntry = rand([-1,1], (3,2))
println(matrixEntry)

# Exploration 1.2.6
#------------------

colonOperator = 0:0.01:1
for i in colonOperator
    println(i,", ")
end

# Exploration 1.2.13
#-------------------

vectorOfRand = rand((-10:10), 10)
println(vectorOfRand)

function rangeCheck(y)
    boolValues = []
    for x in y
        if x >= -1 && x <= 1
            push!(boolValues, true)
        end
        push!(boolValues, false)
    end 
    println(boolValues)
    return boolValues
end

rangeCheck(vectorOfRand)



# Exploration 1.2.16
#-------------------

E = [2,6,1,3,5,8,9]
x = findmax(E) # findmax in Julia already does this, but I'm going to "recreate" it 
println(x)

function findmaxpos(x)
    y = x[1]
    indexPos = 0
    for i in length(x)
        if y<x[i]
            y = x[i]
            indexPos = i
        end
    end
    println("Max value: ", y ," Index position: ", indexPos)
    return y, indexPos
end

findmaxpos(E)