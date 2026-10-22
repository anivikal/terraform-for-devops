terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
        random = {
            source  = "hashicorp/random"
            version = "~> 3.0"
        }
    }


}

provider aws {
    region = "us-east-1" //we are doing this for the sake of this demo, but in production you should use a variable for this

}