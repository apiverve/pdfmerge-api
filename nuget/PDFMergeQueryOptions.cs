using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PDFMerge
{
    /// <summary>
    /// Query options for the PDF Merge API
    /// </summary>
    public class PDFMergeQueryOptions
    {
        /// <summary>
        /// A JSON array of 2 to 10 public PDF URLs, merged in order. Or upload the PDFs as multipart files instead
        /// </summary>
        [JsonProperty("urls")]
        public List<string>? Urls { get; set; }
    }
}
