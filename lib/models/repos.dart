class Repos {
  int? id;
  String? nodeId;
  String? name;
  String? fullName;
  bool? private;
  Owner? owner;
  String? htmlUrl;
  String? description;
  bool? fork;
  String? url;
  String? forksUrl;
  String? keysUrl;
  String? collaboratorsUrl;
  String? teamsUrl;
  String? hooksUrl;
  String? issueEventsUrl;
  String? eventsUrl;
  String? assigneesUrl;
  String? branchesUrl;
  String? tagsUrl;
  String? blobsUrl;
  String? gitTagsUrl;
  String? gitRefsUrl;
  String? treesUrl;
  String? statusesUrl;
  String? languagesUrl;
  String? stargazersUrl;
  String? contributorsUrl;
  String? subscribersUrl;
  String? subscriptionUrl;
  String? commitsUrl;
  String? gitCommitsUrl;
  String? commentsUrl;
  String? issueCommentUrl;
  String? contentsUrl;
  String? compareUrl;
  String? mergesUrl;
  String? archiveUrl;
  String? downloadsUrl;
  String? issuesUrl;
  String? pullsUrl;
  String? milestonesUrl;
  String? notificationsUrl;
  String? labelsUrl;
  String? releasesUrl;
  String? deploymentsUrl;
  String? createdAt;
  String? updatedAt;
  String? pushedAt;
  String? gitUrl;
  String? sshUrl;
  String? cloneUrl;
  String? svnUrl;
  String? homepage;
  int? size;
  int? stargazersCount;
  int? watchersCount;
  String? language;
  bool? hasIssues;
  bool? hasProjects;
  bool? hasDownloads;
  bool? hasWiki;
  bool? hasPages;
  bool? hasDiscussions;
  int? forksCount;
  dynamic mirrorUrl;
  bool? archived;
  bool? disabled;
  int? openIssuesCount;
  dynamic license;
  bool? allowForking;
  bool? isTemplate;
  bool? webCommitSignoffRequired;
  List<String>? topics;
  String? visibility;
  int? forks;
  int? openIssues;
  int? watchers;
  String? defaultBranch;

  Repos({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.hasDiscussions,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.allowForking,
    this.isTemplate,
    this.webCommitSignoffRequired,
    this.topics,
    this.visibility,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
  });

  Repos.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int?;
    nodeId = json['node_id'] as String?;
    name = json['name'] as String?;
    fullName = json['full_name'] as String?;
    private = json['private'] as bool?;
    owner = (json['owner'] as Map<String, dynamic>?) != null ? Owner.fromJson(json['owner'] as Map<String, dynamic>) : null;
    htmlUrl = json['html_url'] as String?;
    description = json['description'] as String?;
    fork = json['fork'] as bool?;
    url = json['url'] as String?;
    forksUrl = json['forks_url'] as String?;
    keysUrl = json['keys_url'] as String?;
    collaboratorsUrl = json['collaborators_url'] as String?;
    teamsUrl = json['teams_url'] as String?;
    hooksUrl = json['hooks_url'] as String?;
    issueEventsUrl = json['issue_events_url'] as String?;
    eventsUrl = json['events_url'] as String?;
    assigneesUrl = json['assignees_url'] as String?;
    branchesUrl = json['branches_url'] as String?;
    tagsUrl = json['tags_url'] as String?;
    blobsUrl = json['blobs_url'] as String?;
    gitTagsUrl = json['git_tags_url'] as String?;
    gitRefsUrl = json['git_refs_url'] as String?;
    treesUrl = json['trees_url'] as String?;
    statusesUrl = json['statuses_url'] as String?;
    languagesUrl = json['languages_url'] as String?;
    stargazersUrl = json['stargazers_url'] as String?;
    contributorsUrl = json['contributors_url'] as String?;
    subscribersUrl = json['subscribers_url'] as String?;
    subscriptionUrl = json['subscription_url'] as String?;
    commitsUrl = json['commits_url'] as String?;
    gitCommitsUrl = json['git_commits_url'] as String?;
    commentsUrl = json['comments_url'] as String?;
    issueCommentUrl = json['issue_comment_url'] as String?;
    contentsUrl = json['contents_url'] as String?;
    compareUrl = json['compare_url'] as String?;
    mergesUrl = json['merges_url'] as String?;
    archiveUrl = json['archive_url'] as String?;
    downloadsUrl = json['downloads_url'] as String?;
    issuesUrl = json['issues_url'] as String?;
    pullsUrl = json['pulls_url'] as String?;
    milestonesUrl = json['milestones_url'] as String?;
    notificationsUrl = json['notifications_url'] as String?;
    labelsUrl = json['labels_url'] as String?;
    releasesUrl = json['releases_url'] as String?;
    deploymentsUrl = json['deployments_url'] as String?;
    createdAt = json['created_at'] as String?;
    updatedAt = json['updated_at'] as String?;
    pushedAt = json['pushed_at'] as String?;
    gitUrl = json['git_url'] as String?;
    sshUrl = json['ssh_url'] as String?;
    cloneUrl = json['clone_url'] as String?;
    svnUrl = json['svn_url'] as String?;
    homepage = json['homepage'] as String?;
    size = json['size'] as int?;
    stargazersCount = json['stargazers_count'] as int?;
    watchersCount = json['watchers_count'] as int?;
    language = json['language'] as String?;
    hasIssues = json['has_issues'] as bool?;
    hasProjects = json['has_projects'] as bool?;
    hasDownloads = json['has_downloads'] as bool?;
    hasWiki = json['has_wiki'] as bool?;
    hasPages = json['has_pages'] as bool?;
    hasDiscussions = json['has_discussions'] as bool?;
    forksCount = json['forks_count'] as int?;
    mirrorUrl = json['mirror_url'];
    archived = json['archived'] as bool?;
    disabled = json['disabled'] as bool?;
    openIssuesCount = json['open_issues_count'] as int?;
    license = json['license'];
    allowForking = json['allow_forking'] as bool?;
    isTemplate = json['is_template'] as bool?;
    webCommitSignoffRequired = json['web_commit_signoff_required'] as bool?;
    topics = (json['topics'] as List?)?.map((dynamic e) => e as String).toList();
    visibility = json['visibility'] as String?;
    forks = json['forks'] as int?;
    openIssues = json['open_issues'] as int?;
    watchers = json['watchers'] as int?;
    defaultBranch = json['default_branch'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['id'] = id;
    json['node_id'] = nodeId;
    json['name'] = name;
    json['full_name'] = fullName;
    json['private'] = private;
    json['owner'] = owner?.toJson();
    json['html_url'] = htmlUrl;
    json['description'] = description;
    json['fork'] = fork;
    json['url'] = url;
    json['forks_url'] = forksUrl;
    json['keys_url'] = keysUrl;
    json['collaborators_url'] = collaboratorsUrl;
    json['teams_url'] = teamsUrl;
    json['hooks_url'] = hooksUrl;
    json['issue_events_url'] = issueEventsUrl;
    json['events_url'] = eventsUrl;
    json['assignees_url'] = assigneesUrl;
    json['branches_url'] = branchesUrl;
    json['tags_url'] = tagsUrl;
    json['blobs_url'] = blobsUrl;
    json['git_tags_url'] = gitTagsUrl;
    json['git_refs_url'] = gitRefsUrl;
    json['trees_url'] = treesUrl;
    json['statuses_url'] = statusesUrl;
    json['languages_url'] = languagesUrl;
    json['stargazers_url'] = stargazersUrl;
    json['contributors_url'] = contributorsUrl;
    json['subscribers_url'] = subscribersUrl;
    json['subscription_url'] = subscriptionUrl;
    json['commits_url'] = commitsUrl;
    json['git_commits_url'] = gitCommitsUrl;
    json['comments_url'] = commentsUrl;
    json['issue_comment_url'] = issueCommentUrl;
    json['contents_url'] = contentsUrl;
    json['compare_url'] = compareUrl;
    json['merges_url'] = mergesUrl;
    json['archive_url'] = archiveUrl;
    json['downloads_url'] = downloadsUrl;
    json['issues_url'] = issuesUrl;
    json['pulls_url'] = pullsUrl;
    json['milestones_url'] = milestonesUrl;
    json['notifications_url'] = notificationsUrl;
    json['labels_url'] = labelsUrl;
    json['releases_url'] = releasesUrl;
    json['deployments_url'] = deploymentsUrl;
    json['created_at'] = createdAt;
    json['updated_at'] = updatedAt;
    json['pushed_at'] = pushedAt;
    json['git_url'] = gitUrl;
    json['ssh_url'] = sshUrl;
    json['clone_url'] = cloneUrl;
    json['svn_url'] = svnUrl;
    json['homepage'] = homepage;
    json['size'] = size;
    json['stargazers_count'] = stargazersCount;
    json['watchers_count'] = watchersCount;
    json['language'] = language;
    json['has_issues'] = hasIssues;
    json['has_projects'] = hasProjects;
    json['has_downloads'] = hasDownloads;
    json['has_wiki'] = hasWiki;
    json['has_pages'] = hasPages;
    json['has_discussions'] = hasDiscussions;
    json['forks_count'] = forksCount;
    json['mirror_url'] = mirrorUrl;
    json['archived'] = archived;
    json['disabled'] = disabled;
    json['open_issues_count'] = openIssuesCount;
    json['license'] = license;
    json['allow_forking'] = allowForking;
    json['is_template'] = isTemplate;
    json['web_commit_signoff_required'] = webCommitSignoffRequired;
    json['topics'] = topics;
    json['visibility'] = visibility;
    json['forks'] = forks;
    json['open_issues'] = openIssues;
    json['watchers'] = watchers;
    json['default_branch'] = defaultBranch;
    return json;
  }
}

class Owner {
  String? login;
  int? id;
  String? nodeId;
  String? avatarUrl;
  String? gravatarId;
  String? url;
  String? htmlUrl;
  String? followersUrl;
  String? followingUrl;
  String? gistsUrl;
  String? starredUrl;
  String? subscriptionsUrl;
  String? organizationsUrl;
  String? reposUrl;
  String? eventsUrl;
  String? receivedEventsUrl;
  String? type;
  bool? siteAdmin;

  Owner({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  Owner.fromJson(Map<String, dynamic> json) {
    login = json['login'] as String?;
    id = json['id'] as int?;
    nodeId = json['node_id'] as String?;
    avatarUrl = json['avatar_url'] as String?;
    gravatarId = json['gravatar_id'] as String?;
    url = json['url'] as String?;
    htmlUrl = json['html_url'] as String?;
    followersUrl = json['followers_url'] as String?;
    followingUrl = json['following_url'] as String?;
    gistsUrl = json['gists_url'] as String?;
    starredUrl = json['starred_url'] as String?;
    subscriptionsUrl = json['subscriptions_url'] as String?;
    organizationsUrl = json['organizations_url'] as String?;
    reposUrl = json['repos_url'] as String?;
    eventsUrl = json['events_url'] as String?;
    receivedEventsUrl = json['received_events_url'] as String?;
    type = json['type'] as String?;
    siteAdmin = json['site_admin'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['login'] = login;
    json['id'] = id;
    json['node_id'] = nodeId;
    json['avatar_url'] = avatarUrl;
    json['gravatar_id'] = gravatarId;
    json['url'] = url;
    json['html_url'] = htmlUrl;
    json['followers_url'] = followersUrl;
    json['following_url'] = followingUrl;
    json['gists_url'] = gistsUrl;
    json['starred_url'] = starredUrl;
    json['subscriptions_url'] = subscriptionsUrl;
    json['organizations_url'] = organizationsUrl;
    json['repos_url'] = reposUrl;
    json['events_url'] = eventsUrl;
    json['received_events_url'] = receivedEventsUrl;
    json['type'] = type;
    json['site_admin'] = siteAdmin;
    return json;
  }
}
