import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {AcceuilComponent} from "./acceuil/acceuil.component";
import {EntrainementComponent} from "./entrainement/entrainement.component";

const routes: Routes = [
  {path: '', component: AcceuilComponent},
  {path: 'entrainement', component: EntrainementComponent},

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
