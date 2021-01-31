import { environment } from './../../environments/environment';
import { ContactService } from './../api/services/contact.service';
import { SkillService } from './../api/services/skill.service';
import { ProjectsService } from './../api/services/projects.service';
import { Component, OnInit } from '@angular/core';
import { ParametersService } from '../api/services/parameters.service';

@Component({
  selector: 'app-landing',
  templateUrl: './landing.component.html',
  styleUrls: ['./landing.component.scss']
})

export class LandingComponent implements OnInit {
  env:any=environment
  focus: any;
  focus1: any;
  loading: boolean = true
  parameters: any = null;
  projects: Array<any> = null;
  skills: Array<any> = null;
  contact: any = { name: null, email: null, msg: null }
  contactSendSucess: boolean = null;

  constructor(private parametersService: ParametersService,
    private projectsService: ProjectsService,
    private skillService: SkillService,
    private contactService: ContactService) { }

  ngOnInit() {
    this.getParameters()
  }

  private async getParameters() {
    this.parameters = await this.parametersService.GetAll()
    this.loading = false
    this.projects = await this.projectsService.First3()
    this.skills = await this.skillService.First5()
  }

  getParameter(code: string) {
    if (this.loading)
      return ""
    else {
      var item = this.parameters.data.find(f => f.Code == code)
      if (item)
        return item.Value
    }

  }

  async contactsend() {
    try {
      await this.contactService.Send(this.contact);
      this.contactSendSucess = true;
      this.contact = { name: null, email: null, msg: null }

    } catch (error) {
      this.contactSendSucess = false;
    }

  }

}
