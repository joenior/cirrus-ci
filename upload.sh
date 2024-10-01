if [ -f ~/rom/out/target/product/X00T/Arrow-*.zip ]; then
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="📤 Uploading Build $(cd ~/rom/out/target/product/X00T/ && ls Arrow-*.zip)"
      rclone copy ~/rom/out/target/product/X00T/Arrow-*.zip Gdrive:arrow -P
      curl -s https://api.telegram.org/$tokentl/sendMessage -d chat_id=$idtl -d text="✅ Build $(cd ~/rom/out/target/product/X00T/ && ls Arrow-*.zip) Uploaded Successfully!"
fi
