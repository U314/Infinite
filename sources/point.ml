module type POINT =
sig
  
  type t
  
  class point :
    string -> t * t * t ->
  object
    val mutable _name : string
    val mutable x : t
    val mutable y : t
    val mutable z : t
    method distance : float
    method get_name : string
    method get_x : t
    method get_y : t
    method get_z : t
    method moveto : t * t * t -> unit
    method rmoveto : t * t * t -> unit
    method set_name : string -> unit
    method set_x : t -> unit
    method set_y : t -> unit
    method set_z : t -> unit
  end
    
end

module Basic : POINT =
struct
  
  type t = int
  
  class point name (x_init, y_init, z_init) = 
  object

    val mutable _name : string = name
    val mutable x = x_init
    val mutable y = y_init
    val mutable z = z_init
      
    method get_x  = x
    method get_y  = y
    method get_z  = z
    method get_name = _name 

    method set_x new_x = x <- new_x
    method set_y new_y = y <- new_y
    method set_z new_z = z <- new_z
    method set_name new_name = _name <- new_name
 
    method moveto (nx, ny, nz) = x <- nx; y <- ny; z <- nz
    method rmoveto (dx, dy, dz) = x <- x + dx; y <- y + dy; z <- z + dz
    method distance = sqrt (float_of_int (x * x + y * y + z * z))
  end

end
