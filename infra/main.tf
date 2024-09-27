provider "aws" {
  region = var.aws_region
}

resource "aws_cognito_user_pool" "clientes_lanchonete_user_pool" {
  name              = var.user_pool_name
  mfa_configuration = var.mfa_configuration

  schema {
    name                = "name"
    attribute_data_type = "String"
    required            = true
  }

  schema {
    name                = "email"
    attribute_data_type = "String"
    required            = true
  }

  lambda_config {
    pre_sign_up                    = "arn:aws:lambda:us-east-1:105971623004:function:lanchonete-lambda-pre-sign-up"
    define_auth_challenge          = "arn:aws:lambda:us-east-1:105971623004:function:lanchonete-lambda-define-auth-challenge"
    create_auth_challenge          = "arn:aws:lambda:us-east-1:105971623004:function:lanchonete-lambda-create-auth-challenge"
    verify_auth_challenge_response = "arn:aws:lambda:us-east-1:105971623004:function:lanchonete-lambda-verify-auth-challenge"
  }

  password_policy {
    minimum_length    = 8
    require_uppercase = true
    require_lowercase = true
    require_numbers   = true
    require_symbols   = true
  }
}

resource "aws_cognito_user_pool_client" "lanchonete_user_pool_client" {
  name            = "lanchonete-client"
  user_pool_id    = aws_cognito_user_pool.clientes_lanchonete_user_pool.id
  generate_secret = false
}

resource "aws_cognito_user" "lanchonete_balcao_user" {
  username   = "99999999999"
  user_pool_id = aws_cognito_user_pool.clientes_lanchonete_user_pool.id

  attributes = {
    name  = "Cliente anonimo balcao"
    email = "balcao@lanchonete.com"
  }
  
  lifecycle {
    create_before_destroy = true
  }
}