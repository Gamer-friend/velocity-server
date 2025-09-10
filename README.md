> [!CAUTION]
> Velocity for eaglercraft client 1.12.2 No longer supports direct proxies with the eeaglerXvelocity plugin. Using EaglerXserver will foward ports by default.

## Basically a velocity server
WITH FULL SUPPORT CONTAINING [LIMBOAPI](https://github.com/Elytrium/LimboAPI) ,"An API which provides virtual servers features to Velocity" like mods.

## Features of LimboAPI

- Send to the Limbo server during login process
- Send to the Limbo server during play process
- Send maps, items to player's virtual inventory
- Display player's XP
- Send Title, Chat, ActionBar
- Load world from world files like .schematic
- and more...
  
# 💻 Java Project Setup in GitHub Codespaces (16GB RAM & 4 CPUs)

This guide walks you through setting up a development environment in **GitHub Codespaces** with **Java 17**, with no docker, and running three components:

- 🧱 **Server** (backend)
- ⚡ **Velocity** (proxy)
- 🔐 **Limbo** (login system)/(plugins)

---

## 🛠️ 1. Create a Codespace

1. Go to: [https://github.com/Gamer-friend/velocity-server](https://github.com/Gamer-friend/velocity-server)
2. Create a codespace by clicking the green "code" button => go to "create new codespace on main"
   <img width="1364" height="731" alt="Screenshot 2025-09-10 7 47 31 AM" src="https://github.com/user-attachments/assets/d6809790-c3d2-4131-98b6-ae7fc62ea2bd" />

> ✅ You can verify and change these settings under the machine configuration before launching the codespace.

---

## ☕ 2. Install Java 17 (Amazon Corretto)

Update your packages and install Java using [SDKMAN](https://sdkman.io/):

```bash
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt auto-clean -y
Then install Java:

bash
Copy code
sdk install java 17.0.9-amzn
🔸 IMPORTANT: When prompted, type y and press Enter.
```

## 🔄 3. Open Three Terminal Tabs
You'll need three separate terminal tabs for the following:

First Tab: Run the Server

Second Tab: Run the Velocity Proxy

Third Tab: Run the Limbo Login System



🧱 4. Running the Server (Backend)
In the first tab, run:

```bash
cd server
chmod +x server.sh
./server.sh
```

⚡ 5. Running Velocity (Proxy)
In the second tab, run:

```bash
Copy code
cd velocity
chmod +x velocity.sh
./velocity.sh
```

🔐 6. Running Limbo (Login)
In the third tab, run:

```bash
Copy code
cd limbo
chmod +x limbo.sh
./limbo.sh
```
✅ Done!

Now make sure ports 8081 and 25565 are fowarded, if not foward them yourselves. (This is normal operation.) Then make port 8081 public. click the 🌐 button on the port 8081 which will take you to a seperate webpage. Replace the "https" at the front of the URL with "wss" like for example, `https://glowing-system-pjwrv5gv6qv7h7jvj-25577.app.github.dev` becomes `https://glowing-system-pjwrv5gv6qv7h7jvj-25577.app.github.dev` Add your server to your client, and you should have an working server!
