import { Aluno } from './aluno';

export class AlunoService {
  alunos: Aluno[] = [];
<<<<<<< HEAD
  gravar(aluno: Aluno): void {
     this.alunos.push(aluno);
=======

  criar(aluno: Aluno): Aluno {
    aluno = aluno.clone();
    var result = null;
    if (this.cpfNaoCadastrado(aluno.cpf)) {
      this.alunos.push(aluno);
      result = aluno;
    }
    return result;
  }

  cpfNaoCadastrado(cpf: string): boolean {
     return !this.alunos.find(a => a.cpf == cpf);
  }

  atualizar(aluno: Aluno): void {
    aluno = aluno.clone();
    for (let a of this.alunos) {
        if (a.cpf == aluno.cpf) {
           a.metas = aluno.metas;
        }
    }
>>>>>>> 3d64e16... modularizando o componente principal
  }

  getAlunos(): Aluno[] {
    var result: Aluno[] = [];
    for (let a of this.alunos) {
      result.push(a.clone());
    }
    return result;
  }

  getAlunos(): Aluno[] {
    var result: Aluno[] = [];
    for (let a of this.alunos) {
      result.push(a.clone());
    }
    return result;
  }

  getAlunos(): Aluno[] {
    var result: Aluno[] = [];
    for (let a of this.alunos) {
      result.push(a.clone());
    }
    return result;
  }
}
