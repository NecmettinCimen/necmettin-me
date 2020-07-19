import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Injectable({
  providedIn: 'root',
})
export class ApiUtilService {
  // baseUrl: string = 'https://localhost:5001';
  baseUrl: string = 'https://necsys.azurewebsites.net';

  constructor(private http: HttpClient) {}

  public async get<T>(url: string) {
    return await this.http.get<T>(this.baseUrl + url).toPromise();
  }

  public async post<T>(url: string, model: any) {
    const header = new HttpHeaders().set('Content-type', 'application/json');
    const body = JSON.stringify(model);
    return await this.http
      .post<T>(this.baseUrl + url, body, { headers: header })
      .toPromise();
  }

  public async delete<T>(url: string) {
    return await this.http.delete<T>(this.baseUrl + url).toPromise();
  }
}
