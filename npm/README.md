# PDF Merge API

PDF Merge combines 2 to 10 PDFs into one file, keeping their order, and returns a download link valid for 2 days. Upload the files or send their URLs. Paid plans add a breakdown of where each source document starts and ends in the merged file.

[![npm version](https://img.shields.io/npm/v/@apiverve/pdfmerge.svg)](https://www.npmjs.com/package/@apiverve/pdfmerge)

This is a JavaScript wrapper for the [PDF Merge API](https://apiverve.com/marketplace/pdfmerge?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/pdfmerge
```

Using yarn:
```shell
yarn add @apiverve/pdfmerge
```

---

## Configuration

Before using the PDF Merge API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The PDF Merge API documentation is found here: [https://docs.apiverve.com/ref/pdfmerge](https://docs.apiverve.com/ref/pdfmerge?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const pdfmergeAPI = require('@apiverve/pdfmerge');
const api = new pdfmergeAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

### File Upload

This API requires a file upload. Use `executeWithFile()` to upload files:

```javascript
// Upload a file (path, Buffer, or ReadStream)
api.executeWithFile('/path/to/file.pdfs', options, callback);
```

**Accepted file types:** .pdf
**Maximum file size:** 25 MB

### Available Parameters

Pass additional parameters via `options.fields`:

| Parameter | Type | Description |
|-----------|------|-------------|
| `urls` | array | A JSON array of 2 to 10 public PDF URLs, merged in order. Or upload the PDFs as multipart files instead |

```javascript
api.executeWithFile('/path/to/file', {
    fields: {
        urls: 'urls'
    }
});
```

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/pdfs.pdf';

api.executeWithFile(filePath,
    {
        fields: {
        urls: 'urls'
        }
    }, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/pdfs.pdf';

api.executeWithFile(filePath, { fields: { /* parameters */ } })
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    // This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/pdfs.pdf';

    try {
        const data = await api.executeWithFile(filePath, { fields: { /* parameters */ } });
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
