if [ -f ~/rom/out/target/product/X00TD/xdCLO_*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00TD/ && ls xdCLO_*.zip)"
      rclone copy ~/rom/out/target/product/X00TD/xdCLO_*.zip asus:xdroid -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00TD/ && ls xdCLO_*.zip) Uploaded Successfully!"
fi
