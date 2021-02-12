(*
 * This file has been generated by the OCamlClientCodegen generator for openapi-generator.
 *
 * Generated by: https://openapi-generator.tech
 *
 * Schema Full_repository.t : Full Repository
 *)

type t = {
    id: int32;
    node_id: string;
    name: string;
    full_name: string;
    owner: Simple_user.t option;
    _private: bool;
    html_url: string;
    description: string option;
    fork: bool;
    url: string;
    archive_url: string;
    assignees_url: string;
    blobs_url: string;
    branches_url: string;
    collaborators_url: string;
    comments_url: string;
    commits_url: string;
    compare_url: string;
    contents_url: string;
    contributors_url: string;
    deployments_url: string;
    downloads_url: string;
    events_url: string;
    forks_url: string;
    git_commits_url: string;
    git_refs_url: string;
    git_tags_url: string;
    git_url: string;
    issue_comment_url: string;
    issue_events_url: string;
    issues_url: string;
    keys_url: string;
    labels_url: string;
    languages_url: string;
    merges_url: string;
    milestones_url: string;
    notifications_url: string;
    pulls_url: string;
    releases_url: string;
    ssh_url: string;
    stargazers_url: string;
    statuses_url: string;
    subscribers_url: string;
    subscription_url: string;
    tags_url: string;
    teams_url: string;
    trees_url: string;
    clone_url: string;
    mirror_url: string option;
    hooks_url: string;
    svn_url: string;
    homepage: string option;
    language: string option;
    forks_count: int32;
    stargazers_count: int32;
    watchers_count: int32;
    size: int32;
    default_branch: string;
    open_issues_count: int32;
    is_template: bool option [@default None];
    topics: string list;
    has_issues: bool;
    has_projects: bool;
    has_wiki: bool;
    has_pages: bool;
    has_downloads: bool;
    archived: bool;
    (* Returns whether or not this repository disabled. *)
    disabled: bool;
    (* The repository visibility: public, private, or internal. *)
    visibility: string option [@default None];
    pushed_at: string;
    created_at: string;
    updated_at: string;
    permissions: Full_repository_permissions.t option [@default None];
    allow_rebase_merge: bool option [@default None];
    template_repository: Repository.t option [@default None];
    temp_clone_token: string option [@default None];
    allow_squash_merge: bool option [@default None];
    delete_branch_on_merge: bool option [@default None];
    allow_merge_commit: bool option [@default None];
    subscribers_count: int32;
    network_count: int32;
    license: License_simple.t option;
    organization: Simple_user.t option [@default None];
    parent: Repository.t option [@default None];
    source: Repository.t option [@default None];
    forks: int32;
    master_branch: string option [@default None];
    open_issues: int32;
    watchers: int32;
    (* Whether anonymous git access is allowed. *)
    anonymous_access_enabled: bool option [@default None];
} [@@deriving yojson { strict = false }, show ];;

(** Full Repository *)
let create (id : int32) (node_id : string) (name : string) (full_name : string) (owner : Simple_user.t option) (_private : bool) (html_url : string) (description : string option) (fork : bool) (url : string) (archive_url : string) (assignees_url : string) (blobs_url : string) (branches_url : string) (collaborators_url : string) (comments_url : string) (commits_url : string) (compare_url : string) (contents_url : string) (contributors_url : string) (deployments_url : string) (downloads_url : string) (events_url : string) (forks_url : string) (git_commits_url : string) (git_refs_url : string) (git_tags_url : string) (git_url : string) (issue_comment_url : string) (issue_events_url : string) (issues_url : string) (keys_url : string) (labels_url : string) (languages_url : string) (merges_url : string) (milestones_url : string) (notifications_url : string) (pulls_url : string) (releases_url : string) (ssh_url : string) (stargazers_url : string) (statuses_url : string) (subscribers_url : string) (subscription_url : string) (tags_url : string) (teams_url : string) (trees_url : string) (clone_url : string) (mirror_url : string option) (hooks_url : string) (svn_url : string) (homepage : string option) (language : string option) (forks_count : int32) (stargazers_count : int32) (watchers_count : int32) (size : int32) (default_branch : string) (open_issues_count : int32) (has_issues : bool) (has_projects : bool) (has_wiki : bool) (has_pages : bool) (has_downloads : bool) (archived : bool) (disabled : bool) (pushed_at : string) (created_at : string) (updated_at : string) (subscribers_count : int32) (network_count : int32) (license : License_simple.t option) (forks : int32) (open_issues : int32) (watchers : int32) : t = {
    id = id;
    node_id = node_id;
    name = name;
    full_name = full_name;
    owner = owner;
    _private = _private;
    html_url = html_url;
    description = description;
    fork = fork;
    url = url;
    archive_url = archive_url;
    assignees_url = assignees_url;
    blobs_url = blobs_url;
    branches_url = branches_url;
    collaborators_url = collaborators_url;
    comments_url = comments_url;
    commits_url = commits_url;
    compare_url = compare_url;
    contents_url = contents_url;
    contributors_url = contributors_url;
    deployments_url = deployments_url;
    downloads_url = downloads_url;
    events_url = events_url;
    forks_url = forks_url;
    git_commits_url = git_commits_url;
    git_refs_url = git_refs_url;
    git_tags_url = git_tags_url;
    git_url = git_url;
    issue_comment_url = issue_comment_url;
    issue_events_url = issue_events_url;
    issues_url = issues_url;
    keys_url = keys_url;
    labels_url = labels_url;
    languages_url = languages_url;
    merges_url = merges_url;
    milestones_url = milestones_url;
    notifications_url = notifications_url;
    pulls_url = pulls_url;
    releases_url = releases_url;
    ssh_url = ssh_url;
    stargazers_url = stargazers_url;
    statuses_url = statuses_url;
    subscribers_url = subscribers_url;
    subscription_url = subscription_url;
    tags_url = tags_url;
    teams_url = teams_url;
    trees_url = trees_url;
    clone_url = clone_url;
    mirror_url = mirror_url;
    hooks_url = hooks_url;
    svn_url = svn_url;
    homepage = homepage;
    language = language;
    forks_count = forks_count;
    stargazers_count = stargazers_count;
    watchers_count = watchers_count;
    size = size;
    default_branch = default_branch;
    open_issues_count = open_issues_count;
    is_template = None;
    topics = [];
    has_issues = has_issues;
    has_projects = has_projects;
    has_wiki = has_wiki;
    has_pages = has_pages;
    has_downloads = has_downloads;
    archived = archived;
    disabled = disabled;
    visibility = None;
    pushed_at = pushed_at;
    created_at = created_at;
    updated_at = updated_at;
    permissions = None;
    allow_rebase_merge = None;
    template_repository = None;
    temp_clone_token = None;
    allow_squash_merge = None;
    delete_branch_on_merge = None;
    allow_merge_commit = None;
    subscribers_count = subscribers_count;
    network_count = network_count;
    license = license;
    organization = None;
    parent = None;
    source = None;
    forks = forks;
    master_branch = None;
    open_issues = open_issues;
    watchers = watchers;
    anonymous_access_enabled = None;
}

