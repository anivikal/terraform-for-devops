provider "aws" {
    region = "us-east-1"
}
 provider "vault" {
    address = "http://localhost:8200"
    skip_child_token = true

    auth_login {
        path = "auth/approle/login"
        parameters = {
            role_id   = "9a6c4dcc-15cb-035d-db76-fda6c4621daf"
            secret_id = "e446cc90-b42d-f592-787b-518f84809ed7"
        }
    }

 }
