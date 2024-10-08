data "template_file" "ubuntu_userdata" {
  template = <<-EOF
sudo timedatectl set-timezone "Asia/Seoul"
sudo hwclock
sudo sed -i 's/#Port 22/Port 4757/' /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo apt -y install language-pack-ko
sudo localectl set-locale LANG=ko_KR.UTF-8
sudo hostnamectl set-hostname projectOne

  EOF
}