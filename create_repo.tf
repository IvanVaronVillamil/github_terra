resource "github_repository" "test-repo" {
  name        = "test-repo"
  description = "Test repo from Terraform"
  visibility  = "private"
  template {
    owner      = "IvanVaronVillamil"
    repository = "java_spring_template"
  }
}