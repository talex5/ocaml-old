(***********************************************************************)
(*                                                                     *)
(*                                OCaml                                *)
(*                                                                     *)
(*            Xavier Leroy, projet Cristal, INRIA Rocquencourt         *)
(*                                                                     *)
(*  Copyright 1996 Institut National de Recherche en Informatique et   *)
(*  en Automatique.  All rights reserved.  This file is distributed    *)
(*  under the terms of the Q Public License version 1.0.               *)
(*                                                                     *)
(***********************************************************************)

(* $Id: compile.mli 12058 2012-01-20 14:23:34Z frisch $ *)

(* Compile a .ml or .mli file *)

open Format

val interface: formatter -> string -> string -> unit
val implementation: formatter -> string -> string -> unit
val c_file: string -> unit

val initial_env: unit -> Env.t
val init_path: unit -> unit
val init_path_with: string -> unit
