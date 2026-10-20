/**
 * PDF Merge API - Basic Usage Example
 *
 * This example demonstrates the basic usage of the PDF Merge API.
 * API Documentation: https://docs.apiverve.com/ref/pdfmerge
 */

const API_KEY = process.env.APIVERVE_API_KEY || 'YOUR_API_KEY_HERE';
const API_URL = 'https://api.apiverve.com/v1/pdfmerge';

/**
 * Make a POST request to the PDF Merge API
 */
async function callPDFMergeAPI() {
  try {
    // Request body
    const requestBody &#x3D; {
    &quot;urls&quot;: [
        &quot;https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/rotation.pdf&quot;,
        &quot;https://raw.githubusercontent.com/mozilla/pdf.js/master/test/pdfs/sizes.pdf&quot;
    ]
};

    const response = await fetch(API_URL, {
      method: 'POST',
      headers: {
        'x-api-key': API_KEY,
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(requestBody)
    });

    // Check if response is successful
    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status}`);
    }

    const data = await response.json();

    // Check API response status
    if (data.status === 'ok') {
      console.log('✓ Success!');
      console.log('Response data:', data.data);
      return data.data;
    } else {
      console.error('✗ API Error:', data.error || 'Unknown error');
      return null;
    }

  } catch (error) {
    console.error('✗ Request failed:', error.message);
    return null;
  }
}

// Run the example
callPDFMergeAPI()
  .then(result => {
    if (result) {
      console.log('\n📊 Final Result:');
      console.log(JSON.stringify(result, null, 2));
    }
  });
