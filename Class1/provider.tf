provider "aws" {
    region = "us-east-1"
}
provider "aws" {
    alias = "west"
    region = "us-west-2"
}
provider "aws" {
    alias = "ohio"
    region = "us-east-2"
}