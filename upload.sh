if [ -f ~/rom/out/target/product/X00TD/xdroid_*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00TD/ && ls xdroid_*.zip)"
      rclone copy ~/rom/out/target/product/X00TD/xdroid_*.zip asus:xdroid -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00TD/ && ls xdroid_*.zip) Uploaded Successfully!"
fi
