provider "github" {
  token = var.github_token
}

resource "github_repository" "prod-repo" {
  name        = "prod__repo"
  description = "repo for our prod"
  private     = true
}
