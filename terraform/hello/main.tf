resource "local_file" "hello" {
  content         = "Hello World!"
  filename        = "/tmp/hello.txt"
  file_permission = "0777"
}
