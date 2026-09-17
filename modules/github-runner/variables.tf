variable "github_app" {
  description = "Configuration for the GitHub App."
  type = object({
    key_base64     = string
    id             = string
    webhook_secret = string
  })
}