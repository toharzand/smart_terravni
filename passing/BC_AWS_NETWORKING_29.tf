resource "aws_lb_listener" "default_action1" {
  load_balancer_arn = ""
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      status_code = "HTTP_302"
      protocol = "HTTPS"
    }
  }
}

resource "aws_lb_listener" "default_action2" {
  load_balancer_arn = ""
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      status_code = "HTTP_302"
      protocol = "HTTPS"
    }
  }
}

resource "aws_lb_listener" "default_action3" {
  load_balancer_arn = ""
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      status_code = "HTTP_302"
      protocol = "HTTPS"
    }
  }
}

resource "aws_lb_listener" "default_action4" {
  load_balancer_arn = ""
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      status_code = "HTTP_302"
      protocol = "HTTPS"
    }
  }
}

resource "aws_lb_listener" "default_action5" {
  load_balancer_arn = ""
  protocol          = "HTTP"
  default_action {
    type = "redirect"
    redirect {
      status_code = "HTTP_302"
      protocol = "HTTPS"
    }
  }
}
