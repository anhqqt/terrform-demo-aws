# resource "aws_dynamodb_table" "aws-dynamodb-tfstate-lock" {
#     name            = "aq-dynamodb-tfstate-lock"
#     hash_key        = "LockID"
#     read_capacity   = 10
#     write_capacity  = 10 

#     attribute {
#         name    = "LockID"
#         type    = "S"
#     }

#     tags = {
#         Description    = "DynamoDB Table for Tfstate Lock"
#     }
# }