#!/bin/bash
curl -fsSL https://get.docker.com/ | sudo sh
sudo usermod -aG docker $USER
