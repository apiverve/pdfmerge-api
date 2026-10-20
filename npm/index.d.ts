declare module '@apiverve/pdfmerge' {
  export interface pdfmergeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface pdfmergeResponse {
    status: string;
    error: string | null;
    data: PDFMergeData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface PDFMergeData {
      pdfName:     null | string;
      fileCount:   number | null;
      pageCount:   number | null;
      size:        number | null;
      expires:     number | null;
      downloadURL: null | string;
      sources:     Source[];
  }
  
  interface Source {
      index:     number | null;
      name:      null | string;
      pageCount: number | null;
      startPage: number | null;
      endPage:   number | null;
  }

  export default class pdfmergeWrapper {
    constructor(options: pdfmergeOptions);

    execute(callback: (error: any, data: pdfmergeResponse | null) => void): Promise<pdfmergeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: pdfmergeResponse | null) => void): Promise<pdfmergeResponse>;
    execute(query?: Record<string, any>): Promise<pdfmergeResponse>;
  }
}
