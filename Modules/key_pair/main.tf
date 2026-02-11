# =========================
# Key_pair Generation
# =========================

resource "aws_key_pair" "key-pair" {
  key_name   = var.key_pair_name
  public_key = var.public_key
}