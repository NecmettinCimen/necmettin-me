import { Injectable } from '@angular/core';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class ContactService {

  constructor(private apiService: ApiService) { }
  
  async Send(model:any){
    return await this.apiService.post("/api/v1/Contact",model);
  }
}
