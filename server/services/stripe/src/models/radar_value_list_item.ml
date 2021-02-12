(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Radar_value_list_item.t : Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.  Related guide: [Managing List Items](https://stripe.com/docs/radar/lists#managing-list-items).
 *)

type t = {
    (* Time at which the object was created. Measured in seconds since the Unix epoch. *)
    created: int32;
    (* The name or email address of the user who added this item to the value list. *)
    created_by: string;
    (* Unique identifier for the object. *)
    id: string;
    (* Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode. *)
    livemode: bool;
    (* String representing the object's type. Objects of the same type share the same value. *)
    _object: Enums.deleted_radar_value_list_item_object[@default `RadarPeriodvalue_list_item];
    (* The value of the item. *)
    value: string;
    (* The identifier of the value list this item belongs to. *)
    value_list: string;
} [@@deriving yojson { strict = false }, show ];;

(** Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.  Related guide: [Managing List Items](https://stripe.com/docs/radar/lists#managing-list-items). *)
let create (created : int32) (created_by : string) (id : string) (livemode : bool) (_object : Enums.deleted_radar_value_list_item_object) (value : string) (value_list : string) : t = {
    created = created;
    created_by = created_by;
    id = id;
    livemode = livemode;
    _object = _object;
    value = value;
    value_list = value_list;
}

