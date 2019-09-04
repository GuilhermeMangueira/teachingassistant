COMO um estudante
EU QUERO poder avaliar meu desenvolvimento na disciplina atribuindo  conceitos a cada uma das metas DE FORMA A ampliar meu conhecimento em cada conceito e ter participação no valor final da minha nota.

Cenario:preenchimento de auto avaliacao
GIVEN eu estou logado como “Jorge” e eu estou na tela de avaliação
AND eu consigo ver as avaliações do professor
WHEN eu atribuo os conceitos “MANA”,”MPA” e “MPA” para as metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” respectivamente e confirmo minha avaliação
THEN eu consigo ver o resultado final da minha avaliação e do professor nos requisitos “Entender conceitos de requisitos”, “Especificar requisitos com qualidade” e“Entender conceitos de gerência de configuração”

Cenario: Preenchimento de auto avaliação
GIVEN o estudante “Jorge” está cadastrado
AND possui as avaliações “MA”,”MA” e”MPA” nas metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” respectivamente
WHEN os conceitos “MA”, “MPA”, “MA” são inseridos pelo aluno “Jorge” nas metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” respectivamente
THEN o resultado final das metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” é calculado e exibido.

Cenario: Aluno não preenche uma das notas
GIVEN eu estou logado como“Jorge” e estou na tela de auto avaliação
AND possui as avaliações “MA”,”MA” e”MPA” nas metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” respectivamente dadas pelo professor.
WHEN eu atribuo “MA” e “MPA” para as metas “Entender conceitos de requisitos”e “Especificar requisitos com qualidade” respectivamente e confirmo minha avaliação
THEN minha auto avaliação não foi cadastrada e consigo ver uma mensagem de erro

Cenario : uma das auto avaliações não foi fornecida
GIVEN o estudante “Jorge” está cadastrado
AND possui as avaliações “MA”,”MA” e”MPA” nas metas “Entender conceitos de requisitos”, “Especificar requisitos com qualidade”, “Entender conceitos de gerência de configuração” fornecidas pelo professor
WHEN “Jorge” atribui notas “MPA” e “Mana”para “Entender conceitos de requisitos” e  “Especificar requisitos com qualidade”
THEN a avaliação não é computada e é exibida uma mensagem de erro.

Cenario: lista de alunos sem auto avaliação discrepante
GIVEN eu estou logado como o professor “Paulo”
AND eu já atribuí as notas dos alunos “Roberto”, “Arthur” e “Laura”, com “MA,MANA,MA,MA,MPA” , “MA,MPA,MPA,MA,MA” e “MA,MA,MA,MA,MA” respectivamente
AND os alunos “Roberto”, “Arthur” e “Laura” se auto avaliaram com as notas “MA,MANA,MA,MA,MPA”, “MA, MA, MPA,MA,MA” e “MPA,MPA,MPA,MPA,MPA,MANA”, respectivamente.
WHEN eu visualizo a lista de estudantes, eu posso ver que não há discrepâncias nas avaliações

Cenario: lista de alunos com  auto avaliação discrepante
GIVEN eu estou logado como o professor “Paulo”
AND eu já atribuí as notas dos alunos “Roberto”, “Arthur” e “Laura”, com “MA,MANA,MA,MA,MPA” , “MA,MPA,MPA,MA,MA” e “MA,MA,MA,MA,MA” respectivamente
AND os alunos “Roberto”, “Arthur” e “Laura” se auto avaliaram com as notas “MA,MANA,MA,MA,MPA”, “MA, MA, MA,MA,MA” e “MPA,MPA,MPA,MPA,MPA,MANA”, respectivamente.
WHEN eu visualizo a lista de estudantes, eu posso ver que o aluno “Arthur” está na lista de discrepância, com 40% de discrepância nas notas 

