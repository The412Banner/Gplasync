<p align="center">
  <img src="/img.png" width="500" title="hover text">
</p>

---

<h1 align="center">The412Banner Nightly Repo for Winlator / Emulation</h1>

I borrowed most of this readme from Arihany, from her GitHub WCP Repo, the best I've found to this day if I am being honest.  This is my personal repo/cache of personal components I've gathered over time from various sources (Arihany, StevenMXZ, Pypetto-Crypto, Max, Nick417).  If i miss anyone on credits please just dm me 🙏 

Arihany repo can be found here:

https://github.com/Arihany/WinlatorWCPHub 

> Nightly Worlfow runs and Updates hourly and daily at 03:30 AM EST / 08:30 AM UST

---

A very informative site to keep users up to date on emulators: 

https://t3st31.github.io/Ranking-Emulators-Download/

Anyone interested in Rooting and/or overclocking their Retroid Snapdragon 865 devices: 

https://github.com/The412Banner/Banners-No-PC-Retroid-Overclock

My repo to help rooting your Ayaneo Konkr Pocket Fit: 

https://github.com/The412Banner/Ayaneo-PocketFit-tools

xNick417x Winlator Bionic Nightly WCP Repo

https://github.com/Xnick417x/Winlator-Bionic-Nightly-wcp

---

<h3 align="center">Emulation Discord Channels</h3>

My discord channel here:
https://discord.gg/n8S4G2WZQ4

Ryan Retro Discord:
https://discord.gg/9n6VUzv424

Emugear International Discord:
https://discord.gg/94PzWBsHHh

MaxesTechReview Discord:
https://discord.gg/9ySMdArY4s

Emucore (Kimchi's Discord):
https://discord.gg/ZmXUZybNpU

Official Gamehub Lite (Emuready Discord)v
https://discord.gg/emuready-1380826875961540648

---

> | Bionic builds | 📖 |
> |:-:|-|
> | [**Winlator-CMod**](https://github.com/coffincolors/winlator/releases) | Baseline Bionic build with excellent controller support. |
> | [**Winlator-Ludashi**](https://github.com/StevenMXZ/Winlator-Ludashi/releases) | Keeps up with the latest upstream code while remaining close to vanilla. Great performance. |
> | [**GameNative**](https://github.com/utkarshdalal/GameNative/releases) | Supports both glibc and bionic, featuring a sleek UI and Steam integration. |

> | Gamehub Builds | 📖 |
> |:-:|-|
> | [**Official Gamehub**](https://gamehub.xiaoji.com/) | Original Gamehub released by Gamesir. |
> | [**Official Gamehub Lite**](https://github.com/Producdevity/gamehub-lite/releases) | GameHub Lite is a community-maintained modified version of GameHub for education purposes. |
> | [**Unofficial Gamehub Lite**](https://github.com/ItzDFPlayer/gamehub-lite) | This is a fork of the Official Gamehub Lite, updated to run off the Gamehub v5.3.5 build with features from their 5.3.3 Pre-release. |
> | [**Gamehub Basil**](https://github.com/winlatorbrasil/gamehub-brasil/releases) | Brazilian fork of GameHub, adapted and maintained with a focus on performance, compatibility and accessibility. |
> 
>
> ---
> 
> </details>
> <br>

---

<h3 align="center">Additional Packages</h3>

---

### 🔥 Adreno Driver
| Link | 📖 |
|:-:|-|
| [**StevenMXZ**](https://github.com/StevenMXZ/freedreno_turnip-CI/releases) | Mesa Turnip driver |
| [**whitebelyash**](https://github.com/whitebelyash/freedreno_turnip-CI/releases) | Mesa Turnip driver |
| [**K11MCH1**](https://github.com/K11MCH1/AdrenoToolsDrivers/releases) | Qualcomm proprietary driver + Mesa Turnip driver |
| [**GameNative**](https://gamenative.app/drivers/) | Qualcomm proprietary driver + Mesa Turnip driver |
| [**zoerakk**](https://github.com/zoerakk/qualcomm-adreno-driver/releases) | Qualcomm proprietary driver (ELITE) |
| [**Mr. Purple**](https://github.com/MrPurple666/purple-turnip/releases) | Turnip Drivers - Secret Console |


<details>
  <summary>💡Quick Info</summary>
<br> 
  
| Type | 📖 |
|:-:|-|
| **Qualcomm driver** | Extracted from the official Adreno driver of a recent device. Partially compatible with similar chipsets. Emulation may show reduced performance or rendering glitches. |
| **Mesa turnip driver** | Open source Mesa driver with broader Vulkan support and emulator friendly behavior. Often more compatible or stable across devices. |

</details>

---

### 📦 Runtime Packages

| Type | 📖 |
|-|-|
| [**Visual C++ x64**](https://aka.ms/vs/17/release/vc_redist.x64.exe) | 2015–2022 Redistributable |
| [**Visual C++ x86**](https://aka.ms/vs/17/release/vc_redist.x86.exe) | 2015–2022 Redistributable |
| [**Visual C++ ARM64**](https://aka.ms/vs/17/release/vc_redist.arm64.exe) | 2015–2022 Redistributable |
| [**Wine-Mono**](https://dl.winehq.org/wine/wine-mono/) | .NET runtime for Wine (**Install only when the built-in tool is not working**) |
| [**Wine-Gecko**](https://dl.winehq.org/wine/wine-gecko/) | HTML engine for Wine (**Install only when the built-in tool is not working**) |
| [**DirectX (June 2010)**](https://download.microsoft.com/download/8/4/a/84a35bf1-dafe-4ae8-82af-ad2ae20b6b14/directx_Jun2010_redist.exe) | **Install only if missing Legacy DirectX DLL** |
| [**PhysX Legacy**](https://www.nvidia.com/content/DriverDownload-March2009/confirmation.php?url=/Windows/9.13.0604/PhysX-9.13.0604-SystemSoftware-Legacy.msi&lang=us&type=Other) | **Install only if an old game requests PhysX DLL** |

<details>
  <summary>💡Quick Info</summary>
<br>

- Install only the minimum necessary.
- If older VC++ is needed, try an [**AIO package**](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/). <br>

</details>
---
<br>
<h3 align="center"> Credits </h3>
<h4 align="center">
Third-party components used for packaging (such as DXVK, Wine, vkd3d-proton, FEX, etc.) retain their original upstream licenses.
WCP packages redistribute unmodified (or minimally patched) binaries, and all copyrights and credits belong to the original authors.
<br><br>

FEX [FEX-Emu](https://github.com/FEX-Emu)<br>
Box64 [ptitSeb](https://github.com/ptitSeb)<br>
DXVK [Philip Rebohle](https://github.com/doitsujin)<br>
DXVK-Sarek [pythonlover02](https://github.com/pythonlover02)<br>
DXVK-GPLAsync Patch [Ph42oN](https://gitlab.com/Ph42oN)<br>
VKD3D [Hans-Kristian Arntzen](https://github.com/HansKristian-Work)<br>
Freedreno Turnip driver [Mesa](https://mesa3d.org/)

Thanks also to Max and Nick for helping with workflows
and to those I forget please just message me 🙏 

</h4>
