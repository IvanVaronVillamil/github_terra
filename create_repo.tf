#Repo for testing
resource "github_repository" "test-repo" {
  name        = "test-repo"
  description = "Test repo from Terraform"
  visibility  = "private"
  template {
    owner      = "IvanVaronVillamil"
    repository = "java_spring_template"
  }
}

resource "github_repository" "test-repo-fr-pipeline" {
  name        = "test-repo"
  description = "Test repo from Terraform with Jenkins pipeline"
  visibility  = "private"
  template {
    owner      = "IvanVaronVillamil"
    repository = "java_spring_template"
  }
}