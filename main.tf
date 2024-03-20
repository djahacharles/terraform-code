
resource "aws_sns_topic" "demo-sns" {
  name = var.topic_name
  tags = {
    team = var.team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.demo-sns.arn
  protocol  = var.protocol_type
  endpoint  = var.my_endpoint
}
