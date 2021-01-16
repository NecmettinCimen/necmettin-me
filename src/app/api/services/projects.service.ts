import { Injectable } from '@angular/core';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class ProjectsService {

  constructor(private apiService: ApiService) { }

  async First3() {
    return (await this.apiService.get(`/api/v1/Project?Skip=0&Take=3`)).data;
  }
  
  async GetAll(skip:number = 0) {
    return await this.apiService.get(`/api/v1/Project?RequireTotalCount=true&Skip=${skip*10}&Take=100`);
  }
}
