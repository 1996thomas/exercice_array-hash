require_relative("./00_src/handle.rb")


def length(taille)
    p "# EXO 1"
    p taille.length
end

def short(court)
    p"#  EXO 2"
    p court.min { |a, b| a.length <=> b.length}
end

def five_char(cinq)
    p"# EXO3"
    cinq = cinq.select {|i| i.length == 6}
    p cinq.length
end


def upper_counter(handle)
    p "# EXO4"
    upper_=[]
    filter = /[@][a-z]/
    handle.each do |i|
        next if i =~ filter
        upper_ << i
    end
    p upper_.length
end


def alphabet(lettre)
    p "# EXO5"
    p lettre.sort_by {|i| i.upcase}
    
end

def sort_by(num) 
    p "EXO6"   
    p num.sort_by {|i| i.length}
end

def epenser(handle)
p "# EXO 7"
p Handle.index("@epenser")
end

# Application des méthodes :
length(Handle)
short(Handle)
five_char(Handle)
upper_counter(Handle)   
alphabet(Handle)
sort_by(Handle)
epenser(Handle)
