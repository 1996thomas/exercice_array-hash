require_relative("./01_src/valeur.rb")
require_relative("./01_src/crypto.rb")

Crypto.map!{|crypto| crypto.to_s}
Valeur.map!{|value| value.to_f}

combined_hash = Hash[Crypto.zip(Valeur)]


def name(combined_hash)
    p"#EXO 01"
    combined_hash.each {|c,v| puts "#{c} vaut #{v}"}    
 end

def min(combined_hash)
    p"#EXO 02"
    min = combined_hash.min_by{|c,v| v}
    p "crypto la plus basse est #{min[0]}"
end

def max(combined_hash)
    p"#EXO 03"
    max = combined_hash.max_by{|c,v| v}
    p "crypto la plus élevé est #{max[0]}"
end

def under(combined_hash)
    p"#EXO 04"
     combined_hash.reject! {|k,v| v >= 6000}
     
     p " il y a #{combined_hash.length} crypto d'une valeur inférieur à 6000"
    #  p combined_hash
     return

end

def under6k(combined_hash)
    p"EXO 05"
    max = combined_hash.max_by{|c,v| v}
    p "la crypto la plus élevé dans ces 6000 est #{max[0]}"
end


name(combined_hash)
min(combined_hash)
max(combined_hash)
under(combined_hash)
under6k(combined_hash)


