module type SPACE =
sig
  
end

module Basic : SPACE = 
struct

  class	space name (x_init, y_init, z_init) =
  object (self)
    
    inherit Point.Basic name (x_init, y_init, z_init) as super
      
    val mutable content = []
    val mutable bounds = [] 
      
  end

end
