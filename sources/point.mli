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

module Basic : POINT
