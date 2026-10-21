# PDF Merge API - PHP Package

PDF Merge combines 2 to 10 PDFs into one file, keeping their order, and returns a download link valid for 2 days. Upload the files or send their URLs. Paid plans add a breakdown of where each source document starts and ends in the merged file.

## Installation

Install via Composer:

```bash
composer require apiverve/pdfmerge
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Pdfmerge\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['urls' => https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf,https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf]);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Pdfmerge\Client;
use APIVerve\Pdfmerge\Exceptions\APIException;
use APIVerve\Pdfmerge\Exceptions\ValidationException;

try {
    $response = $client->execute(['urls' => https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf,https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pdfmerge?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pdfmerge?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pdfmerge?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
