import { Injectable } from '@angular/core';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class ParametersService {

  constructor(private apiService: ApiService) { }

  async GetAll(skip:number = 0) {
    return await this.apiService.get(`/api/v1/Parameter?RequireTotalCount=true&Skip=${skip*10}&Take=100`);
  }
}
