# Freebox Wi-Fi connector

The connector runs on the enrolled execution machine on the Freebox LAN. Association tokens are written directly to OpenBao and are never returned to the browser or control plane. Version 1 exposes only global Wi-Fi read and set through `/api/v2/wifi/config/`; reboot and power controls are intentionally absent.
