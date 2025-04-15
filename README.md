
# Hostizi CloudPanel Branding

This script replaces CloudPanel's default branding (logo, favicon, etc.) with **HOSTIZI** branding after CloudPanel is installed on a VPS.  
Just run one command, and all branding will be updated from this GitHub repository.

---

## 📦 Install CloudPanel

### 🖥️ 1. SSH into Your VPS

If you're using a **private key**:
```bash
ssh -i /path/to/your/private_key.pem root@your-server-ip
```

If you're using a **password**:
```bash
ssh root@your-server-ip
```

---

### 🔄 2. Update System & Install Required Packages

Run this command:

```bash
apt update && apt -y upgrade && apt -y install curl wget sudo
```

🛠️ **Note:** If you see a "Permission denied" or "Could not open lock file" error like this:

```
E: Could not open lock file /var/lib/apt/lists/lock - open (13: Permission denied)
```

Then run the command with `sudo`:

```bash
sudo apt update && sudo apt -y upgrade && sudo apt -y install curl wget sudo
```

---

### ☁️ 3. Install CloudPanel on Ubuntu 24.04 LTS with MariaDB 10.11

```bash
curl -sS https://installer.cloudpanel.io/ce/v2/install.sh -o install.sh && \
echo "a3ba69a8102345127b4ae0e28cfe89daca675cbc63cd39225133cdd2fa02ad36 install.sh" | \
sha256sum -c && sudo DB_ENGINE=MARIADB_10.11 bash install.sh && \
curl -O https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/update_logos.sh && \
chmod +x update_logos.sh && \
sudo bash update_logos.sh
```

After installation, access CloudPanel via:

```
https://your-server-ip:8443
```

---

## 🎨 Add HOSTIZI Branding (Logo & Name)

Once CloudPanel is installed, run the following commands to update branding:

---

### 📥 1. Download the Branding Script

```bash
curl -O https://raw.githubusercontent.com/asifsofficial/hostizi-cloudpanel/main/update_logos.sh
```

---

### ✅ 2. Make It Executable

```bash
chmod +x update_logos.sh
```

---

### 🚀 3. Run the Script

```bash
sudo bash update_logos.sh
```

This will:

- Download logos from GitHub
- Replace default logos in CloudPanel
- Attempt to restart the control panel (or you can restart Nginx manually)

---

## 📁 Logo Replacement Paths

Logos will be replaced in this directory:

```
/home/clp/htdocs/app/files/public/assets/images/
```

---

## ⚠️ Restarting CloudPanel Manually

If needed, restart Nginx manually:

```bash
sudo systemctl restart nginx
```

Or to search for CloudPanel service name:

```bash
systemctl list-units --type=service --all | grep cloudpanel
```

---

## 📷 Screenshots

Coming soon...

---

## 🤝 License

You have permission from CloudPanel to modify branding for your use under HOSTIZI.  
This script is maintained by [Asif](https://github.com/asifsofficial) from [HOSTIZI](https://hostizi.com).

---

## 🧡 Credit

- [CloudPanel](https://www.cloudpanel.io/) – The original control panel  
- [HOSTIZI](https://hostizi.com) – Your VPS & domain partner
