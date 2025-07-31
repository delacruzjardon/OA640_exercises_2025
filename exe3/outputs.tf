
output "user_password"  {
  sensitive = true
  value = mongodbatlas_database_user.user-1.password
}