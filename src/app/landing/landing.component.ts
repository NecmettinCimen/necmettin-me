import { Component, OnInit } from '@angular/core';
import { ApiUtilService } from 'src/services/api-util.service';
import { VeriModel } from 'src/models/verimodel';

@Component({
    selector: 'app-landing',
    templateUrl: './landing.component.html',
    styleUrls: ['./landing.component.scss']
})

export class LandingComponent implements OnInit {
  focus: any;
  focus1: any;
  anasayfaBolumler:VeriModel = new VeriModel;
  anasayfaGiris:VeriModel= new VeriModel;
  nelerYapiyorum:VeriModel= new VeriModel;
  kisiKarti:VeriModel= new VeriModel;
  hakkimda:VeriModel= new VeriModel;
  iletisim:VeriModel= new VeriModel;

  constructor(private apiUtil:ApiUtilService) {
  }

  ngOnInit() {
    this.getAnasayfaBolumler()
    this.getAnasayfaGiris()
    this.getNelerYapiyorum()
    this.getKisiKarti()
    this.getHakkimda()
    this.getIletisim()
  }

  private async getAnasayfaBolumler(){
    this.anasayfaBolumler = await this.apiUtil.get(`/Veri/Anasayfa Bolumler`)
  }
  private async getAnasayfaGiris(){
    this.anasayfaGiris = await this.apiUtil.get(`/Veri/Anasayfa Giris`)
  }
  private async getNelerYapiyorum(){
    this.nelerYapiyorum = await this.apiUtil.get(`/Veri/Neler Yapıyorum`)
  }
  private async getKisiKarti(){
    this.kisiKarti = await this.apiUtil.get(`/Veri/Kisi Karti`)
  }
  private async getHakkimda(){
    this.hakkimda = await this.apiUtil.get(`/Veri/Anasayfa Hakkimda`)
  }
  private async getIletisim(){
    this.iletisim = await this.apiUtil.get(`/Veri/Anasayfa iletisim`)
  }

}
