# FIAP - Faculdade de Informática e Administração Paulista 

<p align="center">
  <a href="https://www.fiap.com.br/">
    <img width="40%" height="642" alt="logo-fiap" src="https://github.com/user-attachments/assets/5e804a5c-baa5-4273-9eff-91ef3ea86aed" />
  </a>
</p>

<br>

# 🌡️ Projeto de Monitoramento de Máquinas Industriais com Sensores
## 👨‍🎓 Integrantes: 
- <a href="https://github.com/AntonioBarros19">Antônio Ancelmo Neto barros</a>
```
 - RM: rm563683
 - E-mail: antonio.anbarros@gmail.com
 - GitHub: @AntonioBarros19
```
- <a href="https://github.com/BPilecarte">Beatriz Pilecarte de Melo</a>
```
 - RM: rm564952
 - E-mail: beatrizpilecartedemelo@gmail.com
 - GitHub: @BPilecarte
```
- <a href="https://github.com/yggdrasilGit">Francismar Alves Martins Junior</a>
```
 - RM: m562869
 - E-mail: yggdrasil.git@gmail.com
 - GitHub: @yggdrasilGit
```
- <a href="https://github.com/matheusbento04">Matheus Soares Bento da Silva</a>
```
 - RM: rm565540
 - E-mail: matheusbento044@gmail.com
 - GitHub: matheusbento044
```
- <a href="https://github.com/Vitor985-hub">Vitor Eiji Fernandes Teruia</a>
```
- RM: rm563683
- E-mail: vitorfer2018@gmail.com
- GitHub: @Vitor985-hub
```
</br>

## 👩‍🏫 Professores:
### Tutor(a) 
- <a href="https://www.linkedin.com/in/leonardoorabona/">Leonardo Ruiz Orabona</a>
### Coordenador(a)
- <a href="https://www.linkedin.com/company/inova-fusc">André Godoi Chiovato</a>

</br>

## 📜 Descrição

Este repositório contém o modelo de dados fundamental para o sistema de monitoramento e gestão de máquinas industriais. Projetado para coleta contínua de dados, gerenciamento de ativos e controle de acesso multi-empresa, este esquema de banco de dados é a base para as operações da plataforma.

</br>

## Visão Geral do Modelo

O modelo é estruturado para garantir a integridade, escalabilidade e segurança dos dados, com foco nas seguintes entidades principais:

``EMPRESAS_CLIENTES:`` Gerencia informações detalhadas das empresas que utilizam a plataforma, servindo como a entidade raiz para segregação de dados.

``MAQUINAS:`` Armazena as características e o status das máquinas industriais monitoradas, vinculadas às respectivas empresas clientes.

``SENSORES:`` Detalha os sensores acoplados a cada máquina, incluindo tipo de medição e unidade, essencial para a interpretação dos dados.

``LEITURA_SENSORES:`` Registra as leituras de dados brutos dos sensores em tempo real, com timestamp preciso e valores numéricos adequados para análises.

``PERFIS:`` Define os diferentes níveis de acesso e papéis de usuário dentro da plataforma (ex: Administrador da Plataforma, Administrador da Empresa, Funcionário).

``USUARIOS:`` Contém as informações de todos os usuários da plataforma, vinculando-os a um perfil e a uma empresa cliente.

``PERMISSOES_MAQUINA_USUARIO:`` Estabelece um controle de acesso granular, especificando quais máquinas cada usuário pode monitorar.

``ALERTAS:`` Registra eventos críticos e anomalias detectadas, com detalhes de severidade, máquina e sensor envolvidos.

</br>

## 💡 Imagem do Modelo Lógico

<img width="765" height="611" alt="logical_model_db" src="https://github.com/user-attachments/assets/f5570e8b-9a1e-47c5-88bb-fc19f44a966c" />


</br>

## 🤝 Imagem do Modelo Relacional

<img width="1044" height="768" alt="relational_model_db" src="https://github.com/user-attachments/assets/6089d9aa-c06d-4cf8-aded-772ab62cdb2e" />

---

## 📋 Licença

<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><p xmlns:cc="http://creativecommons.org/ns#" xmlns:dct="http://purl.org/dc/terms/"><a property="dct:title" rel="cc:attributionURL" href="https://github.com/agodoi/template">MODELO GIT FIAP</a> por <a rel="cc:attributionURL dct:creator" property="cc:attributionName" href="https://fiap.com.br">Fiap</a> está licenciado sobre <a href="http://creativecommons.org/licenses/by/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">Attribution 4.0 International</a>.</p>
