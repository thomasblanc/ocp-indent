module Unsafe_blit = struct
  external unsafe_blit
    :  src:t_
    -> src_pos:int
    -> dst:t_
    -> dst_pos:int
    -> len:int
    -> unit
    = "core_array_unsafe_int_blit"
  [@@noalloc]
end

(** @open *)
include
  module type of struct
    include Base.Array
  end
  with type 'a t := 'a t

(** Return the class of the given floating-point number:
    normal, subnormal, zero, infinite, or not a number. *)
external classify_float
  :  (float[@unboxed])
  -> fpclass
  = "caml_classify_float" "caml_classify_float_unboxed"
[@@noalloc] [@@deprecated "[since 2014-10] Use [Float.classify]"]

(** {6 String operations}

    More string operations are provided in module {!String}.
*)

(** String concatenation. *)
val ( ^ ) : string -> string -> string

module V1 = struct
  type t = Xxxxxxxxxxxxxxxx.t =
    { xxxxxxxxxxxxxxxxxxxx : Xxxxxxxxxxxxxx.t
                             [@default Xxxxxxxxxxxxxx.empty]
                             [@sexp_drop_if Xxxxxxxxxxxxxx.is_empty]
    }
  [@@deriving bin_io, sexp]
end

module M = struct

  include Validate (struct type nonrec t = t [@@deriving_inline compare, sexp_of]
      let compare : t -> t -> int = compare
      let sexp_of_t : t -> Ppx_sexp_conv_lib.Sexp.t = sexp_of_t
      [@@@end] end)
end

type t = |
let x = ()
