(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    config: Model__repos__owner___repo__hooks__hook_id__config.t option [@default None];
    (* Determines what [events](https://docs.github.com/enterprise-server@2.22/webhooks/event-payloads) the hook is triggered for. This replaces the entire array of events. *)
    events: string list;
    (* Determines a list of events to be added to the list of events that the Hook triggers for. *)
    add_events: string list;
    (* Determines a list of events to be removed from the list of events that the Hook triggers for. *)
    remove_events: string list;
    (* Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications. *)
    active: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    config = None;
    events = [];
    add_events = [];
    remove_events = [];
    active = None;
}

