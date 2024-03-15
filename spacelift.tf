import {
  to = spacelift_stack.spacelift
  id = "spacelift"
}

resource "spacelift_stack" "spacelift" {
  name                         = "Spacelift"
  description                  = "Manage Spacelift Infrastructure"
  administrative               = true
  autodeploy                   = true
  branch                       = "main"
  project_root                 = "/"
  protect_from_deletion        = true
  repository                   = "spacelift"
  terraform_workflow_tool      = "OPEN_TOFU"
  terraform_version            = "~>1.6.2"
  manage_state                 = true
  terraform_smart_sanitization = true
  labels                       = []
  additional_project_globs     = []
  space_id                     = "root"
}

resource "spacelift_space" "omicron7" {
  name            = "Omicron7"
  parent_space_id = "root"
}
