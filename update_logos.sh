#!/bin/bash

# Define the CloudPanel logo paths and the GitHub URLs for your logos
cloudpanel_logo_paths=(
  "/home/clp/htdocs/app/files/public/assets/images/cloudpanel-cloud.svg"         # Original logo path
  "/home/clp/htdocs/app/files/public/assets/images/favicon.svg"      # Original favicon path
  "/home/clp/htdocs/app/files/public/assets/images/logo-dark.svg"   # Dark logo path (if needed)
  "/home/clp/htdocs/app/files/public/assets/images/logo.svg"         # Main logo path
)

# Define the GitHub URLs where the logos are hosted
github_logo_urls=(
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/cloudpanel-cloud.svg"   # URL for original logo
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/favicon.svg"            # URL for original favicon
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/logo-dark.svg"          # URL for dark logo
  "https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/logos/logo.svg"               # URL for main logo
)

# Loop through each logo and replace the old one with the new one from GitHub
echo "Updating logos from GitHub..."

for i in "${!cloudpanel_logo_paths[@]}"; do
  echo "Replacing logo: ${cloudpanel_logo_paths[$i]}"

  # Download the logo from GitHub and replace the old logo
  curl -s -o "${cloudpanel_logo_paths[$i]}" "${github_logo_urls[$i]}"
done

# Restart CloudPanel to apply the new logos
echo "Restarting CloudPanel to apply new logos..."
systemctl restart cloudpanel

echo "Logos updated successfully!"
