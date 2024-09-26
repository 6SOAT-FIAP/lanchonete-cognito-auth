variable "aws_region" {
  description = "Região da AWS"
  type        = string
  default     = "us-east-1"
}

variable "user_pool_name" {
  description = "Nome do Cognito User Pool"
  type        = string
  default     = "clientes-lanchonete-user-pool"
}

variable "mfa_configuration" {
  description = "Configuração de MFA para o User Pool"
  type        = string
  default     = "OFF"
}