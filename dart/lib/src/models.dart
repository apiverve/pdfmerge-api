/// Response models for the PDF Merge API.

/// API Response wrapper.
class PdfmergeResponse {
  final String status;
  final dynamic error;
  final PdfmergeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  PdfmergeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory PdfmergeResponse.fromJson(Map<String, dynamic> json) => PdfmergeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? PdfmergeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the PDF Merge API.

class PdfmergeData {
  String? pdfName;
  num? fileCount;
  num? pageCount;
  num? size;
  num? expires;
  String? downloadURL;
  List<PdfmergeDataSourcesItem>? sources;

  PdfmergeData({
    this.pdfName,
    this.fileCount,
    this.pageCount,
    this.size,
    this.expires,
    this.downloadURL,
    this.sources,
  });

  factory PdfmergeData.fromJson(Map<String, dynamic> json) => PdfmergeData(
      pdfName: json['pdfName'],
      fileCount: json['fileCount'],
      pageCount: json['pageCount'],
      size: json['size'],
      expires: json['expires'],
      downloadURL: json['downloadURL'],
      sources: (json['sources'] as List?)?.map((e) => PdfmergeDataSourcesItem.fromJson(e)).toList(),
    );
}

class PdfmergeDataSourcesItem {
  num? index;
  String? name;
  num? pageCount;
  num? startPage;
  num? endPage;

  PdfmergeDataSourcesItem({
    this.index,
    this.name,
    this.pageCount,
    this.startPage,
    this.endPage,
  });

  factory PdfmergeDataSourcesItem.fromJson(Map<String, dynamic> json) => PdfmergeDataSourcesItem(
      index: json['index'],
      name: json['name'],
      pageCount: json['pageCount'],
      startPage: json['startPage'],
      endPage: json['endPage'],
    );
}

class PdfmergeRequest {
  List<String>? urls;

  PdfmergeRequest({
    this.urls,
  });

  Map<String, dynamic> toJson() => {
      if (urls != null) 'urls': urls,
    };
}
