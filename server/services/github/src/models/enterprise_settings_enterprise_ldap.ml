(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 *)

type t = {
    host: string option [@default None];
    port: int32 option [@default None];
    base: Any_type.t list;
    uid: string option [@default None];
    bind_dn: string option [@default None];
    password: string option [@default None];
    _method: string option [@default None];
    search_strategy: string option [@default None];
    user_groups: Any_type.t list;
    admin_group: string option [@default None];
    virtual_attribute_enabled: bool option [@default None];
    recursive_group_search: bool option [@default None];
    posix_support: bool option [@default None];
    user_sync_emails: bool option [@default None];
    user_sync_keys: bool option [@default None];
    user_sync_interval: int32 option [@default None];
    team_sync_interval: int32 option [@default None];
    sync_enabled: bool option [@default None];
    reconciliation: Enterprise_settings_enterprise_ldap_reconciliation.t option [@default None];
    profile: Enterprise_settings_enterprise_ldap_profile.t option [@default None];
} [@@deriving yojson { strict = false }, show ];;

let create () : t = {
    host = None;
    port = None;
    base = [];
    uid = None;
    bind_dn = None;
    password = None;
    _method = None;
    search_strategy = None;
    user_groups = [];
    admin_group = None;
    virtual_attribute_enabled = None;
    recursive_group_search = None;
    posix_support = None;
    user_sync_emails = None;
    user_sync_keys = None;
    user_sync_interval = None;
    team_sync_interval = None;
    sync_enabled = None;
    reconciliation = None;
    profile = None;
}

