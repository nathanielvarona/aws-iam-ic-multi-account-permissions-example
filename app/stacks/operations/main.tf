module "sso_account_assignments" {
  source  = "../../modules/sso/modules/account-assignments"
  context = module.this.context

  account_assignments = [

    ############
    ## GROUPS ##
    ############
    {
      principal_name      = "administrator"
      principal_type      = "GROUP"
      permission_set_name = "AdministratorAccess"
      permission_set_arn  = var.permission_sets["AdministratorAccess"].arn
      account             = var.aws_account_operations
    },

    ###########
    ## USERS ##
    ###########
    {
      principal_name      = "sarahjane@domain.tld"
      principal_type      = "USER"
      permission_set_name = "AdministratorAccess"
      permission_set_arn  = var.permission_sets["AdministratorAccess"].arn
      account             = var.aws_account_operations
    },

  ]
}
