PDF Merge API
============

PDF Merge combines 2 to 10 PDFs into one file, keeping their order, and returns a download link valid for 2 days. Upload the files or send their URLs. Paid plans add a breakdown of where each source document starts and ends in the merged file.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-pdfmerge.svg)](https://pypi.org/project/apiverve-pdfmerge/)

This is a Python wrapper for the [PDF Merge API](https://apiverve.com/marketplace/pdfmerge?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-pdfmerge
```

Using `pip3`:

```bash
pip3 install apiverve-pdfmerge
```

---

## Configuration

Before using the PDF Merge API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient

# Initialize the client with your APIVerve API key
api = PdfmergeAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

try:
    # Make the API call
    result = api.execute_with_file(files)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The PDF Merge API documentation is found here: [https://docs.apiverve.com/ref/pdfmerge](https://docs.apiverve.com/ref/pdfmerge?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient

# Initialize the client with your APIVerve API key
api = PdfmergeAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute_with_file(files)

# Print the result
print(result)
```

###### Example Response

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

## Error Handling

The API client provides comprehensive error handling through the `PdfmergeAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient, PdfmergeAPIClientError

api = PdfmergeAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except PdfmergeAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient, PdfmergeAPIClientError

api = PdfmergeAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except PdfmergeAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient, PdfmergeAPIClientError

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

# Using context manager ensures proper cleanup
with PdfmergeAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except PdfmergeAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient

# Enable debug mode
api = PdfmergeAPIClient("[YOUR_API_KEY]", debug=True)

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_pdfmerge.apiClient import PdfmergeAPIClient

api = PdfmergeAPIClient("[YOUR_API_KEY]")

# This API requires a file upload
files = { "pdfs": open("/path/to/image.jpg", "rb") }

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
