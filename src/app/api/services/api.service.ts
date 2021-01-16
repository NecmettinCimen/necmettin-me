import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { CommonApiResponse } from './models/commonApiResponse';

@Injectable({
  providedIn: 'root'
})
export class ApiService {

  constructor(public httpClient: HttpClient) { }

  async get(url: string) {
    console.log("get", url)
    var response = await this.httpClient.get<CommonApiResponse>(url).toPromise();
    console.log("get-response", response)
    if (response.Success) {
      return response.Result
    } else {
      console.error(response.ErrorMessage);

      return null;
    }
  }

  async post(url: string, model: any) {
    var response = await this.httpClient.post<CommonApiResponse>(url, model).toPromise();
    if (response.Success) {
      return response.Result
    } else {
      console.error(response.ErrorMessage);

      return null;
    }
  }
  async put(url: string, model: any) {
    var response = await this.httpClient.put<CommonApiResponse>(url, model).toPromise();
    if (response.Success) {
      return response.Result
    } else {
      console.error(response.ErrorMessage);

      return null;
    }
  }
  async delete(url: string) {
    var response = await this.httpClient.delete<CommonApiResponse>(url).toPromise();
    if (response.Success) {
      return response.Result
    } else {
      console.error(response.ErrorMessage);

      return null;
    }
  }
}
