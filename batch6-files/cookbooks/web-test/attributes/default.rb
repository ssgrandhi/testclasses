case node["platform"]
  when "ubuntu","debain"
   default["package_name"] = "apache2"
   default["service_name"] = "apache2"
   default["document_root"] = "/var/www/html"
  when "centos","rhel"
   default["package_name"] = "httpd"
   default["service_name"] = "httpd"
   default["document_root"] = "/var/www/html"
end
