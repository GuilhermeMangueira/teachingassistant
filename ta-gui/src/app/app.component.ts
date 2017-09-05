import { Component } from '@angular/core';
import { NgModule } from '@angular/core';

import { Aluno } from './aluno';
import { AlunoService } from './aluno.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
   aluno: Aluno = {nome: "", cpf: "", email: ""};
   alunoService = new AlunoService();
   alunos: Aluno[] = [];
<<<<<<< HEAD

   gravar(a: Aluno): void {
     this.alunoService.gravar(a);
     this.alunos.push(a);
     this.aluno = {nome: "", cpf: "", email: ""};
  }
=======
   cpfduplicado: boolean = false;

   criarAluno(a: Aluno): void {
     if (this.alunoService.criar(a)) {
       this.alunos.push(a);
       this.aluno = new Aluno();
     } else {
       this.cpfduplicado = true;
     }
   }

   onMove(): void {
      this.cpfduplicado = false;
   }

>>>>>>> 3d64e16... modularizando o componente principal
}
