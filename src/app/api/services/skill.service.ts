import { Injectable } from '@angular/core';
import { ApiService } from './api.service';

@Injectable({
  providedIn: 'root'
})
export class SkillService {

  constructor(private apiService: ApiService) { }

  async First5() {
    return (await this.apiService.get(`/api/v1/Skill?Skip=0&Take=5`)).data;
  }
}
