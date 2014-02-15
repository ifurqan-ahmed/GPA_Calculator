GRADES = {"a" => 4, "b+" => 3.5, "b" => 3, "c+" => 2.5 , "c" => 2 , "d+" => 1.5, "d" => 1, "f" => 0 }

def gt
    return gets.chomp
end

def nextl
    return puts ""
end

def lines
    return"###############################################################"
end



def inpgr

    x=gt

    while not GRADES.keys.include? x.downcase  
        print"Invalid Entry. Try Again : "
        x=gt
    end

        x.downcase!
        return GRADES[x]
end



p "################### My GPA Calculator #####################"

nextl
print "Enter no. of subjects: "
num = gt.to_i
nextl

gp=[]
cr=[]

num.times do |i|

    puts"##################### Subject #{i+1} ############################"
    
    nextl

    print "Enter the grade in this subject: "
    gp[i]= inpgr
    nextl

    print "Enter the credit hours of this subject: "
    cr[i]=gt.to_f

    nextl
    nextl
end

tcr=cr.inject(:+)

n=0

num.times do |i|
    n += (gp[i]*cr[i])
end

gpa = n/tcr

p "################## Your GPA is : #{gpa} ######################"






    
