function ip -d "Get IP address"
  dig +short myip.opendns.com @resolver1.opendns.com
end