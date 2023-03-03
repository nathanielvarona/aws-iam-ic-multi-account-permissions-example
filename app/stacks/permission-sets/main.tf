module "permission_sets" {
  source  = "../../modules/sso/modules/permission-sets"
  context = module.this.context

  permission_sets = [

    {
      name             = "AdministratorAccess",
      description      = "Provides full access to AWS services and resources.",
      relay_state      = "",
      session_duration = "PT12H",
      tags             = {},
      inline_policy    = "",
      policy_attachments = [
        "arn:aws:iam::aws:policy/AdministratorAccess",
      ]
      customer_managed_policy_attachments = []
    },

    {
      name             = "PowerUserAccess",
      description      = "Provides full access to AWS services and resources, but does not allow management of Users and groups.",
      relay_state      = "",
      session_duration = "PT12H",
      tags             = {},
      inline_policy    = "",
      policy_attachments = [
        "arn:aws:iam::aws:policy/PowerUserAccess",
      ]
      customer_managed_policy_attachments = []
    },

    {
      name             = "ReadOnlyAccess"
      description      = "Provides read-only access to AWS services and resources."
      relay_state      = ""
      session_duration = "PT12H"
      tags             = {}
      inline_policy    = data.aws_iam_policy_document.inline_policy_S3Acccess.json
      policy_attachments = [
        "arn:aws:iam::aws:policy/ReadOnlyAccess",
      ]
      customer_managed_policy_attachments = []
    },

  ]
}
