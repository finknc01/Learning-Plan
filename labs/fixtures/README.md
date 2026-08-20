# Micro-Lab Fixtures

These files provide harmless, synthetic starting material for supporting labs. They are not completed solutions.

## `lab-sleeper.sh` + `lab-sleeper.service`
Used by **Micro-Lab 01 — The Sleeping Service** so the exercise does not depend on a random system service.

Suggested setup in a disposable Ubuntu VM:

```bash
sudo install -d -m 0755 /usr/local/lib/lab-sleeper
sudo install -m 0755 labs/fixtures/lab-sleeper.sh /usr/local/lib/lab-sleeper/lab-sleeper.sh
sudo install -m 0644 labs/fixtures/lab-sleeper.service /etc/systemd/system/lab-sleeper.service
sudo systemctl daemon-reload
sudo systemctl enable --now lab-sleeper.service
```

Verify a healthy baseline before introducing faults:

```bash
systemctl status lab-sleeper.service
journalctl -u lab-sleeper.service --since today
```

The lab itself should still require you to stop, disable, misconfigure, diagnose, restore, and explain the service state manually.

## Cleanup

```bash
sudo systemctl disable --now lab-sleeper.service || true
sudo rm -f /etc/systemd/system/lab-sleeper.service
sudo rm -rf /usr/local/lib/lab-sleeper
sudo systemctl daemon-reload
```
