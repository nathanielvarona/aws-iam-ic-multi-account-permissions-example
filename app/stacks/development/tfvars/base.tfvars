enabled   = true
namespace = "aws-sso"
name      = "aws-sso"
stage     = "<%= expansion(:ENV) %>"
permission_sets = <%= output("permission-sets.permission_sets") %>