# Análise Estratégica da Matriz Renovável no Brasil (Solar & Eólica)


Este projeto de Business Intelligence oferece uma análise estratégica da capacidade instalada de energia solar e eólica no Brasil, transformando dados públicos da ANEEL em um dashboard interativo para tomada de decisão.

---

## 1. Problema de Negócio

O setor de energia renovável no Brasil vive um crescimento exponencial, tornando-se cada vez mais complexo. Para investidores, gestores de políticas públicas e empresas do setor, os dados brutos da ANEEL, embora completos, não oferecem respostas rápidas para questões críticas.

Este projeto foi desenvolvido para resolver essa lacuna, respondendo à pergunta de negócio central:

	** "Qual é o panorama da capacidade instalada de energia solar e eólica no Brasil, quais são seus principais vetores de crescimento e os desafios para a expansão futura?"**

O objetivo é transformar a massa de dados em uma ferramenta de inteligência visual que permita a qualquer stakeholder:
	* **Identificar Oportunidades**, ao visualizar rapidamente os estados e regiões com maior crescimento e potencial.
	* **Compreender Estratégias**, ao analisar a dinâmica de especialização e o perfil de investimento de cada região.
	* **Avaliar o Potencial**, ao quantificar o pipeline de projetos futuros e entender a natureza da expansão do setor.



---



## 2. Contextos

#### Contexto de Mercado
O projeto se insere em um cenário global de transição energética. O Brasil, com seu vasto potencial em recursos solar e eólico, é um player fundamental. No entanto, o crescimento acelerado traz desafios, como o **`curtailment`** (redução forçada da geração por falta de infraestrutura de transmissão), que já representa um risco para a viabilidade de novos projetos e foi um ponto de atenção nesta análise.

#### Contexto dos Dados
* **Fonte:** Sistema de Informações de Geração da ANEEL (SIGA), com data de referência de 01 de setembro de 2025.
* **Escopo:** A base de dados contempla todas as usinas outorgadas pela ANEEL, incluindo projetos de Geração Centralizada (Autorização/Concessão) e de Geração Distribuída (Registro). Uma descoberta chave da análise é que, embora a Geração Distribuída domine em número de usinas, o volume de potência (GW) neste dataset é majoritariamente representado pelos grandes projetos de Geração Centralizada.


---

## 3. Estratégias, Oportunidades e Potenciais Descobertos (Insights)

As principais descobertas estratégicas geradas a partir do dashboard foram:

**1. Oportunidade na Especialização Geográfica e o "Boom" Solar:**
  	 * A análise revela uma forte **oportunidade de investimento** baseada na especialização regional. A **estratégia** do Nordeste é de domínio absoluto em energia eólica(representando mais de 90% da potência eólica do país), enquanto a solar, mais distribuída, aponta fortemente para o Sudeste (com Minas Gerais à frente) como um polo de crescimento. O **potencial** da fonte solar é evidenciado pela aceleração exponencial do crescimento da capacidade instalada a partir de 2021.

**2. Duas Estratégias de Desenvolvimento (O Paradoxo do Norte):**
  	 * O dashboard revela duas **estratégias** de desenvolvimento distintas no país. A região Norte foca em um modelo de **capilaridade**, concentrando a grande maioria das usinas em número (mais de 70% do total), mas com mínima contribuição em potência (menos de 1% do total em GW). Em contraste, o Nordeste e o Sudeste adotam uma **estratégia de escala**, focando em mega-projetos de Geração Centralizada que representam o verdadeiro volume de potência. Isso sinaliza diferentes **oportunidades** de negócio em cada região.

**3. O Desafio da Expansão Futura (Contextualizando o Pipeline de Projetos):**
   	* O dashboard quantifica um enorme **potencial** de crescimento, com mais de **140 GW em projetos planejados** no pipeline da ANEEL. No entanto, ao cruzar este dado com o cenário de mercado, a análise revela um **desafio estratégico** crucial: a infraestrutura de transmissão. O fenômeno do `curtailment` (a necessidade de desligar usinas por falta de capacidade de escoamento), reportado pelo setor, representa o principal risco para que este potencial de 140 GW se converta em realidade.


---

## 4. Estratégia da Solução

O projeto foi executado seguindo o ciclo de vida completo de um projeto de BI, dividido em quatro etapas principais:

**1. Extração e Limpeza (ETL) no Power Query:**
   * O arquivo `.csv` original da ANEEL apresentava desafios significativos, como separadores de milhar e decimal no padrão brasileiro, erros de tipo e valores nulos. Foi aplicado um processo de limpeza robusto para garantir a qualidade e a precisão da análise.

**2. Modelagem de Dados:**
   * Foi implementado um **Modelo Estrela (Star Schema)** com uma tabela fato (`fGeracao`) e quatro dimensões (`dLocalizacao`, `dFonte`, `dUsina`, `dTipoAtuacao`) para otimizar a performance das consultas e a clareza do modelo analítico.

**3. Criação de Medidas (DAX):**
   * A inteligência do dashboard foi construída com um conjunto de medidas DAX robustas. O trabalho incluiu:
     * A criação dos KPIs estratégicos (`Potência em Operação`, `Potência Planejada`) utilizando a função `CALCULATE` para aplicar contextos de negócio específicos.
     * O desenvolvimento de medidas de performance, para comparar o planejado (Outorgada) vs. o realizado (Fiscalizada).
     * A implementação de medidas flexíveis para a página de Catálogo, que se adaptam em tempo real aos filtros selecionados pelo usuário.

**4. Visualização e Storytelling (Power BI):**
   * O dashboard foi estruturado em uma narrativa visual de 4 páginas (Resumo, Análise Geográfica, Análise Estratégica e Catálogo) para guiar o usuário de uma visão macro para o detalhe, usando princípios de design para destacar os insights.

### Otimização do Processo com VBA (Estudo de Caso Pós-Projeto): 

Após a finalização do dashboard, identifiquei uma oportunidade de aprimorar o fluxo de trabalho. Como um estudo prático para desenvolver minhas habilidades em automação, criei uma macro em VBA para otimizar a etapa inicial de extração de dados. Esta automação realiza as seguintes tarefas:

* Filtra a base de dados completa para isolar apenas as usinas de fonte 'Solar' e 'Eólica.
* Exporta o resultado para uma aba dedicada ('Filtro'), criando um dataset pronto para ser consumido pelo Power Query.

Esta etapa adicional demonstra como um processo manual pode ser transformado em uma solução automatizada, tornando futuras atualizações do dashboard mais rápidas e menos suscetíveis a erros.
---

## 5. Ferramentas Utilizadas

* **Power Query**
* **VBA e Macro**
* **DAX (Data Analysis Expressions)**
* **Microsoft Power BI**

---
## Arquivos do Projeto

Neste repositório, você encontrará dois formatos principais:

* Automação em Excel

* **Automacao_Energia_Solar_Eolica.xlsm:** A ferramenta Excel que contém a macro, os dados brutos e o botão de execução para extrair os dados solares e eólicos.
* **FiltroEnergiaSolarEolica.bas:** O arquivo de código-fonte da macro, exportado para fácil visualização diretamente no GitHub.

* Dashboard em Power BI

* **`.pbip` (Power BI Project):** Este é o arquivo fonte principal, ideal para versionamento e para visualizar as mudanças no código DAX.
* **`.pbix` (Power BI Desktop):** Uma versão compilada do projeto para fácil visualização por qualquer pessoa que tenha o Power BI Desktop instalado.

## 👤 Autor

* **[Matheus Rodrigues Lopes]**
* **LinkedIn:** [https://www.linkedin.com/in/matheuslopesr/]
* **GitHub:** [https://github.com/mrlopes15]
