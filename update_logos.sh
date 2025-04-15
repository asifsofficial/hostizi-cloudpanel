#!/bin/bash

# Define the logo paths
cloudpanel_logo_paths=(
  "/home/clp/htdocs/app/files/public/assets/images/cloudpanel-cloud.svg"
  "/home/clp/htdocs/app/files/public/assets/images/favicon.svg"
  "/home/clp/htdocs/app/files/public/assets/images/logo-dark.svg"
  "/home/clp/htdocs/app/files/public/assets/images/logo.svg"
)

# Define the GitHub logo URLs
github_logo_urls=(
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/cloudpanel-cloud.svg"
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/favicon.svg"
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/logo-dark.svg"
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/logo.svg"
)

# Start logo replacement
echo "Updating CloudPanel logos with HOSTIZI branding..."

for i in "${!cloudpanel_logo_paths[@]}"; do
  echo "Replacing ${cloudpanel_logo_paths[$i]}"
  curl -s -o "${cloudpanel_logo_paths[$i]}" "${github_logo_urls[$i]}"
done

# Restart Nginx safely
echo "Restarting Nginx to apply branding..."
if systemctl restart nginx 2>/dev/null; then
  echo "Nginx restarted successfully."
else
  echo "Could not restart Nginx. Please restart it manually using:"
  echo "   sudo systemctl restart nginx"
fi

echo "Logos updated successfully with HOSTIZI branding!"
