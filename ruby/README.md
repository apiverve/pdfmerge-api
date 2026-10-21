# PDF Merge API - Ruby Gem

PDF Merge combines 2 to 10 PDFs into one file, keeping their order, and returns a download link valid for 2 days. Upload the files or send their URLs. Paid plans add a breakdown of where each source document starts and ends in the merged file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_pdfmerge'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_pdfmerge
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_pdfmerge'

# Initialize the client
client = APIVerve::Pdfmerge::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ urls: https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf,https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf })

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ urls: https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf,https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf })
  puts response["data"]
rescue APIVerve::Pdfmerge::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Pdfmerge::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Pdfmerge::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/pdfmerge?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/pdfmerge?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/pdfmerge?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
