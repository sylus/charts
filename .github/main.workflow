workflow "Publish Helm chart" {
  on = "push"
  resolves = ["Helm gh-pages"]
}

action "Helm gh-pages" {
  uses = "sylus/gh-actions/helm-gh-pages@master"
  args = ["stable/*","https://sylus.github.io/charts"]
  secrets = ["GITHUB_TOKEN"]
}
