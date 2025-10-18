# docker‑qa‑demo

**QA/Test Automation Demo Container**  
A lightweight Alpine-based Docker image for validating QA automation workflows and publishing to GitHub Container Registry (GHCR).

---

## 🧪 Purpose

- Demonstrate building and validating a minimal Docker image for QA automation.
- Showcase publishing to GHCR with proper metadata and versioning.
- Serve as a base for extending with test frameworks or CI/CD pipelines.

---

## ⚙️ Features

- **Base Image**: `alpine:3.18`
- **Script**: `hello.sh` for basic functionality validation
- **Metadata**: OCI-compliant labels (`version`, `maintainer`, `description`, etc.)
- **Size**: ~20MB
- **Version**: `0.1.0`

---

## 🚀 Usage

### Build Locally

```bash
docker build -t docker‑qa‑demo:0.1.0 .
```
### Run & Validate
```bash
docker run --rm -it docker‑qa‑demo:0.1.0 /bin/sh
./hello.sh
```

Expected output: *hello from qa test automation demo container – version 0.1.0*

### Publish to GHCR
```bash
docker tag docker‑qa‑demo:0.1.0 ghcr.io/krishnaharshap/docker‑qa‑demo:0.1.0
docker login ghcr.io
docker push ghcr.io/krishnaharshap/docker‑qa‑demo:0.1.0
```

*Note: Ensure GHCR visibility is set to public if you wish to share the image.*

## 🧩 Extending the Image

* Add test frameworks (e.g., Selenium, Playwright)
* Integrate with CI/CD pipelines (GitHub Actions, Jenkins)
* Implement health checks and multi-architecture support

## 📄 License

MIT License

## 📌 Metadata

Maintainer: Krishna Harsha P

Version: 0.1.0

Description: QA Test Automation Demo Container

Homepage: https://github.com/krishnaharshap/docker‑qa‑demo

License: MIT