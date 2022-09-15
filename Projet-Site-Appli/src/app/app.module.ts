import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {MatGridListModule} from '@angular/material/grid-list';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AcceuilComponent } from './acceuil/acceuil.component';
import {MatCardModule} from "@angular/material/card";
import { EntrainementComponent } from './entrainement/entrainement.component';

@NgModule({
  declarations: [
    AppComponent,
    AcceuilComponent,
    EntrainementComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    MatGridListModule,
    MatCardModule,
  ],

  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
