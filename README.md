
# Hostizi CloudPanel Branding

This script replaces CloudPanel's default branding (logo, favicon, etc.) with **HOSTIZI** branding after CloudPanel is installed on a VPS.  
Just run one command, and all branding will be updated from this GitHub repository.

---

## 🔧 Features

- Replaces default CloudPanel logos with HOSTIZI logos
- Supports:
  - `logo.svg`
  - `logo-dark.svg`
  - `favicon.svg`
  - `cloudpanel-cloud.svg`
- Auto-downloads assets from GitHub
- Restarts CloudPanel or Nginx (manually if needed)

---

## 📁 Logo Replacement Paths

Logos will be replaced in this directory:

```
/home/clp/htdocs/app/files/public/assets/images/
```

---

## 🚀 Usage

1. SSH into your VPS:

```bash
ssh root@your-server-ip
```

2. Download the update script:

```bash
curl -O https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/update_logos.sh
```

3. Make the script executable:

```bash
chmod +x update_logos.sh
```

4. Run the script:

```bash
sudo bash update_logos.sh
```

---

## ⚠️ Restarting CloudPanel

If CloudPanel doesn’t restart automatically, you can try manually restarting Nginx:

```bash
sudo systemctl restart nginx
```

Or if you know the CloudPanel service name, run:

```bash
sudo systemctl restart cloudpanel.service
```

If `cloudpanel.service` is not found, use this to find the correct name:

```bash
systemctl list-units --type=service --all | grep cloudpanel
```

---

## 📷 Screenshots

Coming soon...

---

## 🤝 License

You have permission from CloudPanel to modify branding for your use under HOSTIZI. This script is maintained by [Asif](https://github.com/asifsofficial) from [HOSTIZI](https://hostizi.com).

---

## 🧡 Credit

- [CloudPanel](https://www.cloudpanel.io/) – The original control panel  
- [HOSTIZI](https://hostizi.com) – Your VPS & domain partner
