# [PDF Merge API](https://apiverve.com/marketplace/pdfmerge?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

PDF Merge combines 2 to 10 PDFs into one file, keeping their order, and returns a download link valid for 2 days. Upload the files or send their URLs. Paid plans add a breakdown of where each source document starts and ends in the merged file.

The PDF Merge API provides a simple, reliable way to integrate pdf merge functionality into your applications. Built for developers who need production-ready pdf merge capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/pdfmerge?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/pdfmerge?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/pdfmerge)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.PDFMerge)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-pdfmerge/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_pdfmerge)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/pdfmerge)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_pdfmerge)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callPDFMergeAPI() {
    try {
        const requestBody = {
    "urls": [
        "https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf",
        "https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf"
    ]
};

        const response = await fetch('https://api.apiverve.com/v1/pdfmerge', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callPDFMergeAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/pdfmerge" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "pdfs=@/path/to/your-file"
# Accepted formats: .pdf (max 25MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/pdfmerge
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/pdfmerge) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.PDFMerge
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.PDFMerge) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-pdfmerge
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-pdfmerge/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_pdfmerge
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_pdfmerge) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/pdfmerge
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/pdfmerge) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_pdfmerge
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_pdfmerge) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:pdfmerge-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/pdfmerge-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [PDF Merge API](https://apiverve.com/marketplace/pdfmerge?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/pdfmerge](https://docs.apiverve.com/ref/pdfmerge)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The PDF Merge API is commonly used for:

- **Web Applications** - Add pdf merge features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with pdf merge capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the PDF Merge API:

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "pdfName": "a356acc9-c44f-4363-9cda-14ed160d5f5d.pdf",
    "fileCount": 2,
    "pageCount": 5,
    "size": 13539,
    "expires": 1792230036453,
    "downloadURL": "https://storage.googleapis.com/apiverve/APIData/pdfmerge/a356acc9-c44f-4363-9cda-14ed160d5f5d.pdf?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1792230036&Signature=R5%2B9%2FIKgsCiWQ7ibAS4Z%2B%2FLpYbNYc7hbAQGI%2FUtvmietXWHJxZK9x4%2FYYdLR6OXAVfvasiSNV2S8iie1Hz7xBGlTJMN8db%2BJ2tkE7GTnOXItMqMU8nuB0z6eddkoQmBESG8EOBr3AEG4x7XaEmP47FqUFsWoikKL2yhwZ9VHL%2F5ANZbvYnfbY1WBjVVOY4wQE1T6CDHM6En2Ov%2FzbTUENH7dasoIaJKWCXa7b1hBhc5MLOMB0MUQWRjb3cVoTHkZ1IRKh3InOdUduyORXOJpwLBTfLu6Q7%2FMEASTXd2j1N9F3OSJ7LYpOfiVhSvA%2FIW6CT2srzKniP5KgeX%2BYKTnNQ%3D%3D",
    "sources": [
      {
        "index": 1,
        "name": "rotation.pdf",
        "pageCount": 2,
        "startPage": 1,
        "endPage": 2
      },
      {
        "index": 2,
        "name": "sizes.pdf",
        "pageCount": 3,
        "startPage": 3,
        "endPage": 5
      }
    ]
  }
}
```

---

## Support & Community

- 🏠 **API Home**: [PDF Merge API](https://apiverve.com/marketplace/pdfmerge?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
