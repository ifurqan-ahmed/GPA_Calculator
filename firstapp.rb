class Array
    def sum
        return self.inject(:+)
    end
end

def gt
    return gets.chomp
end



p "My GPA Calculator"

print "Enter no. of subjects: "
num = gt.to_i

gp=[]
cr=[]

num.times do |i|
    print "Enter the grade in subject #{i+1}: "
    gp[i]= gt.to_f

    print "Enter the credit hours of subject #{i+1}: "
    cr[i]=gt.to_f

    puts ""
end

tcr=cr.sum

f=0

num.times do |i|
    f += (gp[i]*cr[i])
end

gpa = f/tcr

p "Your GPA is : #{gpa}"






    
