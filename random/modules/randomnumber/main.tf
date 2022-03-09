
#   resource "random_id" "random_uid" {
#     byte_length = var.byte_length
# }

resource "random_integer" "random_number" {
  min = var.number_min
  max = var.number_max
}