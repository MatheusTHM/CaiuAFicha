-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Nov-2019 às 15:15
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caf`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `antecedente`
--

CREATE TABLE `antecedente` (
  `ante_cod` int(11) NOT NULL,
  `ante_nome` varchar(30) DEFAULT NULL,
  `ante_text` text,
  `ante_caracteristica` text,
  `ante_caracteristica_nome` varchar(30) DEFAULT NULL,
  `ante_proficiencias` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `antecedente`
--

INSERT INTO `antecedente` (`ante_cod`, `ante_nome`, `ante_text`, `ante_caracteristica`, `ante_caracteristica_nome`, `ante_proficiencias`) VALUES
(1, 'Acólito', 'Você viveu a serviço de um templo de algum deus especifico ou de um panteão de deuses. Você age como um intermediário entre o reino divino e o reino dos mortais, realizando rituais e ofertando sacrifícios para conduzir cada vez mais pessoas a adorarem a divindade. Você não é necessariamente um clérigo – realizar ritos sagrados não é a mesma coisa que canalizar poder divino.\r\nEscolha um deus, um panteão de deuses ou outro ser quase divino entre aqueles descritos no apêndice B ou outro especificado pelo seu Mestre para detalhar a natureza do seu serviço religioso. Você foi um serviçal menor no templo, criado desde a infância para auxiliar os sacerdotes em ritos sagrados? Ou você foi um alto sacerdote que repentinamente sentiu o chamado para\r\nservir seu deus de uma maneira diferente? Talvez você foi o líder de um pequeno culto não associado a templo\r\nalgum, ou mesmo uma seita secreta que servia a uma entidade demoníaca que agora você nega.', 'Como um acólito, você detém o respeito daqueles que compartilham de sua fé, e você pode realizar cerimônias de sua divindade. Você e seus companheiros de aventura podem até receber cura e caridade de um templo, santuário ou outro posto de sua fé, embora devam\r\nfornecer quaisquer componentes materiais necessários para as magias. Aqueles que compartilham de sua religião vão garantir a você (mas apenas você), custeando um estilo de vida modesto.\r\nVocê também pode possuir laços com um templo específico devotado à sua divindade ou panteão, e fixar residência nele. Pode ser o templo que você está\r\nacostumado a servir, se ainda tiver boas relações com ele, ou um templo no qual você encontrou um novo lar. Enquanto frequentar as redondezas desse templo, você pode solicitar os sacerdotes para assisti-lo, desde que essa assistência não seja de alguma forma perigosa e que você sempre esteja em uma boa relação com seu templo.', 'Abrigo dos Fiéis', '<b>- Proficiência em Perícias:</b> Intuição, Religião\r\n<br><br>\r\n<b>- Idiomas:</b> Dois à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um símbolo sagrado (um presente dado quando você entrou no templo), um livro de preces ou uma conta de orações, 5 varetas de incenso, vestimentas, um conjunto de roupas comuns e uma algibeira contendo 15 po'),
(2, 'Artesão de Guilda', 'Você é membro de uma guilda de artesãos, perito em um campo especifico e intimamente associado a outros artesãos. Você é uma parte bem estabelecida do mundo mercantil, livre, graças aos seus talentos e riqueza, das restrições de uma ordem social feudal. Você aprendeu suas perícias como aprendiz de um mestre artesão, com o patrocínio da sua guilda, até se tornar um mestre por\r\nseus próprios méritos.', 'Como um membro cativo e respeitado da guilda, você pode contar com certos benefícios que a sociedade garante. Seus camaradas, membros da guilda, irão provê-lo com hospedagem e comida, se necessário, e pagarão pelo seu funeral se preciso for. Em algumas cidades e\r\nvilas, um salão da guilda oferece um local central para conhecer outros membros de profissão, podendo ser um\r\nbom lugar para se conhecer patrões, aliados e empregados em potencial.\r\nGuildas, muitas vezes, detêm tremendos poderes políticos. Se você for acusado de um crime, sua guilda irá ampará-lo se uma boa defesa puder ser apresentada para provar sua inocência ou se o crime for justificável. Você pode, também, ter acesso a figuras políticas poderosas\r\natravés da guilda, se você for um membro bem posicionado. Tais conexões devem exigir doações de dinheiro ou itens mágicos para os cofres da guilda.\r\nVocê deve pagar cotas de 5 po por mês a guilda. Se você não pagar, você irá contrair uma dívida para permanecer nas boas graças da guilda.', 'Associados da Guilda', '<b>- Proficiência em Perícias:</b> Intuição, Persuasão\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de ferramenta de artesão\r\n<br><br>\r\n<b>- Idiomas:</b> Um, à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um conjunto de ferramentas de artesão (à sua escolha), uma carta de apresentação da sua guilda, um conjunto de roupas de viajante e uma algibeira com 15 po'),
(3, 'Artista', 'Você cresce em frente a uma audiência. Você sabe como fasciná-los, entretê-los e, até mesmo, inspirá-los. Suas poesias podem avivar o coração daqueles que te ouvem, despertando tristeza ou alegria, risadas ou ira. Sua música ergue seus espíritos ou captura suas aflições. Seus passos de dança cativam, seu humor os extasia rapidamente. Qualquer que sejam as técnicas que você\r\nuse, sua arte é sua vida.', 'Você sempre encontra um lugar para atuar, geralmente em tavernas ou estalagens mas, possivelmente em circos, teatros ou até em cortes nobres. Em tais lugares, você recebe alojamento e comida modesta ou de patrões confortáveis, de graça (dependendo da qualidade do estabelecimento), contanto que você atue a cada noite. Além disso, sua atuação torna você um tipo de figura local. Quando estranhos reconhecerem você em uma cidade em que você já tenha atuado, eles geralmente gostaram de você.', 'Pela Demanda Popular', '<b>- Proficiência em Perícias:</b> Acrobacia, Atuação\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Kit de disfarce, um tipo de instrumento musical\r\n<br><br>\r\n<b>- Equipamento:</b> Um instrumento musical (à sua escolha), um presente de um admirador (carta de amor, mecha de cabelo ou uma bijuteria), um traje e uma algibeira contendo 15 po'),
(4, 'Charlatão', 'Você sempre teve jeito com as pessoas. Você sabe o que os deixa extasiados, você pode destrinchar os desejos em seus corações após alguns minutos de conversa e, com algumas perguntas capciosas, você pode lê-los como se eles fossem livros infantis. É um talento útil e que você está perfeitamente disposto a usar em sua vantagem.\r\nVocê sabe o que as pessoas querem e você as entrega ou, pelo menos, promete que irá entregar. O bom senso deveria manter as pessoas longe de coisas que parecem\r\nmuito boas pra serem verdade, mas o bom senso parece desaparecer quando você está por perto. A garrafa de liquido cor de rosa irá, sem dúvida, curar essa brotoeja horrenda, essa pomada – nada mais é que um pouco de banha com uma pitada de sal de prata – pode restaurar a juventude e vigor e existe uma ponte na cidade que acabar de ficar a venda. Essas maravilhas soam improváveis, mas você as faz soar como barganhas reais.', 'Você criou uma segunda identidade que inclui documentos, conhecidos estabelecidos e disfarces que possibilitam que você assuma essa persona. Além disso, você pode forjar documentos, incluindo papeis oficiais e cartas pessoais, contanto que você tenha visto um exemplo desse tipo de documento ou a caligrafia de quem você está tentando copiar.', 'Identidade Falsa', '<b>- Proficiência em Perícias:</b> Enganação, Prestidigitação\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Kit de disfarce, kit de falsificação\r\n<br><br>\r\n<b>- Equipamento:</b> Um conjunto de roupas finas, um kit de disfarce, ferramentas de trapaça, à sua escolha (dez garrafas tampadas preenchidas com líquidos coloridos, um conjunto de dados viciados, um baralho de cartas marcadas ou um anel de sinete de um duque imaginário), e uma algibeira contendo 15 po'),
(5, 'Criminoso', 'Você é um criminoso experiente com um histórico de contravenções. Você gastou um bom tempo entre outros criminosos e ainda mantém contato com eles e com o submundo do crime. Você está mais perto do que a maioria do submundo do assassinato, roubo e violência que prevalece no ventre da sociedade, e você sobreviveu até esse ponto desprezando a lei e os regulamentos da sociedade.', 'Você possui contatos de confiança que agem como seus informantes em uma rede criminosa. Você sabe como se comunicar com eles mesmo em grandes distâncias. Você\r\nconhece em especial os mensageiros locais, mestres de caravana corruptos, e marinheiros escusos que podem transmitir seus recados.', 'Contato Criminal', '<b>- Proficiência em Perícias:</b> Enganação, Furtividade\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de kit de jogo, ferramentas de ladrão\r\n<br><br>\r\n<b>- Equipamento:</b> Um pé de cabra, um conjunto de roupas escuras comuns com capuz e uma algibeira contendo 15 po'),
(6, 'Eremita', 'Você viveu em reclusão – ou em uma comunidade isolada como um monastério ou completamente sozinho – por um período importante da sua vida. No tempo em que passou longe do clamor da sociedade, você encontrou quietude, solidão e, talvez, algumas das respostas que procurava.', 'A calma reclusão da seu eremitério prolongado lhe deu acesso a descobertas únicas e poderosas. A natureza exata\r\ndessas revelações depende da natureza da sua reclusão. Poderia ser uma grande verdade sobre o cosmos, os deuses, os poderosos seres de outros planos ou as forças da natureza. Poderia ser um local nunca visto por mais ninguém. Você pode ter descoberto um fato que a muito foi esquecido, ou desenterrado uma relíquia do passado que poderia reescrever a história. Poderia ser uma informação que seria prejudicial para as pessoas responsáveis pelo seu exílio, consequentemente, a razão que fez você voltar para a sociedade.\r\nConverse com o Mestre para determinar os detalhes da sua descoberta e o impacto na campanha.', 'Descoberta', '<b>- Proficiência em Perícias:</b> Medicina, Religião\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Kit de herbalismo\r\n<br><br>\r\n<b>- Idiomas:</b> Um à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um estojo de pergaminho cheio de notas dos seus estudos e orações, um cobertor de inverno, um conjunto de roupas comuns, um kit de herbalismo e 5 po.'),
(7, 'Forasteiro', 'Você cresceu em uma área selvagem, longe da civilização e dos confortos da cidade e tecnologia. Você testemunhou a migração de manadas maiores que florestas, sobreviveu à climas mais extremos que qualquer citadino poderia compreender e é adepto da solidão de ser a única criatura pensante em quilômetros, em qualquer direção. O isolamento está no seu sangue, quer você seja um nômade, um explorador, um recluso, um forrageador ou mesmo um saqueador. Mesmo em lugares que você não conheça as características especificas do terreno, você vai conseguir se virar.', 'Você tem uma memória excelente para mapas\r\ne geografia, e você sempre pode recobrar\r\no plano geral de terrenos, assentamentos\r\nou outras características ao seu redor. Além disso, você pode encontrar comida e água fresca para você a até cinco outras pessoas a cada dia, considerando que a terra ofereça bagas, pequenas frutas, água e similares.', 'Andarilho', '<b>- Proficiência em Perícias:</b> Atletismo, Sobrevivência\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de instrumento musical\r\n<br><br>\r\n<b>- Idiomas:</b> Um à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um bordão, uma armadilha de caça, um fetiche de um animal que você matou, um conjunto de roupas de viajante e uma algibeira contendo 10 po'),
(8, 'Herói do Povo', 'Você veio de uma parcela humilde da sociedade, mas está destinado a muito mais. O povo de sua vila já o reconhece como campeão, e seu destino o conduz a batalhas contra tiranos e monstros que ameaçam o povo aonde quer que você vá.', 'Já que você ascendeu da categoria de pessoas comuns até onde você está agora, é fácil se misturar a eles. Você pode encontrar lugar entre os camponeses para se esconder, descansar ou se recuperar, a menos que isso ofereça um risco direto a eles. Eles o esconderão da lei e de qualquer um que venha perguntando por você, desde que não tenham que arriscar suas vidas.', 'Hospitalidade Rústica', '<b>- Proficiência em Perícias:</b> Adestrar Animais, Sobrevivência\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de ferramenta de artesão, veículos (terrestre)\r\n<br><br>\r\n<b>- Equipamento:</b> Um conjunto de ferramentas de artesão (à sua escolha), uma pá, um pote de ferro, um conjunto de roupas comuns e uma algibeira contendo 10 po'),
(9, 'Marinheiro', 'Você navegou em um navio pelo mar por anos. Nesse período, você enfrentou poderosas tormentas, monstros das profundezas e aqueles que queriam afundar o seu ganha-pão para as profundezas insondáveis. Seu primeiro amor é a distante linha do horizonte, mas chegou a hora de você por suas mãos em algo novo.\r\nConverse sobre a natureza do navio que você navegou anteriormente com seu Mestre. Era um navio mercante, uma embarcação naval, um navio de exploração ou um navio pirata? O quão famoso (ou infame) ele é? Ele era muito viajado? Ele continua navegando, ou está desaparecido e, provavelmente, perdido com seus tripulantes?\r\nQuais eram seus deveres a bordo – contramestre, capitão, navegador, cozinheiro ou outra posição? Quem eram o capitão e primeiro marinheiro? Você deixou o\r\nnavio de bem com seus companheiros ou fugiu?', 'Quando você precisar, você pode conseguir passagem de graça em um navio para você e seus companheiros de aventura. Você precisa viajar no navio em que você trabalhou ou em outro navio com o qual você teve boas relações (talvez um comandado por um ex-companheiro de tripulação). Por ser um favor, você não pode solicitar uma programação ou rota que atenda à todas as suas necessidades. Seu Mestre determina quanto tempo levará pra chegar aonde você quer ir. Em troca da passagem grátis, espera-se que você e seus companheiros ajudem a tripulação durante a viagem.', 'Passagem de Navio', '<b>- Proficiência em Perícias:</b> Atletismo, Percepção\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Ferramentas de navegador, veículo (aquático)\r\n<br><br>\r\n<b>- Equipamento:</b> Uma malagueta (clava), 15 metros de corda de seda, uma amuleto da sorte como um pé de coelho ou uma pequena pedra com um furo no centro (ou você pode rolar uma bugiganga da tabela Bugigangas no capítulo 5), um conjunto de trajes comuns e uma algibeira contendo 10 po'),
(10, 'Nobre', 'Você entende de riqueza, poder e privilégios. Você carrega um título de nobreza, sua família possui terras, coleta impostos e exerce uma influência política significativa. Você pode ser um aristocrata mimado pouco familiarizado com o trabalho ou com o desconforto, um ex-comerciante elevado à nobreza ou um malandro deserdado com um sentido desproporcional de direitos. Ou pode ser um dono de terra honesto e trabalhador que se preocupa com as pessoas que vivem e trabalham em sua terra, sutilmente ciente da sua responsabilidade para com eles.\r\nConverse com seu Mestre para chegar a um título adequado e determinar a quantidade de autoridade esse título carrega. Um título de nobreza não fica com você – é conectado a uma família inteira, e qualquer título que você possuir passará para seus filhos. Você não precisa determinar seu título de nobreza sozinho, você também deve conversar com seu Mestre para descrever sua família e a influência dela sobre você.\r\nSua família é antiga e estabelecida ou só recentemente você foi agraciado com seu título? Qual a influência que sua família exerce e sobre qual área? Que tipo de reputação sua família tem entre os outros aristocratas da região? Como as pessoas comuns consideram sua família?\r\nQual é sua posição na família? Um herdeiro ou chefe da família? Você já herdou o título? Como você se sente sobre essa responsabilidade? Você está tão abaixo da linha de herança que ninguém se importa com o que você faz, contanto que não envergonhe a família? Como é que o chefe da família se sente sobre a sua carreira de aventuras? Você está de bem com a família ou anda afastado dela?\r\nSua família tem um brasão de armas? Uma insígnia que você pode usar em um anel de sinete? Cores específicas que você usa o tempo todo? Um animal que você considera como um símbolo de sua linhagem ou um membro espiritual da família?\r\nEsses detalhes ajudam a estabelecer sua família e seu título como características do mundo de campanha.', 'Graças a sua origem nobre, as pessoas tendem a pensar o melhor de você. Você é bem-vindo na alta sociedade e as pessoas assumem que você tem o direito de estar onde está. As pessoas comuns fazem todos os esforços para acomodá-lo e evitar seu desprazer, e outros nobres o tratam como um membro da mesma classe social. Você pode conseguir uma audiência com um nobre local se precisar.', 'Posição Privilegiada', '<b>- Proficiência em Perícias:</b> História, Persuasão\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de kit de jogos\r\n<br><br>\r\n<b>- Idiomas:</b> Um à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um conjunto de trajes finos, um anel de sinete, um pergaminho de linhagem e uma algibeira contendo 25 po'),
(11, 'Órfão', 'Você cresceu nas ruas, sozinho, órfão e pobre. Você não tinha ninguém para cuidar de você ou te alimentar, então, aprendeu a se virar sozinho. Você lutou ferozmente por comida e se manteve constantemente atendo a outras almas desesperadas que pudessem te roubar. Você dormiu em telhados e becos, exposto aos elementos e suportou doenças sem ajuda da medicina ou um lugar para se recuperar. Você sobreviveu a despeito de tudo e, conseguiu isso através de astucia, força, agilidade ou uma combinação de cada.\r\nVocê começa sua carreira de aventureiro com dinheiro o suficiente para viver modestamente, mas em segurança, por pelo menos dez dias. Como você conseguiu esse\r\ndinheiro? O que aconteceu para que você conseguisse se libertar das circunstancias desesperadoras e embarcasse em uma vida melhor?', 'Você conhece os padrões secretos e o fluxo das cidades e pode encontrar passagens através da expansão urbana que os outros deixariam passar. Quando você não estiver em combate, você (e os companheiros que você guiar) podem viajar entre dois locais quaisquer na cidade com o dobro da velocidade normalmente permitida.', 'Segredos da Cidade', '<b>- Proficiência em Perícias:</b> Furtividade, Prestidigitação\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Kit de disfarce, ferramentas de ladrão\r\n<br><br>\r\n<b>- Equipamento:</b> Uma faca pequena, um mapa da cidade em que você cresceu, um rato de estimação, um pequeno objeto para lembrar dos seus pais, um conjunto de roupas comuns e uma algibeira contendo 10 po'),
(12, 'Sábio', 'Você ficou anos aprendendo sobre o conhecimento do multiverso. Você decorou manuscritos, estudou pergaminhos e escutou os grandes especialistas nos temas que o interessam. Seus esforços fizeram de você um mestre no seu campo de estudo.', 'Quando tentar obter ou recuperar um fragmento de conhecimento que você não saiba, você descobre aonde e com quem pode obter essa informação. Normalmente ela será adquirida em bibliotecas, arquivos de escribas, universidade ou outros sábios e pessoas aptas. Seu Mestre pode decidir que o conhecimento que busca está escondido em algum lugar quase inacessível, ou é simplesmente impossível de se obter. Desvendar os segredos mais profundos do multiverso pode requerer uma campanha inteira.', 'Pesquisador', '<b>- Proficiência em Perícias:</b> Arcanismo, História\r\n<br><br>\r\n<b>- Idiomas:</b> Dois à sua escolha\r\n<br><br>\r\n<b>- Equipamento:</b> Um vidro de tinta escura, uma pena, uma faca pequena, uma carta de um falecido colega perguntando a você algo que você nunca terá a chance de responder, um conjunto de roupas comuns e uma algibeira contendo 10 po'),
(13, 'Soldado', 'A guerra esteve na sua vida desde que você se recorda. Você foi treinado desde jovem, estudou o uso das armas e armaduras, aprendeu técnicas básicas de sobrevivência, incluindo como permanecer vivo no campo de batalha. Você pode ter feito parte de uma armada nacional, ou uma companhia de mercenários, talvez até mesmo uma milícia local, que cresceu proeminentemente durante uma guerra recente.\r\nQuando você escolher esse antecedente, converse com seu Mestre para determinar de qual organização militar você fez parte, quão longe você progrediu na hierarquia e que tipos de experiência você teve na sua carreira militar?\r\nFoi um exército de guarda, uma patrulha de cidade ou a milícia de uma pequena vila? Ou talvez você tenha participado da defesa pessoal de um nobre, ou mercador, ou de um cartel de mercenários.', 'Você possui uma patente militar da sua época como soldado. Soldados leais à sua antiga organização reconhecem sua autoridade e influência, e o prestam\r\ndeferência se forem de uma patente mais baixa. Você pode invocar sua patente para exercer influência sobre soldados, e requisitar equipamentos simples ou cavalos\r\npara uso temporário. Você também pode ganhar acesso a acampamentos militares aliados, e fortalezas onde usa patente é reconhecida.', 'Patente Militar', '<b>- Proficiência em Perícias:</b> Atletismo, Intimidação\r\n<br><br>\r\n<b>- Proficiência em Ferramentas:</b> Um tipo de kit de jogo, veículo (terrestre)\r\n<br><br>\r\n<b>- Equipamento:</b> Uma insígnia de patente, um fetiche obtido de um inimigo caído (uma adaga, lâmina partida ou tira de estandarte), um conjunto de dados de osso ou baralho, um conjunto de roupas comuns e uma algibeira contendo 10 po');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dado_vida`
--

CREATE TABLE `dado_vida` (
  `dado_vida_cod` int(11) NOT NULL,
  `dado_vida_valor` varchar(8) DEFAULT NULL,
  `dado_vida_valor_med` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dado_vida`
--

INSERT INTO `dado_vida` (`dado_vida_cod`, `dado_vida_valor`, `dado_vida_valor_med`) VALUES
(1, '1d6', 4),
(2, '1d8', 5),
(3, '1d10', 6),
(4, '1d12', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `deslocamento`
--

CREATE TABLE `deslocamento` (
  `desl_cod` int(11) NOT NULL,
  `desl_valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `deslocamento`
--

INSERT INTO `deslocamento` (`desl_cod`, `desl_valor`) VALUES
(1, 9),
(2, 10.5),
(3, 7.5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `habilidade_classe`
--

CREATE TABLE `habilidade_classe` (
  `hab_class_cod` int(11) NOT NULL,
  `hab_class_nome` varchar(90) DEFAULT NULL,
  `hab_class_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `habilidade_classe`
--

INSERT INTO `habilidade_classe` (`hab_class_cod`, `hab_class_nome`, `hab_class_desc`) VALUES
(1, 'Fúria', 'Em batalha, você luta com uma ferocidade primitiva. No seu turno, você pode entrar em fúria com uma ação bônus.\r\n<br>\r\nEnquanto estiver em fúria, você recebe os seguintes benefícios se você não estiver vestindo uma armadura pesada:\r\n<br><br>\r\n- Você tem vantagem em testes de Força e testes de resistência de Força.\r\n<br><br>\r\n- Quando você desferir um ataque com arma corpo-a-corpo usando Força, você recebe um bônus nas jogadas de dano que aumenta à medida que você adquire níveis de bárbaro, como mostrado na coluna Dano de Fúria na tabela O Bárbaro.\r\n<br><br>\r\n- Você possui resistência contra dano de concussão, cortante e perfurante.\r\n<br><br>\r\nSe você for capaz de conjurar magias, você não poderá conjurá-las ou se concentrar nelas enquanto estiver em fúria.\r\n<br>\r\nSua fúria dura por 1 minuto. Ela termina\r\nprematuramente se você cair inconsciente ou se seu turno acabar e você não tiver atacado nenhuma criatura hostil desde seu último turno ou tiver sofrido dano nesse período. Você também pode terminar sua fúria no seu turno com uma ação bônus.\r\n<br>\r\nQuando você tiver usado a quantidade de fúrias mostrada para o seu nível de bárbaro na coluna Fúrias da tabela O Bárbaro, você precisará terminar um descanso longo antes de poder entrar em fúria novamente.'),
(2, 'Defesa sem Armadura - Bárbaro', 'Quando você não estiver vestindo qualquer armadura, sua Classe de Armadura será 10 + seu modificador de Destreza + seu modificador de Constituição. Você pode usar um escudo e continuar a receber esse benefício.'),
(3, 'Ataque Descuidado', 'A partir do 2° nível, você pode desistir de toda preocupação com sua defesa para atacar com um desespero feroz. Quando você fizer o seu primeiro ataque no turno, você pode decidir atacar descuidadamente. Fazer isso lhe concede vantagem nas jogadas de ataque\r\ncom armas corpo-a-corpo usando Força durante seu turno, porém, as jogadas de ataques feitas contra você possuem vantagem até o início do seu próximo turno.'),
(4, 'Sentido de Perigo', 'No 2° nível, você adquire um sentido sobrenatural de quando as coisas próximas não estão como deveriam, concedendo a você uma chance maior quando estiver evitando perigos.\r\nVocê possui vantagem em testes de resistência de Destreza contra efeitos que você possa ver, como armadilhas e magias. Para receber esse benefício você não pode estar cego, surdo ou incapacitado.'),
(5, 'Caminho Primitivo', 'No 3° nível, você escolhe um caminho que molda a natureza da sua fúria. Escolha o Caminho do Furioso ou o Caminho do Guerreiro Totêmico, ambos detalhados no final da descrição de classe. Sua escolha lhe concederá características no 3° nível e novamente no 6°, 10° e 14° níveis.'),
(6, 'Incremento no Valor de Habilidade', 'Quando você atinge o 4° nível e novamente no 8°, 12°, 16° e 19° nível, você pode aumentar um valor de habilidade, à sua escolha, em 2 ou você pode aumentar dois valores de habilidade, à sua escolha em 1. Como padrão, você não pode elevar um valor de habilidade acima de 20 com essa característica.'),
(7, 'Ataque Extra - Bárbaro', 'A partir do 5° nível, você pode atacar duas vezes, ao invés de uma, sempre que você realizar a ação de Ataque no seu turno.'),
(8, 'Movimento Rápido', 'Começando no 5° nível, seu deslocamento aumenta em 3 metros enquanto você não estiver vestindo uma armadura pesada.'),
(9, 'Instinto Selvagem', 'No 7° nível, seu instinto está tão apurado que você recebe vantagem nas jogadas de iniciativa.\r\nAlém disso, se você estiver surpreso no começo de um combate e não estiver incapacitado, você pode agir normalmente no seu primeiro turno, mas apenas se você entrar em fúria antes de realizar qualquer outra coisa neste turno.'),
(10, 'Crítico Brutal', 'A partir do 9° nível, você pode rolar um dado de dano de arma adicional quando estiver determinando o dano extra de um acerto crítico com uma arma corpo-a-corpo.\r\nIsso aumenta para dois dados adicionais no 13° nível e três dados adicionais no 17° nível.'),
(11, 'Fúria Implacável', 'A partir do 11° nível, sua fúria pode manter você lutando independente da gravidade dos seus ferimentos. Se você cair para 0 pontos de vida enquanto estiver em fúria e não morrer, você pode realizar um teste de resistência de Constituição CD 10. Se você for bem sucedido, você volta para 1 ponto de vida ao invés disso.\r\nCada vez que você utilizar essa característica após a primeira, a CD aumenta em 5. Assim que você terminar um descanso curto ou longo a CD volta para 10.'),
(12, 'Fúria Persistente', 'A partir do 15° nível, sua fúria é tão brutal que ela só termina prematuramente se você cair inconsciente ou se você decidir terminá-la.'),
(13, 'Força Indomável', 'A partir do 18° nível, se o total de um teste de Força seu for menor que o seu valor de Força, você pode usar esse valor no lugar do resultado.'),
(14, 'Campeão Primitivo', 'No 20° nível, você incorpora os poderes da natureza. Seus valores de Força e Constituição aumentam em 4. Seu máximo para esses valores agora é 24.'),
(15, 'Caminho do Furioso', 'Para alguns bárbaros, a fúria é um meio para um fim – esse fim é a violência. O Caminho do Furioso é um caminho de fúria livre, entumecido em sangue. A medida que você entra na fúria de um furioso, você vibra no caos da batalha, despreocupado com a sua própria saúde ou bem-estar.'),
(16, 'Caminho do Furioso - Frenesi', 'Começando no momento que você escolhe esse caminho no 3° nível, você pode entrar num frenesi quando estiver em fúria. Se você desejar, pela duração da sua fúria, você pode realizar um único ataque corpo-a-corpo com arma, com uma ação bônus, em cada um de seus turnos após esse. Quando sua fúria acabar, você sofrerá um nível de exaustão (como descrito no apêndice A).'),
(17, 'Caminho do Furioso - Fúria Inconsciente', 'A partir do 6° nível, você não pode ser enfeitiçado ou amedrontado enquanto estiver em fúria. Se você estava enfeitiçado ou amedrontado quando entrou em fúria, o efeito é suspenso pela duração da fúria.'),
(18, 'Caminho do Furioso - Presença Intimidante', 'A partir do 10° nível, você pode usar sua ação para amedrontar alguém com sua presença intimidante. Quando o fizer, escolha uma criatura que você possa ver a 9 metros. Se a criatura puder ver ou ouvir você, ela deve ser bem sucedida num teste de resistência de Sabedoria (CD igual a 8 + seu bônus de proficiência + seu modificador de Carisma) ou ficara com medo de você até o fim do seu próximo turno. Nos turnos seguintes, você pode usar sua ação para estender a duração desse efeito na criatura amedrontada até o início do seu próximo turno. Esse efeito termina se a criatura terminar seu turno fora da sua linha de visão ao a mais de 18 metros de você.\r\nSe a criatura for bem sucedida no teste de resistência, você não poderá usar essa característica nessa criatura\r\nnovamente por 24 horas.'),
(19, 'Caminho do Furioso - Retaliação', 'A partir do 14° nível, quando você sofrer dano de uma criatura que esteja a até 1,5 metro de você, você pode usar sua reação para realizar um ataque corpo-a-corpo com arma contra essa criatura.'),
(20, 'Caminho do Guerreiro Totêmico', 'O Caminho do Guerreiro Totêmico é uma jornada espiritual, à partir do momento que o bárbaro aceita um espirito animal como seu guia, protetor e inspiração. Em batalha, seu espirito totêmico preenche você com força sobrenatural, adicionando combustível mágico a sua fúria bárbara.\r\nA maioria das tribos bárbaras consideram que um animal totêmico possui parentesco a um clã em particular. Em tais casos, é incomum a um indivíduo possuir mais de um espirito animal totêmico, apesar de existirem exceções.'),
(21, 'Caminho do Guerreiro Totêmico - Conselheiro Espiritual', 'Seu caminho é buscar a sintonia com o mundo natural, concedendo a você uma afinidade com as bestas. A partir do 3° nível, quando você toma esse caminho, você recebe a habilidade de conjurar as magias sentido bestial e falar com animais, mas apenas na forma de rituais, como descrito no capítulo 10.'),
(22, 'Caminho do Guerreiro Totêmico - Totem Espiritual', 'A partir do 3° nível, quando você adota esse caminho, você escolhe um totem espiritual e ganha suas características. Você deve fazer ou adquirir um objeto físico como totem – um amuleto ou adorno similar – que incorpora o pelo ou penas, garras, dente ou ossos do animal totêmico. Se você quiser, você também adquire pequenos atributos físicos que o assemelham ao seu totem espiritual. Por exemplo, se você tiver o totem espiritual do urso, você seria incomumente peludo e de pele grossa, ou se o seu totem for a águia, seu olhos teriam um brilho amarelado.\r\n<br>\r\nSeu totem animal deve ser um animal relacionado aos listados aqui, mas pode ser um mais apropriado a sua terra natal. Por exemplo, você poderia escolher falcão ou abutre ao invés de águia.\r\n<br><br>\r\n<b>Águia.</b> Quando estiver em fúria e não estiver vestindo uma armadura pesada, as outras criaturas terão desvantagem nas jogadas de ataque de oportunidade contra você e você pode usar a ação de Disparada como uma ação bônus no seu turno. O espirito da águia torna você um predador que pode vagar pelo meio da briga com facilidade.\r\n<br><br>\r\n<b>Lobo.</b> Quando estiver em fúria, seus amigos tem vantagem nas jogadas de ataque corpo-a-corpo realizadas contra qualquer criatura a 1,5 metro de você que seja hostil a você. O espirito do lobo transforma você em um líder de caça.\r\n<br><br>\r\n<b>Urso.</b> Quando em fúria, você adquire resistência a todos os tipos de dano, exceto dano psíquico. O espirito do urso torna você vigoroso o suficiente para permanecer de pé diante de qualquer castigo.'),
(23, 'Caminho do Guerreiro Totêmico - Aspecto da Besta', 'No 6° nível, você adquire um benefício místico baseado no totem que você escolheu. Você pode escolher o mesmo animal que selecionou no 3° nível ou um diferente.\r\n<br><br>\r\n<b>Águia.</b> Você ganha a visão aguçada de uma águia. Você pode ver a até 1,6 km sem dificuldade, sendo capaz de discernir até os menores detalhes quando estiver olhando para algo a menos de 30 metros de você. Além disso, penumbra não impõem desvantagem nos seus testes de Sabedoria (Percepção).\r\n<br><br>\r\n<b>Lobo.</b> Você ganha a sensibilidade predatória de um lobo. Você pode rastrear outras criaturas quando estiver viajando a passo rápido e você pode se mover furtivamente quando estiver viajando a passo normal (veja o capítulo 8 para as regras de passo de viagem).\r\n<br><br>\r\n<b>Urso.</b> Você ganha a força de um urso. Sua capacidade de carga (incluindo carga máxima e capacidade de erguer) é dobrada e você tem vantagem em testes de Força realizados para empurrar, puxar, erguer ou quebrar objetos.'),
(24, 'Caminho do Guerreiro Totêmico - Andarilho Espiritual', 'No 10° nível, você pode conjurar a magia comunhão com a natureza, mas apenas como um ritual. Quando o fizer, uma versão espiritual de um dos animais que você escolheu como Totem Espiritual ou Aspecto da Besta aparece para você para transmitir a informação que você busca.'),
(25, 'Caminho do Guerreiro Totêmico - Sintonia Totêmica', 'No 14° nível, você ganha um benefício magico baseado em um totem animal, à sua escolha. Você pode escolher o mesmo animal que selecionou anteriormente ou um diferente.\r\n\r\nÁguia. Quando estiver em fúria, você adquire um deslocamento de voo igual ao seu deslocamento de caminhada. Esse benefício funciona apenas em pequenos explosões: você cai se terminar seu turno no ar e não tiver nada em que possa se agarrar.\r\n\r\nLobo. Quando estiver em fúria, você pode usar uma ação bônus no seu turno para derrubar uma criatura Grande ou menor no chão quando você atingi-la com um ataque corpo-a-corpo com arma.\r\n\r\nUrso. Quando estiver em fúria, qualquer criatura a até 1,5 metro de você que for hostil a você terá desvantagem nas jogadas de ataque contra outros alvos além de você ou outro personagem com essa característica. Um inimigo é imune a esse efeito se ele não puder ver ou ouvir você ou caso ele não possa ser amedrontado.'),
(26, 'Inspiração de Bardo', 'Você pode inspirar os outros através de palavras animadoras ou música. Para tanto, você usa uma ação bônus no seu turno para escolher uma outra criatura, que não seja você mesmo, a até 18 metros de você que possa ouvi-lo. Essa criatura ganha um dado de Inspiração de Bardo, um d6.\r\n<br>\r\nUma vez, nos próximos 10 minutos, a criatura poderá rolar o dado e adicionar o valor rolado a um teste de habilidade, jogada de ataque ou teste de resistência que ela fizer. A criatura pode esperar até rolar o d20 antes de decidir usar o dado de Inspiração de Bardo, mas deve\r\ndecidir antes do Mestre dizer se a rolagem foi bem ou mal sucedida. Quando o dado de Inspiração de Bardo for rolado, ele é gasto. Uma criatura pode ter apenas um dado de Inspiração de Bardo por vez.\r\n<br>\r\nVocê pode usar essa característica um número de vezes igual ao seu modificador de Carisma (no mínimo uma vez).\r\nVocê recupera todos os usos quando termina um descanso longo.\r\n<br>\r\nSeu dado de Inspiração de Bardo muda quando você atinge certos níveis na classe. O dado se torna um d8 no 5° nível, um d10 no 10° nível e um d12 no 15° nível.'),
(27, 'Versatilidade', 'A partir do 2° nível, você pode adicionar metade do seu bônus de proficiência, arredondado para baixo, em qualquer teste de habilidade que você fizer que ainda não\r\npossua seu bônus de proficiência.'),
(28, 'Canção de Descanso', 'A partir do 2° nível, você pode usar música ou oração calmantes para ajudar a revitalizar seus aliados feridos durante um descanso curto. Se você ou qualquer criatura amigável que puder ouvir sua atuação recuperar pontos de vida no fim do descanso curto ao gastar um ou mais Dados de Vida, cada uma dessas criaturas recupera 1d6 pontos de vida adicionais.\r\nOs pontos de vida adicionais aumentam quando você alcança determinados níveis na classe: para 1d8 no 9° nível, para 1d10 no 13° nível e para 1d12 no 17° nível.'),
(29, 'Colégio de Bardo', 'No 3° nível, você investiga as técnicas avançadas de um colégio de bardo, à sua escolha: o Colégio do Conhecimento ou o Colégio da Bravura, ambos detalhados no final da descrição da classe. Sua escolha lhe concede características no 3° nível e novamente no 6° e 14° nível.'),
(30, 'Aptidão', 'No 3° nível, escolha duas das perícias em que você é proficiente. Seu bônus de proficiência é dobrado em qualquer teste de habilidade que você fizer que utilize qualquer das perícias escolhidas.\r\nNo 10° nível, você escolhe mais duas perícias em que é proficiente para ganhar esse benefício.'),
(31, 'Fonte de Inspiração', 'Começando no momento em que você atinge o 5° nível, você recupera todas as utilizações gastas da sua Inspiração de Bardo quando você termina um descanso curto ou longo.'),
(32, 'Canção de Proteção', 'No 6° nível, você adquire a habilidade de usar notas musicais ou palavras de poder para interromper efeito de influência mental. Com uma ação, você pode começar uma atuação que dura até o fim do seu próximo turno. Durante esse tempo, você e qualquer criatura amigável a até 9 metros de você terá vantagem em testes de resistência para não ser amedrontado ou enfeitiçado. Uma criatura\r\ndeve ser capaz de ouvir você para receber esse benefício. A atuação termina prematuramente se você for\r\nincapacitado ou silenciado ou se você terminá-la voluntariamente (não requer ação).'),
(33, 'Segredos Mágicos', 'No 10° nível, você usurpou conhecimento mágico de um vasto espectro de disciplinas. Escolha duas magias de\r\nqualquer classe, incluindo essa. A magia que você escolher deve ser de um nível que você possa conjurar, como mostrado na tabela O Bardo, ou um truque.\r\nAs magias escolhidas contam como magias de bardo para você e já estão incluídas no número da coluna Magias Conhecidas da tabela O Bardo.\r\nVocê aprende duas magias adicionais de qualquer classe no 14° nível e novamente no 18° nível.'),
(34, 'Inspiração Superior', 'No 20° nível, quando você rolar iniciativa e não tiver nenhum uso restante de Inspiração de Bardo, você recupera um uso.'),
(35, 'Colégio do Conhecimento', 'Bardos do Colégio do Conhecimento conhecem algo sobre a maioria das coisas, coletando pedaços de conhecimento de fontes tão diversas quanto tomos eruditos ou contos de camponeses. Quer seja cantando baladas populares em taverna, quer seja elaborando composições para cortes reais, esses bardos usam seus dons para manter a audiência enfeitiçada. Quando os aplausos acabam, os membros da audiência vão estar se questionando se tudo que eles creem é verdade, desde sua crença no sacerdócio do templo local até sua lealdade ao rei.\r\n<br>\r\nA fidelidade desses bardos reside na busca pela beleza e verdade, não na lealdade a um monarca ou em seguir os\r\ndogmas de uma divindade. Um nobre que mantem um bardo desses como seu arauto ou conselheiro, sabe que o bardo prefere ser honesto que político.\r\n<br>\r\nOs membros do colégio se reúnem em bibliotecas e, as vezes, em faculdades de verdade, completas com salas de aula e dormitórios, para partilhar seu conhecimento uns com os outros. Eles também se encontram em festivais ou em assuntos de estado, onde eles podem expor corrupção, desvendar mentiras e zombar da superestima de figuras de autoridade.'),
(36, 'Colégio do Conhecimento - Proficiência Adicional', 'Quando você se junta ao Colégio do Conhecimento no 3° nível, você ganha proficiência em três perícias, à sua escolha.'),
(37, 'Colégio do Conhecimento - Palavras de Interrupção', 'Também no 3° nível, você aprende como usar sua perspicácia para distrair, confundir e, de outras formas, atrapalhar a confiança e competência de outros. Quando uma criatura que você pode ver a até 18 metros de você realizar uma jogada de ataque, um teste de habilidade ou uma jogada de dano, você pode usar sua reação para gastar um uso de Inspiração de Bardo, rolando o dado de Inspiração de Bardo e subtraindo o número rolado da rolagem da criatura. Você escolhe usar essa característica\r\ndepois da criatura fazer a rolagem, mas antes do Mestre determinar se a jogada de ataque ou teste de habilidade foi bem ou mal sucedido, ou antes da criatura causar dano. A criatura será imune se não puder ouvir ou se não puder ser enfeitiçada.'),
(38, 'Colégio do Conhecimento - Segredos Mágicos Adicionais', 'No 6° nível, você aprende duas magias, à sua escolha, de qualquer classe. As magias que você escolher devem ser de um nível que você possa conjurar, como mostrado na tabela O Bardo, ou um truque. As magias escolhidas contam como magias de bardo pra você, mas não contam no número de magias de bardo que você conhece.'),
(39, 'Colégio do Conhecimento - Perícia Inigualável', 'A partir do 14° nível, quando você fizer um teste de habilidade, você pode gastar um uso de Inspiração de Bardo. Role o dado de Inspiração de Bardo e adicione o número rolado ao seu teste de habilidade. Você pode escolher fazer isso depois de rolar o dado do teste de habilidade, mas antes do Mestre dizer se foi bem ou mal sucedido.'),
(40, 'Colégio da Bravura', 'Os bardos do Colégio da Bravura são escaldos destemidos de quem os contos mantem viva a memória dos grandes heróis do passado, dessa forma inspirando uma nova geração de heróis. Esses bardos se reúnem em salões de hidromel ou ao redor de fogueiras para cantar os feitos dos grandiosos, tanto do passado quanto do presente. Eles viajam pelos lugares para testemunhar grandes eventos em primeira mão e para garantir que a memória desses eventos não se perca nesse mundo. Com suas canções, eles inspiram outros a alcançar o mesmo patamar de realizações dos antigos heróis.'),
(41, 'Colégio da Bravura - Proficiência Adicional', 'Quando você se junta ao Colégio da Bravura no 3° nível, você adquire proficiência com armaduras médias, escudos e armas marciais.'),
(42, 'Colégio da Bravura - Inspiração em Combate', 'Também no 3° nível, você aprende a inspirar os outros em batalha. Uma criatura que possuir um dado de Inspiração de Bardo seu, pode rolar esse dado e adicionar o número rolado a uma jogada de dano que ele tenha acabado de fazer. Alternativamente, quando uma jogada de ataque for realizada contra essa criatura, ela pode usar sua reação para rolar o dado de Inspiração de Bardo e adicionar o número rolado a sua CA contra esse ataque, depois da rolagem ser feita, mas antes de saber se errou ou acertou.'),
(43, 'Colégio da Bravura - Ataque Extra', 'Também no 3° nível, você aprende a inspirar os outros em batalha. Uma criatura que possuir um dado de Inspiração de Bardo seu, pode rolar esse dado e adicionar o número rolado a uma jogada de dano que ele tenha acabado de fazer. Alternativamente, quando uma jogada de ataque for realizada contra essa criatura, ela pode usar sua reação para rolar o dado de Inspiração de Bardo e adicionar o número rolado a sua CA contra esse ataque, depois da rolagem ser feita, mas antes de saber se errou ou acertou.'),
(44, 'Colégio da Bravura - Magia de Batalha', 'No 14° nível, você dominou a arte de tecer a conjuração e usar armas em um ato harmonioso. Quando você usar sua ação para conjurar uma magia de bardo, você pode realizar um ataque com arma com uma ação bônus.'),
(45, 'Patrono Transcendental', 'No 1° nível, você conclui uma barganha com um ser transcendental, à sua escolha: a Arquifada, o Corruptor ou o Grande Antigo, cada um deles é detalhado no final da descrição da classe. Sua escolha lhe confere traços no 1° nível e novamente no6°, 10° e 14° nível.'),
(46, 'Invocações Místicas', 'Durante seus estudos sobre conhecimento oculto, você descobriu as invocações místicas, fragmentos de conhecimento proibido que infundiram você com habilidade mágica permanente.\r\n<br>\r\nNo 2° nível, você ganha duas invocações místicas, à sua escolha. Suas opções de invocação estão detalhadas no final da descrição dessa classe. Quando você atinge certos nível de bruxo, você adquire novas invocações à sua escolha, como mostrado na coluna Invocações Conhecidas na tabela O Bruxo.\r\n<br>\r\nAlém disso, quando você adquire um novo nível nessa classe, você pode escolher uma invocação que você conheça e substituí-la por outra invocação que você possa aprender nesse nível.'),
(47, 'Dádiva do Pacto', 'No 3° nível, seu patrono transcendental lhe confere um dom por seus leais serviços. Você adquire uma das características a seguir, à sua escolha.'),
(48, 'Dádiva do Pacto - Pacto da Corrente', 'Você aprende a magia convocar familiar e pode conjurá-la como um ritual. Essa magia não conta no número de magias que você conhece.\r\nQuando você conjura essa magia, você pode escolher uma das formas convencionais para o seu familiar ou uma das seguintes formas especiais: diabrete, pseudodragão, quasit ou sprite.\r\nAlém disso, quando você realiza a ação de Ataque, você pode renunciar um dos seus ataques para permitir que seu familiar realize um ataque, com a reação dele.'),
(49, 'Dádiva do Pacto - Pacto da Lâmina', 'Você pode usar sua ação para criar uma arma de pacto em sua mão vazia. Você escolhe a forma que essa arma corpo-a-corpo tem a cada vez que você a cria (veja as opções de arma no capítulo 5). Você é proficiente com ela enquanto a empunhar. Essa arma conta como sendo mágica com os propósitos de ultrapassar resistência e imunidade a ataques e danos não-mágicos.\r\nSua arma de pacto desaparece se ela estiver a mais de 1,5 metro de você por 1 minuto ou mais. Ela também desaparece se você usar essa característica novamente, se você dissipar a arma (não requer ação) ou se você morrer.\r\nVocê pode transformar uma arma mágica em sua arma de pacto ao realizar um ritual especial enquanto empunha a arma. Você precisa de 1 hora para concluir o ritual, que pode ser realizado durante um descanso curto. Você pode dissipar a arma, guardando-a em um espaço extradimensional, e ela reaparece toda vez que você criar sua arma de pacto. A arma deixa de ser sua arma de pacto se você morrer, se você realizar um ritual de 1 hora com outra arma diferente ou se você realizar um ritual de 1 hora para romper seu elo com ela. A arma aparece aos seus pés se ela estiver no espaço extradimensional quando o elo for quebrado.'),
(50, 'Dádiva do Pacto - Pacto do Tomo', 'Seu patrono lhe deu um grimório chamado Livro das Sombras. Quando você adquire essa característica, escolha três truques da lista de magias de qualquer classe. Enquanto o livro estiver com você, você poderá conjurar esses truques à vontade. Eles não contam no número de truques que você conhece. Esses truques são considerados magias de bruxo para você e não precisam ser da mesma lista de magia.\r\nSe você perder seu Livro das Sombras, você pode realizar uma cerimônia de 1 hora para receber um substituto do seu patrono. Essa cerimônia pode ser realizada durante um descanso curto ou longo e destrói o livro anterior. O livro se torna cinzas quando você morre.'),
(51, 'Arcana Mística', 'No 11° nível, seu patrono confere a você um segredo mágico conhecido como arcana. Escolha uma magia de 6° nível da lista de magias de bruxo como sua arcana.\r\nVocê pode conjurar essa magia arcana uma vez sem gastar um espaço de magia. Você deve terminar um descanso longo antes de poder fazer isso novamente.\r\nEm nível altos, você adquire mais magias de bruxo de= sua escolha que podem ser conjuradas dessa forma: uma magia de 7° nível no 13° nível, uma magia de 8° nível no 15° nível e uma magia de 9° nível no 17° nível. Você recupera todos os usos de sua Arcana Mística quando você termina um descanso longo.'),
(52, 'Mestre Místico', 'No 20° nível, você pode recarregar sua reserva interior de poder místico quando suplicar ao seu patrono para recuperar espaços de magia gastos. Você pode gastar 1 minuto suplicando pela ajuda do seu patrono para recuperar todos os espaços de magia gastos da sua característica Magia de Pacto. Uma vez que você recuperou espaços de magia com essa característica, você deve terminar um descanso longo antes de fazê-lo novamente.'),
(53, 'A Arquifada', 'Seu patrono é um senhor ou senhora das fadas, uma criatura lendária que detém segredos que foram esquecidos antes das raças mortais nascerem. As motivações desses seres são, muitas vezes, inescrutáveis e, as vezes, excêntricas e podem envolver esforços para adquirir grandes poderes mágicos ou resolução de\r\ndesavenças antigas. Incluem-se dentre esses seres o Príncipe do Frio; a Rainha do Ar e Trevas, regente da Corte do Crepúsculo; Titania da Corte do Verão; seu cônjuge, Oberon, o Senhor Verdejante; Hyrsam, o\r\nPríncipe dos Tolos; e bruxas antigas.'),
(54, 'A Arquifada - Lista de Magia Expandida', 'A Arquifada permite que você escolha magias de uma lista expandida quando você for aprender magias de bruxo. As seguintes magias são adicionadas a sua lista de magias de bruxo.\r\n<br><br>\r\n<b>Nível de Magia</b> | <b>Magias</b>\r\n<br><br>\r\n    1°    | fogo das fadas, sono\r\n<br>\r\n    2°    | acalmar emoções, força fantasmagórica\r\n<br>\r\n    3°    | piscar, ampliar plantas\r\n<br>\r\n    4°    | dominar besta, invisibilidade maior\r\n<br>\r\n    5°    | dominar pessoa, similaridade'),
(55, 'A Arquifada - Presença Feérica', 'A partir do 1° nível, seu patrono concede a você a habilidade de projetar a sedução e temeridade da presença da fada. Com uma ação, você pode fazer com que cada criatura num cubo de 3 metros centrado em você, faça um teste de resistência de Sabedoria com uma CD igual a de sua magia de bruxo. As criaturas que falharem no teste ficaram enfeitiçadas ou amedrontadas por você (à sua escolha) até o início do seu próximo turno.\r\nQuando você usar essa característica, você não poderá utilizá-la novamente antes de realizar um descanso curto ou longo.'),
(56, 'A Arquifada - Névoa de Fuga', 'A partir do 6° nível, você pode desaparecer em uma lufada de névoa em resposta a alguma ofensa. Quando você sofrer dano, você pode usar sua reação para ficar invisível e se teletransportar a até 18 metros para um espaço desocupado que você possa ver. Você permanece invisível até o início do seu próximo turno ou até realizar um ataque ou conjurar uma magia.\r\nApós usar essa características, você não poderá utilizá-la novamente até terminar um descanso curto ou longo.'),
(57, 'A Arquifada - Defesa Sedutora', 'A partir do 10° nível, seu patrono ensina você como voltar as magias de efeito mental dos seus inimigos contra eles. Você não pode ser enfeitiçado e, quando outra criatura tenta enfeitiçá-lo, você pode usar sua reação para tentar reverter o encanto de volta aquela criatura. A criatura deve ser bem sucedida num teste de resistência de Sabedoria contra a CD da sua magia de bruxo ou ficara enfeitiçado por 1 minuto ou até a criatura sofrer dano.'),
(58, 'A Arquifada - Delírio Sombrio', 'Começando no 14° nível, você pode imergir uma criatura num reino ilusório. Com um ação, escolha uma criatura que você possa ver a até 18 metros de você. Ela deve ser bem sucedida num teste de resistência de Sabedoria contra a CD da sua magia de bruxo. Se ela falhar, ela ficará enfeitiçada ou amedrontada por você (à sua escolha) por 1 minuto ou até você quebrar sua concentração (como se você estivesse se concentrando em uma magia). Esse efeito termina prematuramente se a criatura sofrer dano.\r\nAté que essa ilusão termine, a criatura acredita que está perdida num reino enevoado, a aparência desse reino fica a seu critério. A criatura só pode ver e ouvir a si mesma, a você e a sua ilusão.\r\nVocê deve terminar um descanso curto ou longo antes de poder usar essa característica novamente.'),
(59, 'O Corruptor', 'Você realizou um pacto com um corruptor dos planos de existência inferiores, um ser cujos objetivos são o mal, mesmo se você se opor a esses objetivos. Tais seres desejam corromper ou destruir todas as coisas, em última análise, até mesmo você. Corruptores poderosos o bastante para forjar pactos incluem lordes demônios como Demogorgon, Orcus, Fraz’Urb-luu e Bafomé; arquidiabos como Asmodeus, Dispater, Mefistófeles e Belial; senhores das profundezas e balors que sejam excepcionalmente poderosos; e ultraloths e outros senhores dos yugoloths.'),
(60, 'O Corruptor - Lista de Magia Expandida', 'O Corruptor permite que você escolha magias de uma lista expandida quando você for aprender magias de bruxo. As seguintes magias são adicionadas a sua lista de magias de bruxo.\r\n<br><br>\r\n<b>Nível de Magia</b> | <b>Magias</b>\r\n<br><br>\r\n    1°    |  mãos flamejantes, comando\r\n<br>\r\n    2°    |  cegueira/surdez, raio ardente\r\n<br>\r\n    3°    |  bola de fogo, névoa fétida\r\n<br>\r\n    4°    |  escudo de fogo, muralha de fogo\r\n<br>\r\n    5°    |  coluna de chamas, consagrar'),
(61, 'O Corruptor - Benção do Obscuro', 'A partir do 1° nível, quando você reduzir uma criatura hostil a 0 pontos de vida, você ganha uma quantidade de pontos de vida temporários igual ao seu modificador de Carisma + seu nível de bruxo (mínimo 1).'),
(62, 'O Corruptor - Sorte do Próprio Obscuro', 'A partir do 6° nível, você pode pedir ao seu patrono para alterar o destino em seu favor. Quando você realizar um teste de habilidade ou um teste de resistência, você pode usar essa característica para adicionar 1d10 a sua jogada. Você pode fazer isso após ver sua jogada inicial, mas antes que qualquer efeito da jogada ocorra.\r\nApós usar essa características, você não poderá utilizá-la novamente até terminar um descanso curto ou longo.'),
(63, 'O Corruptor - Resistência Demoníaca', 'A partir do 10° nível, você pode escolher um tipo de dano quando você terminar um descanso curto ou longo. Você adquire resistência contra esse tipo de dano até você escolher um tipo de dano diferente com essa característica. Dano causado por armas mágicas ou armas de prata ignoram essa resistência.'),
(64, 'O Corruptor - Lançar no Inferno', 'A partir do 14° nível, quando você atingir uma criatura com um ataque, você pode usar essa característica para, instantaneamente, transportar o alvo para os planos inferiores. A criatura desaparece e é jogada para um lugar similar a um pesadelo.\r\nNo final do seu turno, o alvo retorna ao lugar que ela ocupava anteriormente, ou para o espaço desocupado mais próximo. Se o alvo não for um corruptor, ele sofre 10d10 de dano psíquico à medida que toma conta da experiência traumática.\r\nApós usar essa características, você não poderá utilizá-la novamente até terminar um descanso curto ou longo.'),
(65, 'O Grande Antigo', 'Seu patrono é uma entidade misteriosa cuja natureza é profundamente alheia ao tecido da realidade. Ela deve ter vindo do Reino Distante, o espaço além da realidade, ou ela pode ser um dos deuses anciãos conhecido apenas nas lendas. Seus motivos são incompreensíveis para os mortais e seu conhecimento é tão imenso e antigo que, até mesmo, as mais grandiosas bibliotecas desbotam em comparação com os vastos segredos que ele detém. O Grande Antigo pode desconhecer a sua existência ou ser totalmente indiferente a você, mas os segredos que você desvendou permitem que você obtenha suas magias dele.\r\nEntidades desse tipo incluem Ghaunadar, conhecido como Aquele que Espreita; Tharizdun, o Deus Acorrentado; Dendar, a Serpente da Noite; Zargon, o Retornado; Grande Cthulhu; entre outros seres insondáveis.'),
(66, 'O Grande Antigo - Lista de Magia Expandida', 'O Grande Antigo permite que você escolha magias de uma lista expandida quando você for aprender magias de bruxo. As seguintes magias são adicionadas a sua lista de magias de bruxo.\r\n<br><br>\r\n<b>Nível de Magia</b> | <b>Magias</b>\r\n<br><br>\r\n    1°    | sussurros dissonantes, riso histérico de Tasha\r\n<br>\r\n    2°    | detectar pensamentos, força fantasmagórica\r\n<br>\r\n    3°    | clarividência, enviar mensagem\r\n<br>\r\n    4°    | dominar besta, tentáculos negros de Evard\r\n<br>\r\n    5°    | dominar pessoa, telecinésia'),
(67, 'O Grande Antigo - Despertar a Mente', 'A partir do 1° nível, seu conhecimento alienígena concede a você a habilidade de tocar a mente de outras criaturas. Você pode se comunicar telepaticamente com qualquer criatura que você possa ver a até 9 metros de você. Você não precisa partilhar um idioma com a criatura para compreender suas expressões telepáticas, mas a criatura deve ser capaz de compreender pelo menos um idioma.'),
(68, 'O Grande Antigo - Proteção Entrópica', 'A partir do 6° nível, você aprende a se proteger magicamente contra ataques e a transformar os ataques mal sucedidos de seus inimigos em boa sorte pra você. Quando uma criatura realizar uma jogada de ataque contra você, você pode usar sua reação para impor desvantagem nesse jogada. Se o ataque errar você, sua próxima jogada de ataque contra essa criatura recebe vantagem se você o fizer antes do final do seu próximo turno.\r\nApós usar essa características, você não poderá utilizá-la novamente até terminar um descanso curto ou longo.'),
(69, 'O Grande Antigo - Escudo de Pensamentos', 'A partir do 10° nível, seus pensamentos não podem ser lidos através de telepatia ou outros meios, a não ser que você permita. Você também adquire resistência a dano psíquico e, toda vez que uma criatura causar dano psíquico a você, essa criatura sofre a mesma quantidade de dano que você sofreu.'),
(70, 'O Grande Antigo - Criar Lacaio', 'No 14° nível, você adquire a habilidade de infectar a mente de um humanoide com a magia alienígena do seu patrono. Você pode usar sua ação para tocar um humanoide incapacitado. Essa criatura então, ficará\r\nenfeitiçada por você até que a magia remover maldição seja conjurada sobre ela, a condição enfeitiçado seja removida dela ou você use essa característica novamente.\r\nVocê pode se comunicar telepaticamente com a criatura enfeitiçada contanto que ambos estejam no mesmo plano de existência.'),
(71, 'Invocações Místicas - Armadura de Sombras', 'Você pode conjurar armadura arcana em si mesmo, à vontade, sem precisar gastar um espaço de magia ou componentes materiais.'),
(72, 'Invocações Místicas - Correntes de Cárceri', 'Pré-requisito: 15° nível, característica Corrente de Cárceri \r\n\r\nVocê pode conjurar imobilizar monstro, à vontade – tendo como alvo um celestial, corruptor ou elemental – sem precisar gastar um espaço de magia ou componentes materiais. Você deve terminar um descanso longo antes de poder usar essa invocação na mesma criatura novamente.'),
(73, 'Invocações Místicas - Encharcar a Mente', 'Pré-requisito: 5° nível\r\n\r\nVocê pode conjurar lentidão, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(74, 'Invocações Místicas - Escultor de Carne', 'Pré-requisito: 7° nível\r\n\r\nVocê pode conjurar metamorfose, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(75, 'Invocações Místicas - Explosão Agonizante', 'Pré-requisito: truque rajada mística\r\n\r\nQuando você conjura rajada mística, adicione seu modificador de Carisma ao dano causado quando atingir.'),
(76, 'Invocações Místicas - Explosão Repulsiva', 'Pré-requisito: truque rajada mística\r\n\r\nQuando você atingir uma criatura com uma rajada mística, você pode empurrar a criatura até 3 metros para longe de você em linha reta.'),
(77, 'Invocações Místicas - Idioma Bestial', 'Você pode conjurar falar com animais, à vontade, sem precisar gastar um espaço de magia.'),
(78, 'Invocações Místicas - Influência Enganadora', 'Você ganha proficiência nas perícias Enganação e Persuasão.'),
(79, 'Invocações Místicas - Lacaios do Caos', 'Pré-requisito: 9° nível\r\n\r\nVocê pode lançar conjurar elemental, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(80, 'Invocações Místicas - Lâmina Sedenta', 'Pré-requisito: 5° nível, característica Pacto da Lâmina\r\n\r\nVocê pode atacar com sua arma do pacto duas vezes, ao invés de apenas uma, quando você usa a ação de Ataque no seu turno.'),
(81, 'Invocações Místicas - Lança Mística', 'Pré-requisito: truque rajada mística\r\n\r\nQuando você conjura rajada mística, seu alcance será de 90 metros.'),
(82, 'Invocações Místicas - Larápio dos Cinco Destinos', 'Você pode conjurar perdição, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(83, 'Invocações Místicas - Livro de Segredos Antigos', 'Pré-requisito: Característica Pacto do Tomo\r\n\r\nVocê pode agora, registrar rituais mágicos no seu Livro das Sombras. Escolha duas magias de 1° nível que possuam o descritor ritual da lista de magias de qualquer classe. A magia aparece no livro e não conta no número de magias que você conhece. Com o seu Livro das Sombras em mãos, você pode conjurar as magias escolhidas como rituais. Você não pode conjurar essas magias, exceto na forma de rituais, a não ser que você tenha aprendido elas através de outros meios. Você também pode conjurar uma magia de bruxo que você conheça como ritual se ela possuir o descritor ritual. Os rituais não precisam ser da mesma lista de magias.\r\nDurante suas aventuras, você pode adicionar outras magias de ritual ao seu Livro das Sombras. Quando você encontrar tais magias, você pode adicioná-la ao livro se o nível da magia for igual ou inferior à metade do seu nível de bruxo (arredondado para baixo) e se você tiver tempo para gastar transcrevendo a magia. Para cada nível da magia, o processo de transcrição levará 2 horas e custará 50 po, devido às tintas raras necessárias para inscrevê-la.'),
(84, 'Invocações Místicas - Máscara das Muitas Faces', 'Você pode conjurar disfarçar-se, à vontade, sem precisar gastar um espaço de magia.'),
(85, 'Invocações Místicas - Mestre das Infindáveis Formas', 'Pré-requisito: 15° nível\r\n\r\nVocê pode conjurar alterar-se, à vontade, sem precisar gastar um espaço de magia.'),
(86, 'Invocações Místicas - Olhar de Duas Mentes', 'Você pode usar sua ação para tocar um humanoide voluntário e perceber através do seus sentidos até o final do seu próximo turno. Conquanto que a criatura esteja no mesmo plano de existência que você, você pode usar sua ação nas rodadas subsequentes para manter a conexão, estendendo a duração até o início do seu próximo turno. Enquanto estiver percebendo através dos sentidos de outra criatura, você aproveita os benefícios de todos os sentidos especiais possuídos pela criatura e você fica cego e surdo ao que está a sua volta.'),
(87, 'Invocações Místicas - Olho do Guardião das Runas', 'Você pode ler todas as escritas.'),
(88, 'Invocações Místicas - Palavra Terrível', 'Pré-requisito: 7° nível\r\n\r\nVocê pode conjurar confusão, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(89, 'Invocações Místicas - Passo Ascendente', 'Pré-requisito: 9° nível\r\n\r\nVocê pode conjurar levitação em si mesmo, à vontade, sem precisar gastar um espaço de magia ou componentes materiais.'),
(90, 'Invocações Místicas - Salto Transcendental', 'Pré-requisito: 9° nível\r\n\r\nVocê pode conjurar salto em si mesmo, à vontade, sem precisar gastar um espaço de magia ou componentes materiais.'),
(91, 'Invocações Místicas - Sinal de Mau Agouro', 'Pré-requisito: 5° nível\r\n\r\nVocê pode conjurar rogar maldição, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(92, 'Invocações Místicas - Sorvedor de Vida', 'Pré-requisito: 12° nível, característica Pacto da Lâmina\r\n\r\nQuando você atingir uma criatura com sua arma do pacto, a criatura sofre uma quantidade de dano necrótico adicional igual ao seu modificador de Carisma (mínimo 1).'),
(93, 'Invocações Místicas - Sussurros da Sepultura', 'Pré-requisito: 9° nível\r\n\r\nVocê pode conjurar falar com os mortos, à vontade, sem precisar gastar um espaço de magia.'),
(94, 'Invocações Místicas - Sussurros Sedutores', 'Pré-requisito: 7° nível\r\n\r\nVocê pode conjurar compulsão, uma vez, usando um espaço de magia de bruxo. Você não pode fazer isso novamente até terminar um descanso longo.'),
(95, 'Invocações Místicas - Uno com as Sombras', 'Pré-requisito: 5° nível\r\n\r\nQuando você estiver em uma área de penumbra ou escuridão, você pode usar sua ação para ficar invisível até se mover ou realizar uma ação ou reação.'),
(96, 'Invocações Místicas - Vigor Abissal', 'Você pode conjurar vitalidade falsa em si mesmo, à vontade, como uma magia de 1° nível, sem precisar gastar um espaço de magia ou componentes materiais.'),
(97, 'Invocações Místicas - Visão da Bruxa', 'Pré-requisito: 15° nível\r\n\r\nVocê pode ver a verdadeira forma de qualquer metamorfo ou criatura oculta através de magias de ilusão ou transmutação contanto que a criatura esteja a até 9 metros de você e você tenha linha de visão.'),
(98, 'Invocações Místicas - Visão Mística', 'Você pode conjurar detectar magia, à vontade, sem precisar gastar um espaço de magia.'),
(99, 'Invocações Místicas - Visões de Reinos Distantes', 'Pré-requisito: 15° nível\r\n\r\nVocê pode conjurar olho arcano, à vontade, sem precisar gastar um espaço de magia.'),
(100, 'Invocações Místicas - Visões nas Brumas', 'Você pode conjurar imagem silenciosa, à vontade, sem precisar gastar um espaço de magia ou componentes materiais.'),
(101, 'Invocações Místicas - Voz do Mestre das Correntes', 'Pré-requisito: Característica Pacto da Corrente\r\n\r\nVocê pode se comunicar telepaticamente com seu familiar e perceber através dos sentidos do seu familiar enquanto ambos estiverem no mesmo plano de existência. Além disso, enquanto estiver percebendo através dos sentidos do seu familiar, você também poderá falar através dele com a sua voz, mesmo que seu familiar, normalmente, seja incapaz de falar.'),
(102, 'Domínio Divino', 'Escolha um domínio relacionado à sua divindade: Conhecimento, Enganação, Guerra, Luz, Natureza, Tempestade ou Vida. Cada domínio é detalhado ao final da descrição da classe e, cada um, fornece exemplos dos deuses associados a eles. Essa escolha, realizada no 1º nível, concede magias de domínio e outras características. Ela também concede a você outras formas de utilizar seu Canalizar Divindade quando você ganhá-lo no 2º nível, bem como outros benefícios no 6º, 8º e 17º níveis.'),
(103, 'Domínio Divino - Magias de Domínio', 'Cada domínio tem uma lista de magias – as magias de domínio – que você adquire nos níveis especificados pelo seu domínio. Quando você ganha uma magia de domínio, você sempre a tem preparada, e essa magia não conta no número de magias que você pode preparar a cada dia.\r\nSe você tem uma magia de domínio que não aparece na lista de magias de clérigo, mesmo assim ela é uma magia de clérigo para você.'),
(104, 'Canalizar Divindade', 'No 2º nível, você se torna capaz de canalizar energia diretamente de sua divindade, utilizando-a como combustível para efeitos mágicos. Você começa com dois efeitos: Expulsar Mortos-vivos e um efeito determinado pelo seu domínio. Alguns domínios conferem efeitos adicionais conforme você avança de nível, como consta na descrição de cada domínio.\r\n<br>\r\nQuando você usar seu Canalizar Divindade, você escolhe qual efeito quer criar. Você precisa terminar um descanso curto ou longo para usar a característica de novo.\r\n<br>\r\nAlguns efeitos requerem teste de resistência. Quando você usar um desses efeitos, a CD é igual a das suas magias de clérigo.\r\n<br>\r\nA partir do 6º nível, você pode Canalizar Divindade duas vezes entre descansos e a partir do 18º nível, três vezes. Você recupera os usos dessa característica quando termina um descanso curto ou longo.'),
(105, 'Canalizar Divindade - Canalizar Divindade: Expulsar Mortos Vivos', 'Usando uma ação, você levanta seu símbolo sagrado e murmura uma prece repreendendo os mortos-vivos. Cada morto-vivo que puder ver ou ouvir você em um raio de 9 metros a partir de você, deve fazer um teste de resistência de Sabedoria. Se falhar, a criatura está expulsa por 1 minuto ou até sofrer algum dano.\r\n<br>\r\nUma criatura expulsa deve usar seu turno para fugir da melhor forma possível e de forma alguma pode aproximar-se a mais de 9 metros de você por vontade própria. Ela também não pode usar reações. Como uma ação, a criatura pode apenas realizar uma Disparada ou tentar escapar de um efeito que a impeça de se mover. Se não há lugar para ir, a criatura pode usar a ação Esquivar.'),
(106, 'Destruir Mortos-Vivos', 'A partir do 5º nível, quando um morto-vivo falhar no teste de resistência contra a sua característica Expulsar Mortos-vivos, ele é instantaneamente destruído se o Nível de Desafio dele for menor ou igual ao valor da tabela Destruir Mortos-vivos, de acordo com seu nível de clérigo.\r\n<br><br>\r\n<b>Nível de Clérigo</b> | <b>Destrói Mortos Vivos de ND</b>\r\n<br><br>\r\n 5° |  1/2 ou menor\r\n<br>\r\n 8° |  1 ou menor\r\n<br>\r\n11° |  2 ou menor\r\n<br>\r\n14° |  3 ou menor\r\n<br>\r\n17° |  4 ou menor'),
(107, 'Intervenção Divina', 'A partir do 10º nível, você pode rogar à sua divindade para que auxilie você em uma árdua tarefa.\r\nImplorar pelo auxílio requer uma ação. Você precisa descrever o que busca e realizar uma rolagem de dado de percentagem. Se o resultado for menor ou igual ao seu nível de clérigo, sua divindade intervém. O Mestre escolhe a natureza da intervenção. O efeito de qualquer magia de clérigo ou magia de domínio é apropriado como resultado.\r\nSe sua divindade intervir, você fica impedido de usar essa característica de novo por 7 dias. Do contrário, você pode usá-la de novo após terminar um descanso longo.\r\nNo 20º nível, seus pedidos de intervenção funcionam automaticamente, sem necessidade de rolagem de dados.'),
(108, 'Domínio do Conhecimento', 'Os deuses do conhecimento – como Oghma, Boccob, Gilean, Aureon e Thoth – valorizam o estudo e compreensão acima de tudo. Alguns ensinam que o conhecimento deve ser coletado e partilhado em bibliotecas e universidades ou promovem o conhecimento prático do artesanato e da invenção. Algumas divindades escondem conhecimentos e os mantem em segredo para si mesmos. E outros prometem a seus seguidores que eles ganharão poderes tremendos se desvendarem os segredos do multiverso. Os seguidores desses deuses estudam conhecimento exotérico, coletam tomos antigos, escavam locais secretos da terra e aprendem tudo que podem. Alguns deuses do conhecimento que promovem a prática de ofícios e criação incluem deuses da forja como Gond, Reorx, Onatar, Moradin, Hefesto e Goibhniu.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  comando, identificação\r\n<br>\r\n3° |  augúrio, sugestão\r\n<br>\r\n5° |  dificultar detecção, falar com os mortos\r\n<br>\r\n7° |  olho arcano, confusão\r\n<br>\r\n9° |  conhecimento lendário, vidência'),
(109, 'Domínio do Conhecimento - Bençãos do Conhecimento', 'No 1° nível, você aprende dois idiomas, à sua escolha. Você também se torna proficiente em duas perícias, à sua escolha, dentre as seguintes: Arcanismo, História, Natureza ou Religião.\r\nSeu bônus de proficiência é dobrado em qualquer teste de habilidade que você fizer usando qualquer dessas perícias.'),
(110, 'Domínio do Conhecimento - Canalizar Divindade: Conhecimento das Eras', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para beber da fonte divina do conhecimento. Com uma ação, você escolhe uma perícia ou ferramenta. Por 10 minutos, você terá proficiência com a perícia ou ferramenta escolhida.');
INSERT INTO `habilidade_classe` (`hab_class_cod`, `hab_class_nome`, `hab_class_desc`) VALUES
(111, 'Domínio do Conhecimento - Canalizar Divindade: Ler Pensamentos', 'No 6° nível, você pode usar seu Canalizar Divindade para ler a mente de uma criatura. Você pode, então, usar seu acesso a mente da criatura para comandá-la.\r\nCom uma ação, escolha uma criatura que você possa ver que esteja a até 18 metros de você. Essa criatura deve realizar um teste de resistência de Sabedoria, se for bem sucedida nesse teste, você não poderá usar essa característica contra ela novamente até terminar um descanso longo.\r\nSe a criatura falhar no teste, você pode ler seus pensamentos superficiais (aqueles mais atuais, que refletem suas emoções e no que você está pensando constantemente) quando estiver a até 18 metros de você. Esse efeito dura por 1 minuto.\r\nDurante esse tempo, você pode usar sua ação para terminar esse efeito e conjurar a magia sugestão na criatura sem gastar um espaço de magia. O alvo falha automaticamente no teste de resistência contra essa magia.'),
(112, 'Domínio do Conhecimento - Conjuração Poderosa', 'A partir do 8° nível, você adiciona seu modificador de Sabedoria no dano causado por qualquer truque de clérigo.'),
(113, 'Domínio do Conhecimento - Visões do Passado', 'A partir do 17° nível, você pode convocar visões do passado relacionadas a um objeto que você esteja segurando ou sobre o ambiente ao seu redor. Você gasta pelo menos 1 minuto meditando e rezando, então, recebe oníricos vislumbres turvos dos eventos recentes. Você pode meditar dessa maneira por um número de minutos igual ao seu valor de Sabedoria e deve manter a concentração durante esse tempo, como se você estivesse conjurando uma magia.\r\n<br>\r\nQuando você usa essa característica, você não pode usá-la novamente até terminar um descanso curto ou longo.\r\n<br><br>\r\n<b>Leitura de Objeto.</b> Ao segurar um objeto enquanto medita, você pode ter visões do dono anterior do objeto. Depois de meditar por 1 minuto, você descobre como o antigo dono adquiriu e perdeu o objeto, assim como o evento recente mais significativo envolvendo o objeto e seu dono. Se o objeto foi portado por outra criatura num passado recente (dentro de um número de dias igual ao seu valor de Sabedoria), você pode gastar 1 minuto adicional, por cada dono, para descobrir as mesmas informações sobre essa criatura.\r\n<br><br>\r\n<b>Leitura Local.</b> À medida que você medita, você tem visões dos eventos recentes nas suas vizinhanças próximas (uma sala, rua, túnel, clareira, ou similar, de até 15 metros cúbicos), voltando um número de dias igual ao seu valor de Sabedoria. Para cada minuto que você meditar, você descobre sobre um evento significativo, a partir dos mais recentes. Eventos significativos, normalmente envolvem emoções fortes, como batalhas e traições, casamentos e assassinatos, nascimentos e funerais. No entanto, também podem incluir eventos mais mundanos, que podem ser, no entanto, relevantes na sua situação atual.'),
(114, 'Domínio da Enganação', 'Deuses da enganação – como Tymora, Beshaba, Olidammara, o Viajante, Garl Glittergold e Loki – são causadores de travessuras e instigadores que se mantem como um desafio constante para a aceitação das ordens tanto de mortais quanto dos deuses. Eles são patronos dos ladrões, trapaceiros, apostadores, rebeldes e libertadores. Seus clérigos são uma força intrometida no mundo, ferindo orgulhos, zombando de tiranos, roubando dos ricos, libertando cativos e desrespeitando tradições vazias. Eles preferem subterfúgio, trapaças, enganação e rouba no lugar do confronto direto.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  enfeitiçar pessoa, disfarçar-se\r\n<br>\r\n3° |  reflexos, passos sem pegadas\r\n<br>\r\n5° |  piscar, dissipar magia\r\n<br>\r\n7° |  porta dimensional, metamorfose\r\n<br>\r\n9° |  dominar pessoa, modificar memória'),
(115, 'Domínio da Enganação - Benção do Trapaceiro', 'A partir do momento em que você escolhe esse domínio, no 1° nível, você pode usar sua ação para tocar uma criatura voluntária além de você mesmo para conceder vantagem em testes de Destreza (Furtividade). Essa bênção dura por 1 hora ou até você usar essa característica novamente.'),
(116, 'Domínio da Enganação - Canalizar Divindade: Invocar Duplicidade', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para criar uma duplicada ilusória de si mesmo.\r\nCom uma ação, você cria uma ilusão perfeita de si mesmo que dura por 1 minuto ou até você perder sua concentração (como se você estivesse se concentrando em uma magia). A ilusão aparece em um espaço desocupado que você possa ver a até 9 metros de você. Com uma ação bônus, no seu turno, você pode mover a ilusão até 9 metros para um espaço que você possa ver, mas ela deve permanecer a até 36 metros de você.\r\nPela duração, você pode conjurar magias como se você estivesse no espaço ocupado pela ilusão, mas você deve usar seus próprios sentidos. Além disso, quando ambos você e sua ilusão estiverem a 1,5 metro de uma criatura que possa ver a ilusão, você tem vantagem nas jogadas de ataque contra essa criatura, devido a distração causada no alvo pela ilusão.'),
(117, 'Domínio da Enganação - Canalizar Divindade: Manto de Sombras', 'No 6° nível, você pode usar seu Canalizar Divindade para desaparecer.\r\nCom uma ação, você se torna invisível até o final do seu próximo turno. Você se torna visível se atacar ou conjurar uma magia.'),
(118, 'Domínio da Enganação - Golpe Divino', 'No 8º nível, você ganha a habilidade de imbuir seus ataques com arma com veneno – uma dádiva da sua divindade. Uma vez em cada um de seus turnos, quando você acertar uma criatura com um ataque com arma, você pode fazer o ataque causar 1d8 de dano de veneno extra ao alvo. Quando alcançar o 14º nível, o dano extra aumenta para 2d8.'),
(119, 'Domínio da Enganação - Duplicidade Aprimorada', 'A partir do 17° nível, você pode criar até quatro duplicatas de você, ao invés de uma, quando usar Invocar Duplicidade. Com uma ação bônus, no seu turno, você pode mover quantas duplicadas quiser até 9 metros, até no máximo de 36 metros de distância.'),
(120, 'Domínio da Guerra', 'A guerra tem muitas manifestações. Ela pode tornar pessoas comuns em heróis. Ela pode ser desesperadora e horripilante, com atos de crueldade e covardia obscurecendo momentos de bravura e coragem. Em ambos os casos, os deuses da guerra zelam pelos guerreiros e os recompensa pelos seus grandes feitos. Os clérigos de tais deuses se sobressaem em batalha, inspirando os outros a lutar o bom combate ou oferecendo atos de violência como suas orações. Entre os deuses da guerra estão inclusos campeões da honra e bravura (como Torm, Heironeous e Kir-Jolith) assim como deuses da destruição e pilhagem (como Erythnul, a Fúria, Gruumsh e Ares) e deuses da conquista e dominação (como Bane, Hextor e Maglubiyet). Outros deuses da guerra (como Tempus, Nike e Nuada) tomam uma postura mais neutra, promovendo a guerra em todas as suas manifestações e apoiando os guerreiros em qualquer circunstância.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  auxílio divino, escudo da fé\r\n<br>\r\n3° |  arma mágica, arma espiritual\r\n<br>\r\n5° |  manto do cruzado, espíritos guardiões\r\n<br>\r\n7° |  movimentação livre, pele de pedra\r\n<br>\r\n9° |  coluna de chamas, imobilizar monstro'),
(121, 'Domínio da Guerra - Proficiência Adicional', 'No 1° nível, você adquire proficiência em armas marciais e em armaduras pesadas.'),
(122, 'Domínio da Guerra - Sacerdote da Guerra', 'A partir do 1° nível, seu deus envia rajadas de inspiração a você quando você está engajado em combate. Quando você usa a ação de Ataque, você pode realizar um ataque com arma, com uma ação bônus.\r\nVocê pode usar essa característica um número de vezes igual ao seu modificador de Sabedoria (mínimo uma vez). Você recupera todos os usos gastos após terminar um descanso longo.'),
(123, 'Domínio da Guerra - Canalizar Divindade: Ataque Dirigido', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para golpear com precisão sobrenatural. Quando você realiza uma jogada de ataque, você pode usar seu Canalizar Divindade para recebe +10 de bônus na jogada. Você realiza essa escolha depois de ver a rolagem, mas antes do Mestre dizer se o ataque atingiu ou errou.'),
(124, 'Domínio da Guerra - Canalizar Divindade: Benção do Deus da Guerra', 'No 6° nível, quando uma criatura a até 9 metros de você realizar uma jogada de ataque, você pode usar sua reação para conceder a criatura +10 de bônus nessa jogada, usando seu Canalizar Divindade. Você realiza essa escolha depois de ver a rolagem, mas antes do Mestre dizer se o ataque atingiu ou errou.'),
(125, 'Domínio da Guerra - Golpe Divino', 'No 8º nível, você ganha a habilidade de imbuir seus ataques com energia divina. Uma vez em cada um de seus turnos, quando você acertar uma criatura com um ataque com arma, você pode fazer o ataque causar 1d8 de dano extra de mesmo tipo do dano da arma ao alvo. Quando alcançar o 14º nível, o dano extra aumenta para 2d8.'),
(126, 'Domínio da Guerra - Avatar da Batalha', 'A partir do 17° nível, você ganha resistência a dano de concussão, cortante e perfurante de ataques não-mágicos.'),
(127, 'Domínio da Luz', 'Deuses da luz – como Helm, Lathander, Pholtus, Branchala, a Chama Prateada, Belenus, Apolo e Re-Horakhty – promovem os ideias do renascimento e renovação, verdade, vigilância e beleza, muitas vezes usando o símbolo do sol. Alguns desses deuses são retratados como o próprio sol ou como um cocheiro que carrega o sol através do céu. Outros são sentinelas incansáveis cujos olhos penetram cada sombra e veem através de cada enganação. Alguns são divindades da beleza e arte que ensinam que a arte é o veículo para o aprimoramento da alma. Clérigos de um deus da luz são almas esclarecidas infundidas com radiação e o poder divino da visão do discernimento, conhecidos por afastar as mentiras e incineras a escuridão.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  mãos flamejantes, fogo das fadas\r\n<br>\r\n3° |  esfera flamejante, raio ardente\r\n<br>\r\n5° |  luz do dia, bola de fogo\r\n<br>\r\n7° |  guardião da fé, muralha de fogo\r\n<br>\r\n9° |  coluna de chamas, vidência'),
(128, 'Domínio da Luz - Truque Adicional', 'Quando você escolhe esse domínio no 1° nível, você ganha o truque luz se você ainda não o conhecia.'),
(129, 'Domínio da Luz - Labareda Protetora', 'Também a partir do 1° nível, você pode interpor luz divina entre você e uma criatura atacante. Quando você for atacado por uma criatura a até 9 metros de você que você pode ver, você pode usar sua reação para impor desvantagem na jogada de ataque, causando labaredas de luz na frente do atacante antes dele atingir ou errar. Um atacante que não puder ser cegado é imune a essa característica.\r\nVocê pode usar essa característica um número de vezes igual ao seu modificador de Sabedoria (mínimo uma vez). Você recupera todos os usos gastos após terminar um descanso longo.'),
(130, 'Domínio da Luz - Canalizar Divindade: Radiação do Amanhecer', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para criar uma explosão de luz solar, banindo a escuridão e causando dano radiante aos inimigos.\r\nCom uma ação, você ergue seu símbolo sagrado e qualquer escuridão mágica num raio de 9 metros de você é dissipada. Além disso, cada criatura hostil a até 9 metros deve realizar um teste de resistência de Constituição. Uma criatura sofre dano radiante igual a 2d10 + seu nível de clérigo se falhar no teste e metade desse dano caso seja bem sucedida. Uma criatura que tenha cobertura total contra você não é afetada.'),
(131, 'Domínio da Luz - Labareda Aprimorada', 'No 6° nível, você também pode utilizar sua característica Labareda Protetora quando uma criatura que você possa ver a até 9 metros atacar outra criatura diferente de você.'),
(132, 'Domínio da Luz - Conjuração Poderosa', 'A partir do 8° nível, você adiciona seu modificador de Sabedoria no dano causado por qualquer truque de clérigo.'),
(133, 'Domínio da Luz - Coroa de Luz', 'A partir do 17° nível, você pode usar sua ação para ativar uma aura de luz solar que dura por 1 minuto ou até você dissipá-la usando outra ação. Você emite luz plena num raio de 18 metros e penumbra a até 9 metros além disso. Os seus inimigos na área de luz plena tem desvantagem nos testes de resistência contra suas magias que causam dano de fogo ou dano radiante.'),
(134, 'Domínio da Natureza', 'Os deuses da natureza são tão variados como a própria natureza do mundo, desde deuses inescrutáveis de profundas florestas (como Silvanus, Obad-Hai, Chislev, Balinor e Pã) até divindades amigáveis associadas a alguma fonte ou bosque em particular (como Eldath). Druidas reverenciam a natureza como um todo e podem vir a servir essas divindades, praticando ritos misteriosos e recitando orações a muito esquecidas em sua própria língua secreta. Porém, muitos desses deuses também possuem clérigos, campeões que tem um papel mais ativo em promover os interesses particulares de um deus da natureza. Esses clérigos devem caçar monstruosidades malignas que usurpam dos bosques, abençoar a colheita dos fieis ou murchar a cultura dos que irritarem seus deuses.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  amizade animal, falar com animais\r\n<br>\r\n3° |  pele de árvore, crescer espinhos\r\n<br>\r\n5° |  ampliar plantas, muralha de vento\r\n<br>\r\n7° |  dominar besta, vinha esmagadora\r\n<br>\r\n9° |  praga de insetos, caminhar em árvores'),
(135, 'Domínio da Natureza - Acólito da Natureza', 'No 1° nível, você aprende um truque de druida, à sua escolha. Você também ganha proficiência em uma das seguintes perícias, à sua escolha: Adestrar Animais, Natureza ou Sobrevivência.'),
(136, 'Domínio da Natureza - Proficiência Adicional', 'Também a partir do 1° nível, você adquire proficiência com armaduras pesadas.'),
(137, 'Domínio da Natureza - Canalizar Divindade: Enfeitiçar Animais e Plantas', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para enfeitiçar animais e plantas.\r\nCom uma ação, você ergue seu símbolo sagrado e invoca o nome do seu deus. Cada besta ou criatura-planta que puder ver você num raio de 9 metros, deve realizar um teste de resistência de Sabedoria. Se a criatura falhar, ela estará enfeitiçada por você durante 1 minuto ou até sofrer dano. Enquanto estiver enfeitiçada por você, ela será amistosa a você a as criaturas que você designar.'),
(138, 'Domínio da Natureza - Amortecer Elementos', 'No 6° nível, quando você ou uma criatura a até 9 metros de você sofrer dano de ácido, frio, fogo, elétrico ou trovão, você pode usar sua reação para conceder resistência a criatura contra aquele tipo de dano.'),
(139, 'Domínio da Natureza - Golpe Divino', 'No 8º nível, você ganha a habilidade de imbuir seus ataques com energia divina. Uma vez em cada um de seus turnos, quando você acertar uma criatura com um ataque com arma, você pode fazer o atque causar 1d8 de dano de frio, fogo ou elétrico (à sua escolha) extra ao alvo. Quando alcançar o 14º nível, o dano extra aumenta para 2d8.'),
(140, 'Domínio da Natureza - Senhor da Natureza', 'A partir do 17° nível, você ganha a habilidade de comandar animais e criaturas-planta. Enquanto a criatura estiver enfeitiçada pela sua característica Enfeitiçar Animais e Plantas, você pode usar uma ação bônus no seu turno para dizer verbalmente o que cada uma dessas criaturas devem fazer no próximo turno delas.'),
(141, 'Domínio da Tempestade', 'Deuses cujo portfólio contenha o domínio da Tempestade – como Talos, Umberlee, Kord, Zeboim, o Devorador, Zeus e Thor – governam tormentas, mares e céus. Estão inclusos deuses dos relâmpagos e trovões, deuses dos terremotos, alguns deuses do fogo e certos deuses da violência, força física e coragem. Em alguns panteões, um deus com esse domínio comanda os outros deuses e é conhecido pela justiça rápida levada através de relâmpagos. Nos panteões de povos marítimos e navegantes, deuses com esse domínio são divindades do oceano e patrono dos marinheiros. Deuses da tempestade enviam seus clérigos para inspirar pavor no povo comum, tanto para mantê-los no caminho da justiça e coragem quanto para oferecer sacrifícios de propiciação para afastar a ira divina.\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  névoa obscurecente, onda trovejante\r\n<br>\r\n3° |  lufada de vento, despedaçar\r\n<br>\r\n5° |  convocar relâmpagos, nevasca\r\n<br>\r\n7° |  controlar a água, tempestade de gelo\r\n<br>\r\n9° |  onda destrutiva, praga de insetos'),
(142, 'Domínio da Tempestade - Proficiência Adicional', 'A partir do 1° nível, você adquire proficiência em armas marciais e armaduras pesadas.'),
(143, 'Domínio da Tempestade - Ira da Tormenta', 'Também a partir do 1° nível, você pode repreender ataques violentamente. Quando uma criatura a 1,5 metro de você que você possa ver, atingir você com um ataque, você pode usar sua reação para forçar a criatura a realizar um teste de resistência de Destreza. A criatura sofre 2d8 de dano elétrico ou de trovão (à sua escolha) caso falhe no teste, e metade desse dano caso seja bem sucedido.\r\nVocê pode usar essa característica um número de vezes igual ao seu modificador de Sabedoria (mínimo uma vez). Você recupera todos os usos gastos após terminar um descanso longo.'),
(144, 'Domínio da Tempestade - Canalizar Divindade: Ira Destruidora', 'A partir do 2° nível, você pode usar seu Canalizar Divindade para empunhar o poder da tormenta com ferocidade desmedida.\r\nQuando você rolar dano elétrico ou trovejante, você pode usar seu Canalizar Divindade para causar o máximo de dano, ao invés de rolá-lo.'),
(145, 'Domínio da Tempestade - Golpe de Relâmpago', 'No 6° nível, quando você causa dano elétrico a uma criatura Grande ou menor, você também pode empurrá-la para até 3 metros de distância de você.'),
(146, 'Domínio da Tempestade - Golpe Divino', 'No 8º nível, você ganha a habilidade de imbuir seus ataques com energia divina. Uma vez em cada um de seus turnos, quando você acertar uma criatura com um ataque com arma, você pode fazer o ataque causar 1d8 de dano trovejante extra ao alvo. Quando alcançar o 14º nível, o dano extra aumenta para 2d8.'),
(147, 'Domínio da Tempestade - Filho da Tormenta', 'A partir do 17° nível, você adquire deslocamento de voo igual a seu deslocamento de caminhada contanto que você não esteja no subterrâneo ou em local fechado.'),
(148, 'Domínio da Vida', 'O domínio da vida foca na vívida energia positiva – uma das forças fundamentais do universo – que sustenta toda a vida. Os deuses da vida promovem a vitalidade e a saúde, curando os doentes e feridos, cuidando dos necessitados, além de afastar as forças da morte e hordas de mortos-vivos. Quase toda divindade não maligna pode alegar influência sobre esse domínio. Em particular divindades da agricultura (como Chauntea, Arawai e Demeter), do sol (como Lathander, Pelor e Re-Horakhty), da cura ou resistência (como Ilmater, Mishakal, Apolo e Diancecht), e do lar e comunidade (como Hestia, Hathor e Boldrei).\r\n<br><br>\r\n<b>Magias de Domínio</b><br>\r\n<b>Nível de Clérigo</b> | <b>Magias</b>\r\n<br><br>\r\n1° |  bênção, curar ferimentos\r\n<br>\r\n3° |  restauração menor, arma espiritual\r\n<br>\r\n5° |  sinal de esperança, revivificar\r\n<br>\r\n7° |  proteção contra a morte, guardião da fé\r\n<br>\r\n9° |  curar ferimentos em massa, reviver os mortos'),
(149, 'Domínio da Vida - Proficiência Adicional', 'Quando você escolhe este domínio no 1º nível, você ganha proficiência com armaduras pesadas.'),
(150, 'Domínio da Vida - Discípulo da Vida', 'Também no 1º nível, suas magias de cura são mais efetivas. Sempre que você conjurar uma magia de cura para recuperar pontos de vida, o alvo daquela magia recupera pontos de vida adicionais iguais a 2 + nível da magia.'),
(151, 'Domínio da Vida - Canalizar Divindade: Preservar a Vida', 'A partir do 2º nível, você pode usar seu Canalizar Divindade para curar os feridos.\r\nComo uma ação, você usa seu símbolo sagrado para invocar energia que pode recuperar um total de 5 vezes seu nível de clérigo em pontos de vida. Você escolhe quaisquer criaturas a até 9 metros de você e divide esses pontos entre elas. Essa característica só pode curar as criaturas a até metade de seu máximo de pontos de vida. Você não pode usar essa característica em um morto-vivo ou constructo.'),
(152, 'Domínio da Vida - Curandeiro Abençoado', 'A partir do 6º nível, as magias que você conjurar para curar os outros também curam você. Quando conjurar uma magia de cura em outra criatura, você também recupera pontos de vida, em um total de 2 + nível da magia.'),
(153, 'Domínio da Vida - Golpe Divino', 'No 8º nível, você ganha a habilidade de imbuir seus ataques com poder divino. Uma vez em cada um de seus turnos, quando você acertar uma criatura com um ataque com arma, você pode fazer o ataque causar 1d8 de dano radiante extra ao alvo. Quando alcançar o 14º nível, o dano extra aumenta para 2d8.'),
(154, 'Domínio da Vida - Cura Suprema', 'A partir do 17º nível, quando você jogaria normalmente um ou mais dados para recuperar pontos de vida com uma magia, você usa o maior resultado possível nos dados. Por exemplo, ao invés de recuperar 2d6 pontos de vida, você recupera 12.'),
(155, 'Druídico', 'Você conhece o Druídico, o idioma secreto dos druidas. Você pode falar esse idioma e usá-lo para deixar mensagens escondidas. Você e outros que conheçam esse idioma automaticamente veem tais mensagens. Outros perceberão a presença da mensagem se passarem num teste de Sabedoria (Percepção) CD 15, mas não conseguirão decifrá-lo sem magia.'),
(156, 'Forma Selvagem', 'A partir do 2° nível, você pode usar sua ação para assumir magicamente a forma de uma besta que você já tenha visto antes. Você pode usar essa característica duas vezes. Você recupera os usos quando termina um descanso curto ou longo.\r\n<br>\r\nSeu nível de druida determina as bestas em que você pode se transformar, como mostrado na tabela Formas de Besta. No 2° nível, por exemplo, você pode se transformar em qualquer besta que possui nível de desafio 1/4 ou inferior que não possua deslocamento de voo ou natação.\r\n<br><br>\r\n<b>Formas de Besta</b><br>\r\n<b>Nível</b> | <b>ND Máx.</b> | <b>Limitações</b> | <b>Exemplo</b>\r\n<br><br>\r\n2° | 1/4 | Sem deslocamento de voo ou natação |  Lobo\r\n<br>\r\n4° | 1/2 |       Sem deslocamento de voo      |  Crocodilo\r\n<br>\r\n8° |  1  |                  -                 |  Águia gigante\r\n<br><br>\r\nVocê pode continuar na forma de besta por um número de horas igual à metade do seu nível de druida (arredondado para baixo). Então, você volta a sua forma original, a não ser que você gaste outro uso dessa característica. Você pode reverter a sua forma normal prematuramente usando uma ação bônus no seu turno. Você reverte automaticamente se cair inconsciente, cair a 0 pontos de vida ou morrer.\r\n<br>\r\nEnquanto estiver transformado, as seguintes regras se aplicam:\r\n<br><br>\r\n<b>-</b> Suas estatísticas de jogo são substituídas pelas estatísticas da besta, mas você mantem sua tendência, personalidade e valores de Inteligência, Sabedoria e Carisma. Você também mantem suas proficiências em todas as suas perícias e testes de resistência, além de receber as proficiências da criatura. Se a criatura possuir a mesma proficiência que você e o bônus no bloco de estatística dela for maior que o seu, você usará o bônus da criatura no lugar do seu. Se a criatura possuir qualquer ação lendária ou de covil, você não pode usá-las.\r\n<br><br>\r\n<b>-</b> Quando você se transforma, você assume os pontos de vida e Dados de Vida da criatura. Quando você reverte a sua forma normal, você retorna ao número de pontos de vida que tinha antes de se transformar. Porém, se você reverter como resultado de ter caído a 0 pontos de vida, todo o dano excedente será transferido para a sua forma normal. Por exemplo, se você sofrer 10 pontos de dano em forma animal e tiver apenas 1 ponto de vida restante, você reverte e sofre 9 de dano. Contanto que o dano excedente não reduza você a 0 pontos de vida, você não cairá inconsciente.\r\n<br><br>\r\n<b>-</b> Você não pode conjurar magias e sua capacidade de fala ou de realizar qualquer ação que requeira mãos são limitadas pelas capacidades da forma da besta que você assumiu. Transformar-se não interrompe sua concentração em uma magia que você já tenha conjurado, no entanto, nem previne você de realizar ações que são parte da conjuração, como convocar relâmpagos que você já tenha conjurado.\r\n<br><br>\r\n<b>-</b> Você mantem os benefícios de todas as características de classe, raça ou outras fontes, e pode usá-las caso a nova forma seja fisicamente capaz de fazê-lo. No entanto, você não pode usar qualquer dos seus sentidos especiais, como visão no escuro, a não ser que a sua nova forma também tenha esse sentido.\r\n<br><br>\r\n<b>-</b> Você pode escolher se o seu equipamento cai no chão no seu espaço, é assimilado a sua nova forma ou é usado por ela. Equipamentos vestidos e carregados funcionam normalmente, mas o Mestre decide qual equipamento é viável para a nova forma vestir ou usar, baseado na forma e tamanho da criatura. O seu equipamento não muda de forma ou tamanho para se adaptar à nova forma e, qualquer equipamento que a nova forma não possa vestir deve, ou cair no chão ou ser assimilado por ela. Equipamentos assimilados não terão efeito até você deixar a forma.'),
(157, 'Círculo Druídico', 'No 2° nível, você escolhe se identificar com um círculo de druidas: o Círculo da Terra ou o Círculo da Lua, ambos detalhados no final da descrição da classe. Sua escolha lhe concede características no 2° nível e novamente no 6°, 10° e 14° nível.'),
(158, 'Corpo Atemporal', 'Começando no 18° nível, a magia primordial que você controla faz com que você envelheça mais lentamente. Para cada 10 anos que passarem, seu corpo envelhece apenas 1.'),
(159, 'Magias da Besta', 'A partir do 18° nível, você pode conjurar muitas das suas magias em qualquer forma que assumir usando a Forma Selvagem. Você pode realizar os componentes somáticos e verbais de uma magia de druida na forma de besta, mas você não é capaz de prover os componentes materiais.'),
(160, 'Arquidruida', 'No 20° nível, você pode usar sua Forma Selvagem um número ilimitado de vezes.\r\nAlém disso, você pode ignorar os componentes verbais e somáticos das suas magias de druida, assim como qualquer componente material que não tenha custo e não seja consumido pela magia. Você recebe esse benefício tanto na sua forma normal, quanto na forma de besta da sua Forma Selvagem.'),
(161, 'Círculo da Terra', 'O Círculo da Terra é constituído por místicos e sábios que salvaguardam conhecimento e ritos antigos através de uma vasta tradição oral. Esses druidas se encontram em círculos sagrados de árvores ou monólitos para sussurrar segredos primordiais em Druídico. Os membros mais sábios do círculo presidem como os sacerdotes-dirigentes de comunidades que creem na Crença Antiga, e servem como conselheiros para os governantes desses povos. Como membro desse círculo, sua magia é influenciada pela terra onde você é iniciado nos ritos misteriosos do círculo.'),
(162, 'Círculo da Terra - Truque Adicional', 'Quando você escolhe esse círculo no 2° nível, você aprende um truque de druida adicional, à sua escolha.'),
(163, 'Círculo da Terra - Recuperação Natural', 'A partir do 2° nível, você pode recuperar parte da sua energia mágica parando para fazer uma meditação e comunhão com a natureza. Durante um descanso curto, você escolhe espaços de magia gastos para recuperar. O espaço de magia pode ter um nível combinado igual ou menor que metade do seu nível de druida (arredondado para baixo) e, nenhum dos espaços pode ser de uma magia de 6° nível ou superior. Você não pode usar essa característica novamente até terminar um descanso longo.\r\n<br>\r\nPor exemplo, quando você for um druida de 4° nível, você pode recuperar até dois níveis em espaços de magia. Você pode recuperar, tanto uma magia de 2° nível, quanto duas magias de 1° nível.'),
(164, 'Círculo da Terra - Magias de Círculo', 'Sua conexão mística com a terra infunde você com a habilidade de conjurar certas magias. No 3°, 5°, 7° e 9° nível, você ganha acesso a magias de círculo ligadas ao terreno em que você se tornou druida. Escolha o terreno – ártico, costa, deserto, floresta, montanha, pântano, planície ou subterrâneo – e consulte a lista de magias associada.\r\n<br>\r\nUma vez que você tenha acesso a uma magia de círculo, você sempre poderá prepará-la e ela não conta no número de magias que você pode preparar a cada dia. Se você tiver acesso a uma magia que não aparece na lista de magias de druida, a magia, no entanto, será uma magia de druida para você.'),
(165, 'Círculo da Terra - Magias de Círculo: Ártico', '3°   imobilizar pessoa, crescer espinho\r\n5°   nevasca, lentidão\r\n7°   movimentação livre, tempestade de gelo\r\n9°   comunhão com a natureza, cone de frio'),
(166, 'Círculo da Terra - Magias de Círculo: Costa', '3°   passo nebuloso, reflexos\r\n5°   andar na água, respirar água\r\n7°   movimentação livre, controlar água\r\n9°   vidência, conjurar elemental'),
(167, 'Círculo da Terra - Magias de Círculo: Deserto', '3°   nublar, silêncio\r\n5°   criar alimentos, proteção contra energia\r\n7°   praga, terreno alucinógeno\r\n9°   muralha de pedra, praga de insetos'),
(168, 'Círculo da Terra - Magias de Círculo: Floresta', '3°   patas de aranha, pele de árvore\r\n5°   convocar relâmpagos, crescer plantas\r\n7°   adivinhação, movimentação livre\r\n9°   comunhão com a natureza, passo de árvore'),
(169, 'Círculo da Terra - Magias de Círculo: Montanha', '3°   crescer espinho, patas de aranha\r\n5°   mesclar-se às rochas, relâmpago\r\n7°   moldar rochas, pele de pedra\r\n9°   criar passagem, muralha de pedra'),
(170, 'Círculo da Terra - Magias de Círculo: Pântano', '3° escuridão, flecha ácida\r\n5° andar na água, névoa fétida\r\n7° localizar criatura, movimentação livre\r\n9° vidência, praga de insetos'),
(171, 'Círculo da Terra - Magias de Círculo: Planície', '3° invisibilidade, passos sem pegadas\r\n5° luz do dia, velocidade\r\n7° adivinhação, movimentação livre\r\n9° praga de insetos, sonho'),
(172, 'Círculo da Terra - Magias de Círculo: Subterrâneo', '3° patas de aranha, teia\r\n5° forma gasosa, névoa fétida\r\n7° invisibilidade maior, moldar rochas\r\n9° praga de insetos, névoa mortal'),
(173, 'Círculo da Terra - Caminho da Floresta', 'A partir do 6° nível, mover-se através de terreno difícil não-mágico não te custará nenhum movimento extra. Você também pode passar através de plantas não-mágicas sem ser atrasado por elas e sem sofrer dano delas se elas tiverem espinhos, espinhas ou perigos similares.\r\n<br>\r\nAlém disso, você tem vantagem em testes de resistência contra plantas criadas magicamente ou manipuladas para impedir movimentação, como as criadas pela magia constrição.'),
(174, 'Círculo da Terra - Proteção Natural', 'Quando você atingir o 10° nível, você não pode ser enfeitiçado ou amedrontado por elementais ou fadas e você se torna imune a venenos e doenças.'),
(175, 'Círculo da Terra - Santuário Natural', 'A partir do 14° nível, as criaturas do mundo natural sentem sua ligação com a natureza e hesitarão em atacar você. Quando uma besta ou plantar atacar você, essa criatura deverá fazer um teste de resistência de Sabedoria contra uma CD igual a das suas magias de druida. Em uma falha, a criatura deve escolher um alvo diferente ou o ataque erra automaticamente. Em um sucesso, a criatura se torna imune a esse efeito por 24 horas.\r\n<br>\r\nA criatura está ciente deste efeito antes de resolver atacar você.'),
(176, 'Círculo da Lua', 'Os druidas do Círculo da Lua são ferrenhos guardiões na natureza. Sua ordem se reuni nas noites de lua cheia para partilhar notícias e trocar informações. Eles assombram as partes mais profundas das florestas, onde eles podia ir por semanas a fio antes de cruzar o caminho de outro humanoide e, muito menos outro druida.\r\n<br>\r\nTão mutável quanto a lua, um druida desse círculo poderia espreitar como um grande felino, voar sobre a copa das árvores como uma águia no dia seguinte e mergulhar pela vegetação rasteira como um urso para expulsar um monstro invasor. A selvageria está no sangue do druida.'),
(177, 'Círculo da Lua - Forma Selvagem de Combate', 'Quando você escolhe esse círculo, no 2° nível, você recebe a habilidade de usar sua Forma Selvagem no seu turno com uma ação bônus, ao invés de com uma ação.\r\n<br>\r\nAlém disso, enquanto você estiver transformando pela sua Forma Selvagem, você pode usar uma ação bônus para gastar uma espaço de magia e ganhar 1d8 pontos de vida por nível do espaço de magia gasto.'),
(178, 'Círculo da Lua - Formas de Círculo', 'Os ritos do seu círculo garantem a você a habilidade de se transformar em formas animais mais poderosas. A partir do 2° nível, você pode usar sua Forma Selvagem para se transformar em uma besta com nível de desafio até 1 (você ignora a coluna ND Max da tabela Formas de Besta, mas ainda deve acatar as limitações descritas lá).\r\n<br>\r\nA partir do 6° nível, você pode se transformar em uma besta com nível de desafio tão alto quanto seu nível de druida dividido por 3, arredondado para baixo.'),
(179, 'Círculo da Lua - Ataque Primordial', 'A partir do 6° nível, seus ataques na forma de besta contam como mágicos com os propósitos de ultrapassar resistência e imunidade a ataques e danos não-mágicos.'),
(180, 'Círculo da Lua - Forma Selvagem Elemental', 'No 10° nível, você pode gastar dois usos da sua Forma Selvagem, ao mesmo tempo, para se transformar em um elemental da água, elemental do ar, elemental do fogo ou elemental da terra.'),
(181, 'Círculo da Lua - Mil Formas', 'No 14° nível, você aprende a usar magia para alterar sua forma física de formas mais sutis. Você pode conjurar a magia alterar-se à vontade.'),
(182, 'Origem de Feitiçaria', 'Escolha uma origem de feitiçaria, que descreve a fonte do seu poder mágico inato: Linhagem Dracônica ou Magia Selvagem, ambos detalhados no final da descrição da classe.\r\nSua escolha lhe confere características quando você a escolhe, no 1° nível e novamente no 6°, 14° e 18° nível.'),
(183, 'Fonte de Magia', 'No 2° nível, você alcança uma profunda fonte de magia dentro de você. Essa fonte é representada pelos pontos de feitiçaria, que permitem que você crie uma variedade de efeitos mágicos.'),
(184, 'Fonte de Magia - Pontos de Feitiçaria', 'Você tem 2 pontos de feitiçaria e ganha mais a medida que alcança níveis elevados, como mostrado na coluna Pontos de Feitiçaria da tabela O Feiticeiro. Você nunca poderá ter mais pontos de feitiçaria que os mostrados na tabela para o seu nível. Você recupera todos os pontos de feitiçaria gastos quando termina um descanso longo.'),
(185, 'Fonte de Magia - Conjuração Flexível', 'Você pode usar seus pontos de feitiçaria para ganhar novos espaços de magia ou sacrificar espaços de magia para ganhar pontos de magia adicionais. Você aprende novas formas de usar seus pontos de feitiçaria quando alcança níveis elevados. Os espaços de magia criados desaparecem ao final de um descanso longo.\r\n<br><br>\r\n<b>Criando Espaços de Magia.</b> Você pode transformar pontos de fetiçaria disponíveis em um espaço de magia, com uma ação bônus, no seu turno. A tabela Criando Espaços de Magia mostra o custo para criar um espaço de magia de determinado nível. Você não pode criar espaços de magia acima do 5° nível.\r\n<br><br>\r\n<b>Nível de Espaço de Magia</b> | <b>Custo de Pontos de Feitiçaria</b>\r\n<br><br>\r\n           1°            |               2\r\n<br>\r\n           2°            |               3\r\n<br>\r\n           3°            |               5\r\n<br>\r\n           4°            |               6\r\n<br>\r\n           5°            |               7\r\n<br><br>\r\n<b>Convertendo um Espaço de Magia em Pontos de Feitiçaria.</b> Com uma ação bônus, no seu turno, você pode gastar um espaço de magia disponível e ganhar uma quantidade de pontos de feitiçaria igual ao nível do espaço.'),
(186, 'Metamágica', 'No 3° nível, você adquire a habilidade de distorcer suas magias para se adequarem às suas necessidades. Você ganha duas das seguintes opções de Metamágica, à sua escolha. Você adquire outra no 10° e 17° nível.\r\nVocê pode usar apenas uma opção de Metamágica em uma magia quando a conjura, a não ser que esteja descrito o contrário.'),
(187, 'Metamágica - Magia Acelerada', 'Quando você conjurar uma magia que tenha um tempo de conjuração de 1 ação, você pode gastar 2 pontos de feitiçaria para mudar o tempo de conjuração para 1 ação bônus para essa magia.'),
(188, 'Metamágica - Magia Aumentada', 'Quando você conjura uma magia que obriga uma criatura a realizar um teste de resistência contra o seu efeito, você pode gastar 3 pontos de feitiçaria para dar desvantagem a um alvo da magia no primeiro teste de resistência feito contra ela.'),
(189, 'Metamágica - Magia Cuidadosa', 'Quando você conjurar uma magia que obriga outras criaturas a realizarem um teste de resistência, você pode proteger algumas dessas criaturas da força total da magia. Para tanto, você gasta 1 ponto de feitiçaria e escolhe um número dessas criaturas até o seu modificador de Carisma (mínimo de uma criatura). Uma criatura escolhida passa automaticamente no teste de resistência contra a magia.'),
(190, 'Metamágica - Magia Distante', 'Quando você conjurar uma magia que tenha distância de 1,5 metro ou maior, você pode gastar 1 ponto de feitiçaria para dobrar o alcance da magia.\r\nQuando você conjura uma magia com alcance de toque, você pode gastar 1 ponto de feitiçaria para mudar o alcance da magia para 9 metros.'),
(191, 'Metamágica - Magia Duplicada', 'Quando você conjurar uma magia que seja incapaz de ter mais de uma criatura como alvo no nível atual dela e não possua alcance pessoal, você pode gastar um número de pontos de feitiçaria igual ao nível da magia para ter uma segunda criatura, no alcance da magia, como alvo (1 ponto de feitiçaria se a magia for um truque).'),
(192, 'Metamágica - Magia Estendida', 'Quando você conjurar uma magia que tenha duração de 1 minuto ou maior, você pode gastar 1 ponto de feitiçaria para dobrar sua duração, até uma duração máxima de 24 horas.'),
(193, 'Metamágica - Magia Potencializada', 'Quando você rola o dano de uma magia, você pode gastar 1 ponto de feitiçaria para jogar novamente um número de dados de dano, até seu modificador de Carisma (mínimo de um). Você deve usar a nova rolagem.\r\nVocê pode usar Magia Potencializada mesmo que você já tenha usado uma opção diferente de Metamágica durante a conjuração da magia.'),
(194, 'Metamágica - Magia Sutil', 'Quando você conjurar uma magia, você pode gastar 1 ponto de feitiçaria para fazê-lo sem qualquer componente somático ou verbal.'),
(195, 'Restauração Mística', 'No 20° nível, você recupera 4 pontos de feitiçaria gastos sempre que você terminar um descanso curto.'),
(196, 'Linhagem Dracônica', 'Sua magia inata vem de magia dracônica que foi misturada ao seu sangue ou ao sangue dos seus ancestrais. Geralmente, os feiticeiros com essa origem traçam sua descendência de poderosos feiticeiros da antiguidade que fizeram uma barganha com um dragão ou que tenham um dragão como parente. Algumas dessas linhagens estão bem definidas no mundo, mas a maioria é obscura. Qualquer feiticeiro pode ser o primeiro de uma nova linhagem, como resultado de um pacto ou de outra circunstância excepcional.'),
(197, 'Linhagem Dracônica - Ancestral Dracônico', 'No 1° nível, você escolhe um tipo de dragão como seu ancestral. O tipo de dano associado a cada dragão será usado por características que você ganhará posteriormente.\r\n<br><br>\r\n<b>Ancestral Dracônico</b>\r\n<br>\r\n<b>Dragão</b>    |   <b>Tipo de Dano</b>\r\n<br><br>\r\n Azul     |     Elétrico\r\n<br>\r\n Branco   |     Frio\r\n<br>\r\n Bronze   |     Elétrico\r\n<br>\r\n Cobre    |     Acido\r\n<br>\r\n Latão    |     Fogo\r\n<br>\r\n Negro    |     Acido\r\n<br>\r\n Ouro     |     Fogo\r\n<br>\r\n Prata    |     Frio\r\n<br>\r\n Verde    |     Veneno\r\n<br>\r\n Vermelho |     Fogo\r\n<br><br>\r\nVocê pode falar, ler e escrever em Dracônico. Além disso, sempre que você fizer um teste de Carisma quando estiver interagindo com dragões, seu bônus de proficiência será dobrado se ele se aplicar a esse teste.'),
(198, 'Linhagem Dracônica - Resiliência Dracônica', 'A medida que a magia flui pelo seu corpo, ela faz com que os traços físicos do seu ancestral dracônico surjam. No 1° nível, seu máximo de pontos de vida aumenta em 1 e aumenta em mais 1 sempre que você ganhar um nível na classe.\r\n<br>\r\nAlém disso, partes da sua pele são cobertas com minúsculas escamas lustrosas de dragão. Quando você não estiver utilizando armadura, sua CA será igual a 13 + seu modificador de Destreza.'),
(199, 'Linhagem Dracônica - Afinidade Elemental', 'A partir do 6° nível, quando você conjurar uma magia que cause dano do tipo associado ao seu ancestral dracônico, adicione seu modificador de Carisma ao dano. Ao mesmo tempo, você pode gastar 1 ponto de feitiçaria para ganhar resistência a esse tipo de dano por 1 hora. O bônus de dano se aplica a uma única rolagem de dano da magia, não à diversas rolagens.'),
(200, 'Linhagem Dracônica - Asas de Dragão', 'No 14° nível, você adquire a habilidade de brotar um par de asas de dragão das suas costas, ganhando deslocamento de voo igual ao seu deslocamento atual. Você pode criar essas asas com uma ação bônus, no seu turno. Elas duram até que você as dissipe, com uma ação bônus no seu turno.\r\n<br>\r\nVocê não pode manifestar suas asas quando estiver vestindo uma armadura, a não ser que a armadura seja feita para acomodá-las, e roupas que não forem feitas para se acomodar às suas asas devem ser destruídas quando você manifestá-las.'),
(201, 'Linhagem Dracônica - Presença Dracônica', 'A partir do 18° nível, você pode canalizar a assustadora presença do seu ancestral dracônico, fazendo com que aqueles que o rodeiam fiquem impressionados ou amedrontados. Com uma ação, você pode gastar 5 pontos de feitiçaria para recorrer a esse poder e exalar uma aura de admiração ou medo (à sua escolha) a uma distância de 18 metros. Por 1 minuto ou até você perder sua concentração (como se você tivesse conjurado uma magia de concentração), cada criatura hostil que começar seu turno nessa aura, deve ser bem sucedido num teste de resistência de Sabedoria ou ficará enfeitiçada (se você escolheu admiração) ou amedrontada (se você escolheu medo) até a aura terminar. Uma criatura que seja bem sucedida no teste de resistência ficará imune a sua aura por 24 horas.'),
(202, 'Magia Selvagem', 'Sua magia inata vem das forças selvagens do caos que constituem a base da ordem da criação. Você deve ter sido exposto a algum tipo de magia bruta, talvez de um portal planar que levava ao Limbo, a Planos Elementais ou ao misterioso Reino Distante. Talvez você tenha sido abençoado por uma poderosa criatura feérica ou marcado por um corruptor. Ou sua magia pode ser uma casualidade do seu nascimento, sem qualquer razão aparente. No entanto, ela existe, essa magia caótica fervilha dentro de você, esperando por qualquer brecha.'),
(203, 'Magia Selvagem - Surto de Magia Selvagem', 'A partir do momento que você escolhe essa origem, no 1° nível, sua conjuração pode liberar surtos de magia selvagem. Imediatamente após você conjurar uma magia de feiticeiro de 1° nível ou superior, o Mestre pode solicitar que você role um d20. Se você rolar um 1, role na tabela Surto de Magia Selvagem para criar um efeito mágico aleatório. Um surto só pode ocorrer uma vez por turno. Se o efeito de um surto for uma magia, ela é muito selvagem para ser afetada por Metamagia. Se ela normalmente exige concentração, nesse caso não será necessário; a magia permanece por sua duração total.'),
(204, 'Magia Selvagem - Marés de Caos', 'A partir do 1° nível, você pode manipular as forças do acaso e do caos para ganhar vantagem em uma jogada de ataque, teste de habilidade ou teste de resistência. Quando o fizer, você deve finalizar um descanso longo antes de poder usar essa característica novamente.\r\n<br>\r\nA qualquer momento, antes de recuperar o uso dessa característica, o Mestre pode rolar na tabela Surto de Magia Selvagem, imediatamente após você conjurar uma magia de feiticeiro de 1° nível ou superior. Após isso, você recupera o uso dessa característica.'),
(205, 'Magia Selvagem - Dobrar a Sorte', 'A partir do 6° nível, você adquire a habilidade de mudar o destino usando sua magia selvagem. Quando outra criatura que você possa ver realizar uma jogada de ataque, um teste de habilidade ou um teste de resistência, você pode usar sua reação para gastar 2 pontos de feitiçaria para rolar 1d4 e aplicar o número rolado como um bônus ou uma penalidade (à sua escolha) na jogada da criatura. Você pode fazer isso depois da criatura fazer a jogada, mas antes do efeito ocorrer.'),
(206, 'Magia Selvagem - Caos Controlado', 'No 14° nível, você ganha um controle modico sobre seus surtos de magia selvagem. Sempre que você rolar a tabela Surto de Magia Selvagem, você pode rolar duas vezes e usar qualquer resultado.'),
(207, 'Magia Selvagem - Bombardeio de Magia', 'A partir do 18° nível, a energia nociva das suas magias se intensifica. Quando você rolar o dano de uma magia e rolar o maior dano possível em qualquer dado, escolha um desses dados, role ele novamente e adicione o valor rolado ao dano. Você pode usar essa característica apenas uma vez por rodada.'),
(208, 'Estilo de Luta - Guerreiro', 'Você adota um estilo de combate particular que será sua especialidade. Escolha uma das opções a seguir. Você não pode escolher o mesmo Estilo de Combate mais de uma vez, mesmo se puder escolher de novo.'),
(209, 'Estilo de Luta - Arquearia', 'Você ganha +2 de bônus nas jogadas de ataque realizadas com uma arma de ataque à distância.'),
(210, 'Estilo de Luta - Combate com Armas', 'Quando você rolar um 1 ou um 2 num dado de dano de um ataque com arma corpo-a-corpo que você esteja empunhando com duas mãos, você pode rolar o dado novamente e usar a nova rolagem, mesmo que resulte em 1 ou 2. A arma deve ter a propriedade duas mãos ou versátil para ganhar esse benefício.'),
(211, 'Estilo de Luta - Combate com Duas Armas', 'Quando você estiver engajado em uma luta com duas armas, você pode adicionar o seu modificador de habilidade de dano na jogada de dano de seu segundo ataque.'),
(212, 'Estilo de Luta - Defesa', 'Enquanto estiver usando armadura, você ganha +1 de bônus em sua CA.'),
(213, 'Estilo de Luta - Proteção', 'Quando uma criatura que você possa ver atacar um alvo que esteja a até 1,5 metro de você, você pode usar sua reação para impor desvantagem nas jogadas de ataque da criatura. Você deve estar empunhando um escudo.'),
(214, 'Retomar o Fôlego', 'Você possui uma reserva de estamina e pode usá-la para proteger a si mesmo contra danos. No seu turno, você pode usar uma ação bônus para recuperar pontos de vida igual a 1d10 + seu nível de guerreiro.\r\n<br>\r\nUma vez que você use essa característica, você precisa terminar um descanso curto ou longo para usá-la de novo.'),
(215, 'Surto de Ação', 'A partir do 2º nível, você pode forçar o seu limite para além do normal por um momento. Durante o seu turno, você pode realizar uma ação adicional juntamente com sua ação e possível ação bônus.\r\nUma vez que você use essa característica, você precisa terminar um descanso curto ou longo para usá-la de novo. A partir do 17º nível, você pode usá-la duas vezes antes do descanso, porém somente uma vez por turno.'),
(216, 'Arquétipo Marcial', 'No 3º nível, você escolhe um arquétipo o qual se esforçará para seguir as técnicas e estilos de combate dele. Escolha Campeão, Cavaleiro Arcano ou Mestre de Batalha, todos detalhados no final da descrição da classe. O arquétipo confere a você características especiais no 3º nível e de novo no 7º, 10º, 15º e 18º nível.'),
(217, 'Incremento no Valor de Habilidade - Guerreiro', 'Quando você atinge o 4° nível e novamente= no 6°, 8°, 12°, 14°, 16° e 19° nível, você pode aumentar um valor de habilidade, à sua escolha, em 2 ou você pode aumentar dois valores de habilidade, à sua escolha, em 1. Como padrão, você não pode elevar um valor de habilidade acima de 20 com essa característica.'),
(218, 'Ataque Extra - Guerreiro', 'A partir do 5º nível, você pode atacar duas vezes, ao invés de uma, quando usar a ação de Ataque durante seu turno. O número de ataques aumenta para três quando você alcançar o 11º nível de guerreiro e para quatro quando alcançar o 20º nível de guerreiro.'),
(219, 'Indomável', 'A partir do 9º nível, você pode jogar de novo um teste de resistência que falhou. Se o fizer, você deve usar o novo valor e não pode usar essa característica de novo antes de terminar um descanso longo.\r\nVocê pode usar esta característica duas vezes entre descansos longos quando chegar no 13º nível e três vezes entre descansos longos quando chegar no 17º nível.'),
(220, 'Campeão', 'O arquétipo Campeão foca no desenvolvimento da pura força física acompanhada por uma perfeição mortal. Aqueles que trilham o caminho desse arquétipo combinam rigorosos treinamentos com excelência física para desferir golpes devastadores.'),
(221, 'Campeão - Crítico Aprimorado', 'A partir do 3º nível, seus ataques com armas adquirem uma margem de acerto crítico de 19 a 20 nas jogadas de ataque.'),
(222, 'Campeão - Atletismo Extraordinário', 'A partir do 7º nível, você adiciona metade de seu bônus de proficiência (arredondado para cima) em qualquer teste de Força, Destreza ou Constituição que você já não aplique seu bônus de proficiência.\r\nAlém disso, quando você fizer um salto longo com corrida, o alcance em metros que poderá saltar aumenta em 0,3 vezes o seu modificador de Força.');
INSERT INTO `habilidade_classe` (`hab_class_cod`, `hab_class_nome`, `hab_class_desc`) VALUES
(223, 'Campeão - Estilo de Luta Adicional', 'No 10º nível, você pode escolher um segundo Estilo de Combate da sua característica de classe.'),
(224, 'Campeão - Crítico Superior', 'A partir do 15º nível, seus ataques com armas adquirem uma margem de acerto crítico de 18 a 20 nas jogadas de ataque.'),
(225, 'Campeão - Sobrevivente', 'No 18º nível, você alcança o topo da resiliência em batalha. No começo de cada um de seus turnos, você recupera uma quantidade de pontos de vida igual a 5 + seu modificador de Constituição se não estiver com mais que metade de seus pontos de vida. Você não recebe esse benefício se estiver com 0 pontos de vida.'),
(226, 'Cavaleiro Arcano', 'O arquétipo de Cavaleiro Arcano combina a maestria marcial comum a todos os guerreiros, com um cuidadoso estudo de magia. Os cavaleiros arcanos usam técnicas mágicas similares as praticadas pelos magos. Eles focam seu estudo em duas das oito escolas: abjuração e evocação. As magia de abjuração concedem proteção adicional em batalha ao Cavaleiro Arcano, e as magias de evocação causam dano a vários oponentes de uma vez, estendendo o alcance do guerreiro em combate. Esses cavaleiros aprendem, comparativamente, um pequeno número de magias, guardando-as na memória ao invés de mantê-las em um grimório.'),
(227, 'Cavaleiro Arcano - Vínculo com Arma', 'No 3° nível, você aprende um ritual que cria um vínculo mágico entre você e uma arma. Você realiza esse ritual no curso de 1 hora, que pode ser realizada durante um descanso curto. A arma deve estar ao seu alcance ao decorrer do ritual, ao concluí lo, você toca a arma e forja o elo.\r\n<br>\r\nUma vez que você tenha vinculado uma arma a você, você não pode ser desarmado dessa arma, a menos que você esteja incapacitado. Se ela estiver no mesmo plano de existência, você pode invocar essa arma com uma ação bônus, no seu turno, fazendo-a se teletransportar instantaneamente para a sua mão.\r\n<br>\r\nVocê pode ter até duas armas vinculadas, mas só pode invocar uma por vez com sua ação bônus. Se você quiser criar um elo com uma terceira arma, você deve quebrar o vínculo com um das outras duas.'),
(228, 'Cavaleiro Arcano - Magia de Guerra', 'A partir do 7° nível, quando você usar sua ação para conjurar um truque, você pode realizar um ataque com arma, com uma ação bônus.'),
(229, 'Cavaleiro Arcano - Golpe Místico', 'No 10° nível, você aprende como fazer com que os seus golpes com arma penetrem a resistência de uma criatura às suas magias. Quando você atingir uma criatura com um ataque com arma, aquela criatura terá desvantagem no próximo teste de resistência que ela fizer contra uma magia que você conjurar antes do final do seu próximo turno.'),
(230, 'Cavaleiro Arcano - Investida Arcana', 'No 15° nível, você ganha a capacidade de se teletransportar até 9 metros para um espaço desocupado que você possa ver, quando você usar seu Surto de Ação. Você pode se teletransportar antes ou depois da ação adicional.'),
(231, 'Cavaleiro Arcano - Magia de Guerra Aprimorada', 'A partir do 18° nível, quando você usar sua ação para conjurar uma magia, você pode realizar um ataque com arma, com uma ação bônus.'),
(232, 'Mestre de Batalha', 'Aqueles que emulam o arquétipo de Mestre de Batalha empregam técnicas marciais passadas de geração em geração. Para um Mestre de Batalha, o combate é um campo acadêmico, as vezes, incluindo assuntos além da batalha, como forjaria e caligrafia. Nem todo guerreiro absorve as lições de história, teoria e arte que são refletidas no arquétipo de Mestre de Batalha, mas aqueles que conseguem, tornam-se guerreiros bem-supridos de grande perícia e conhecimento.'),
(233, 'Mestre de Batalha - Superioridade em Combate', 'Quando você escolhe esse arquétipo, no 3° nível, você aprende manobras que são abastecidas com dados especiais chamados dados de superioridade.\r\n<br><br>\r\n<b>Manobras.</b> Você aprende três manobras, à sua escolha, que são detalhadas em “Manobras”, a seguir. Muitas manobras aprimoram um ataque de várias formas. Você só pode usar uma manobra por ataque.\r\n<br>\r\nVocê aprende duas manobras adicionais, à sua escolha, no 7°, 10° e 15° nível. A cada vez que você aprende uma nova manobra, você pode substituir uma manobra conhecida por uma diferente.\r\n<br><br>\r\n<b>Dados de Superioridade.</b> Você tem quatro dados de superioridade, que são d8s. Um dado de superioridade é gasto quando você usa-o. Você recupera todos os dados de superioridade gastos quando terminar um descanso curto ou longo.\r\n<br>\r\nVocê adquire outro dado de superioridade no 7° nível e mais um no 15° nível.\r\n<br><br>\r\n<b>Teste de Resistência.</b> Algumas das suas manobras exigem que o alvo realize um teste de resistência contra o efeito da manobra. A CD do teste de resistência é calculada a seguir:\r\n<br><br>\r\n<b>CD para suas manobras</b> = 8 + bônus de proficiência + seu modificador de Força ou Destreza (à sua escolha)'),
(234, 'Mestre de Batalha - Estudioso da Guerra', 'No 3° nível, você ganha proficiência com um tipo de ferramenta de artesão, à sua escolha.'),
(235, 'Mestre de Batalha - Conheça seu Inimigo', 'A partir do 7° nível, se você gastar, pelo menos, 1 minuto observando ou interagindo com outra criatura fora de combate, você pode aprender certas informações sobre as capacidades dela comparadas as suas. O Mestre conta a você se a criatura é igual, superior ou inferior a você a respeito de duas das seguintes características, à sua escolha:\r\n<br><br>\r\n<b>-</b> Valor de Força\r\n<br>\r\n<b>-</b> Valor de Destreza\r\n<br>\r\n<b>-</b> Valor de Constituição\r\n<br>\r\n<b>-</b> Classe de Armadura\r\n<br>\r\n<b>-</b> Pontos de Vida atuais\r\n<br>\r\n<b>-</b> Nível total de classe (se possuir)\r\n<br>\r\n<b>-</b> Níveis da classe guerreiro (se possuir)'),
(236, 'Mestre de Batalha - Superioridade em Combate Aprimorada', 'No 10° nível, seus dados de superioridade se tornam d10s. No 18° nível, eles se tornam d12s.'),
(237, 'Mestre de Batalha - Implacável', 'No 15° nível, quando você rolar iniciativa e não tiver nenhum dado de superioridade restante, você recupera um dado de superioridade.'),
(238, 'Mestre de Batalha - Manobras', 'As manobras são apresentadas em ordem alfabética.\r\n\r\nAparar. Quando outra criatura causar dano a você com um ataque corpo-a-corpo, você pode usar sua reação e gastar um dado de superioridade para reduzir o dano pelo número rolado no dado de superioridade + seu modificador de Destreza.\r\n\r\nAtaque Ameaçador. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar amedrontar o alvo. Você adiciona seu dado de superioridade a jogada de dano do ataque e o alvo deve realizar um teste de resistência de Sabedoria. Se falhar, ele ficará com medo de você até o final do seu próximo turno.\r\n\r\nAtaque de Encontrão. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar empurrar o alvo para trás. Você adiciona seu dado de superioridade a jogada de dano do ataque e, se o alvo for Grande ou menor, ele deve realizar um teste de resistência de Força. Se falhar, você empurra o alvo para até 4,5 metros de você.\r\n\r\nAtaque de Finta. Você pode gastar um dado de superioridade e usar uma ação bônus, no seu turno, para fintar, escolhendo uma criatura a 1,5 metro de você como alvo. Você tem vantagem na sua próxima jogada de ataque contra essa criatura, nesse turno. Se o ataque atingir, você adiciona seu dado de superioridade ao dano do ataque.\r\n\r\nAtaque de Manobra. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar manobrar um de seus companheiros para uma posição mais vantajosa. Você adiciona seu dado de superioridade a jogada de dano do ataque e escolhe uma criatura amigável que possa ver ou ouvir você. Aquela criatura pode usar sua reação para se mover até metade do seu deslocamento, sem provocar ataques de oportunidade do alvo do seu ataque.\r\n\r\nAtaque de Precisão. Quando você realizar uma jogada de ataque com arma contra uma criatura, você pode gastar um dado de superioridade para adicioná-lo a jogada. Você pode usar essa manobra antes ou depois de realizar a jogada de ataque, mas deve usá-la antes de qualquer efeito do ataque ser aplicado.\r\n\r\nAtaque Desarmante. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar desarmar o alvo, forçando-o a derrubar um item, à sua escolha, que ele esteja empunhando. Você adiciona o dado de superioridade a jogada de dano do ataque e o alvo deve realizar um teste de resistência de Força. Se fracassar, ele derrubará o objeto escolhido. O objeto cai aos pés dele.\r\n\r\nAtaque Estendido. Quando você atingir uma criatura com um ataque corpo-a-corpo com arma, você pode gastar um dado de superioridade para aumentar o alcance do seu ataque em 1,5 metro. Se você atingir, você adiciona o seu dado de superioridade ao dano causado pelo ataque.\r\n\r\nAtaque Provocante. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar incitar a alvo a atacar você. Você adiciona seu dado de superioridade a jogada de dano do ataque e o alvo deve realizar um teste de resistência de Sabedoria. Se falhar, o alvo terá desvantagem em todas as jogadas de ataque contra alvos diferentes de você, até o fim do seu próximo turno.\r\n\r\nAtaque Trespassante. Quando você atingir uma criatura com um ataque corpo-a-corpo com arma, você pode gastar um dado de superioridade para tentar causar dano a outra criatura com o mesmo ataque. Escolha uma criatura a 1,5 metro do alvo original e que esteja no seu alcance. Se a jogada de ataque original atingiria a segunda criatura, ela sofre dano igual ao número rolado no dado de superioridade. O dano é do mesmo tipo que o causado pelo ataque original.\r\n\r\nContra-Atacar. Quando uma criatura atacar você com um ataque corpo-a corpo e errar, você pode usar sua reação e gastar um dado de superioridade para realizar um ataque corpo-a-corpo com arma contra essa criatura. Se você atingir, você adiciona seu dado de superioridade a jogada de dano do ataque.\r\n\r\nDerrubar. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar derrubar o alvo no chão. Você adiciona seu dado de superioridade a jogada de dano do ataque e, se o alvo for Grande ou menor, ele deve realizar um teste de resistência de Força. Se falhar, o alvo ficará caído no chão.\r\n\r\nGolpe Distrativo. Quando você atingir uma criatura com um ataque com arma, você pode gastar um dado de superioridade para tentar distrair a criatura, abrindo uma brecha para um de seus aliados. Você adiciona seu dado de superioridade a jogada de dano do ataque. A próxima jogada de ataque realizada contra o alvo por uma criatura diferente de você, tem vantagem, se o ataque for realizado antes do começo do seu próximo turno.\r\n\r\nGolpe do Comandante. Quando você realiza a ação de Ataque, no seu turno, você pode desistir de um dos seus ataques e usar uma ação bônus para direcionar o ataque de um dos seus companheiros. Quando você faz isso, escolha uma criatura amigável que possa ver ou ouvir você e gaste um dado de superioridade. Essa criatura pode, imediatamente, usar sua reação para realizar um ataque com arma, adicionando seu dado de superioridade a jogada de dano do ataque.\r\n\r\nInspirar. No seu turno, você pode usar uma ação bônus e gastar um dado de superioridade para reforçar a determinação dos seus companheiros. Quando o fizer, escolha uma criatura amigável que possa ver ou ouvir você. Essa criatura ganha uma quantidade de pontos de vida temporários igual a sua rolagem de dado de superioridade + seu modificador de Carisma.\r\n\r\nPasso Evasivo. Quando você se mover, você pode gastar um dado de superioridade, role o dado e adicione o número rolado a sua CA até você terminar seu deslocamento.'),
(239, 'Especialização', 'No 1º nível, você escolhe duas de suas perícias que seja proficiente, ou uma perícia que seja proficiente e ferramentas de ladrão. Seu bônus de proficiência é dobrado em qualquer teste de habilidade que fizer com elas.\r\nNo 6º nível, você pode escolher outras duas de suas proficiências (em perícias ou ferramentas de ladrão) para ganhar esse benefício.'),
(240, 'Ataque Furtivo', 'A partir do 1º nível, você sabe como atacar sutilmente e explorar a distração de seus inimigos. Uma vez por turno, você pode adicionar 1d6 nas jogadas de dano contra qualquer criatura que acertar, desde que tenha vantagem nas jogadas de ataque. O ataque deve ser com uma arma de acuidade ou à distância.\r\nVocê não precisa ter vantagem nas jogadas de ataque se outro inimigo do seu alvo estiver a 1,5 metro de distância dele, desde que este inimigo não esteja incapacitado e você não tenha desvantagem nas jogadas de ataque.\r\nA quantidade de dano extra aumenta conforme você ganha níveis nessa classe, como mostrado na coluna Ataque Furtivo da tabela O Ladino.'),
(241, 'Gíria de ladrão', 'Durante seu treinamento você aprendeu as gírias de ladrão, um misto de dialeto, jargão e códigos secretos que permitem você passar mensagens secretas durante uma conversa aparentemente normal. Somente outra criatura que conheça essas gírias de ladrão entende as mensagens. Leva-se quatro vezes mais tempo para transmitir essa mensagem do que falar a mesma ideia claramente.\r\nAlém disso, você entende um conjunto de sinais secretos e símbolos usados para transmitir mensagens curtas e simples, como saber se uma área é perigosa ou se é território de uma guilda de ladrões, se o saque está próximo, se as pessoas na área são alvos fáceis ou até mesmo indicar lugares seguros para ladinos se esconderem.'),
(242, 'Ação Ardilosa', 'A partir do 2º nível, seu pensamento rápido e agilidade faz você se mover e agir rapidamente. Você pode usar uma ação bônus durante cada um de seus turnos em combate. Esta ação pode ser usada somente para Disparada, Desengajar ou Esconder.'),
(243, 'Arquétipo de Ladino', 'No 3º nível, você escolhe um arquétipo que se esforçará para se equiparar através de exercícios de suas habilidades de ladino: Assassino, Ladrão ou Trapaceiro Arcano, todos detalhados no final da descrição da classe. Sua escolha garante a você características no 3º nível e de novo no 9º, 13º e 17º nível.'),
(244, 'Esquiva Sobrenatural', 'A partir do 5º nível, quando um inimigo que você possa ver o acerta com um ataque, você pode usar sua reação para reduzir pela metade o dano sofrido.'),
(245, 'Evasão', 'A partir do 7º nível, você pode esquivar-se agilmente de certos efeitos em área, como o sopro flamejante de um dragão vermelho ou uma magia tempestade de gelo. Quando você for alvo de um efeito que exige um teste de\r\nresistência de Destreza para sofrer metade do dano, você não sofre dano algum se passar, e somente metade do dano se falhar.'),
(246, 'Talento Confiável', 'No 11º nível, você refinou suas perícias beirando à perfeição. Toda vez que você fizer um teste de habilidade no qual possa adicionar seu bônus de proficiência, você trata um resultado no d20 de 9 ou menor como um 10.'),
(247, 'Sentido Cego', 'No 14º nível, se você for capaz de ouvir, você está ciente da localização de qualquer criatura escondida ou invisível a até 3 metros de você.'),
(248, 'Mente Escorregadia', 'No 15º nível, você adquire uma grande força de vontade, adquirindo proficiência nos testes de resistência de Sabedoria.'),
(249, 'Elusivo', 'A partir do 18º nível, você se torna tão sagaz que raramente alguém encosta a mão em você. Nenhuma jogada de ataque tem vantagem contra você, desde que você não esteja incapacitado.'),
(250, 'Golpe de Sorte', 'No 20º nível, você adquire um dom incrível para ter sucesso nos momentos em que mais precisa. Se um ataque seu falhar contra um alvo ao seu alcance, você pode transformar essa falha em um acerto. Ou se falhar em um teste qualquer, você pode tratar a jogada desse mesmo teste como 20 natural.'),
(251, 'Assassino', 'Você focou seu treinamento na macabra arte da morte. Aqueles que devotam-se a esse arquétipo são diversos: assassinos de aluguel, espiões, caçadores de recompensa e, até mesmo, padres especialmente treinados em exterminar os inimigos das suas divindades. Subterfúgio, veneno e disfarces ajudam você a eliminar seus oponentes com eficiência mortífera.'),
(252, 'Assassino - Proficiência Adicional', 'Quando você escolhe esse arquétipo, no 3° nível, você ganha proficiência com kit de disfarce e kit de venenos.'),
(253, 'Assassino - Assassinar', 'A partir do 3° nível, você fica mais mortal quando pega seus oponentes desprevenidos. Você tem vantagem nas jogadas de ataque contra qualquer criatura que ainda não tenha chegado ao turno dela no combate. Além disso, qualquer ataque que você fizer contra essa criatura que está surpresa, será um ataque crítico.'),
(254, 'Assassino - Especialização em Infiltração', 'A partir do 9° nível, você pode infalivelmente, criar identidades falsas para si mesmo. Você deve gastar sete dias e 25 po para estabelecer o histórico, profissão e filiações para uma identidade. Você não pode estabelecer uma identidade que pertença a alguém. Por exemplo, você deveria adquirir roupas apropriadas, cartas de introdução e um certificado, aparentemente oficial, para estabelecer-se como um membro da casa de comércio de uma cidade remota, assim, você poderia introduzir-se na companhia de outros comerciantes abastados.\r\n<br>\r\nPosteriormente, se você adotar a nova identidade como disfarce, outras criaturas acreditarão que você é aquela pessoa, até terem algum motivo obvio para pensarem o contrário.'),
(255, 'Assassino - Impostor', 'No 13° nível, você adquire a habilidade de imitar a fala, escrita e comportamento de outra pessoa, infalivelmente. Você deve gastar pelo menos três horas estudando esses três componentes do comportamento de uma pessoa, ouvindo sua articulação, examinando sua escrita e observando seus maneirismos.\r\n<br>\r\nSeu ardil é imperceptível para um observador casual. Se uma criatura desconfiada suspeitar que algo está errado, você tem vantagem em qualquer teste de Carisma (Enganação) que você fizer para evitar ser detectado.'),
(256, 'Assassino - Golpe Letal', 'No 17° nível, você se torna um mestre da morte instantânea. Quando você atacar e atingir uma criatura que esteja surpresa, ela deve realizar um teste de resistência de Constituição (CD 8 + seu modificador de Destreza + seu bônus de proficiência). Se ela falhar, dobre o dano do seu ataque contra a criatura.'),
(257, 'Ladrão', 'Você aprimorou suas habilidades na arte do furto de pequenos itens. Gatunos, bandidos, batedores de carteira e outros criminosos geralmente seguem esse arquétipo, mas também aqueles ladinos que preferem se ver como caçadores de tesouro profissionais, exploradores de masmorras e investigadores. Além de aprimorar sua agilidade e furtividade, você aprende perícias úteis para desbravar ruínas antigas, ler idiomas incomuns e usar itens mágicos que normalmente não poderia.'),
(258, 'Ladrão - Mãos Rápidas', 'A partir do 3º nível, você pode usar a sua ação bônus concedida pela Ação Ardilosa para fazer um teste de Destreza (Prestidigitação), usar suas ferramentas de ladrão para desarmar uma armadilha ou abrir uma fechadura, ou realizar a ação de Usar um Objeto.'),
(259, 'Ladrão - Andarilho de Telhados', 'No 3º nível, você adquire a habilidade de escalar mais rápido que o normal. Escalar agora não possui custo adicional de movimento para você.\r\n<br>\r\nAlém disso, quando você fizer um salto com corrida, o alcance que pode saltar aumenta um número de metros igual a 0,3 vezes o seu modificador de Destreza.'),
(260, 'Ladrão - Furtividade Suprema', 'A partir do 9º nível, você tem vantagem no teste de Destreza (Furtividade) se você não mover-se mais do que a metade de seu deslocamento em um turno.'),
(261, 'Ladrão - Usar Instrumento Mágico', 'No 13º nível, você aprende o suficiente sobre como a magia funciona e pode improvisar o uso de itens que nem mesmo foram destinados a você. Você ignora todos os requisitos de classes, raças e níveis para uso de qualquer item mágico.'),
(262, 'Ladrão - Reflexos de Ladrão', 'Quando atinge o 17º nível, você se torna adepto em fazer emboscadas e fugas rápidas de situações perigosas. Você pode realizar dois turnos durante o primeiro turno de cada combate. Você realiza seu primeiro turno na sua iniciativa e o segundo na ordem de sua iniciativa menos 10.\r\n<br>\r\nVocê não pode usar essa característica quando está surpreso.'),
(263, 'Trapaceiro Arcano', 'Alguns ladinos aprimoram suas finas perícias de furtividade e agilidade com magia, aprendendo truques de encantamento e ilusão. Esses ladinos incluem não somente batedores de carteira e assaltantes, mas também trapaceiros, enganadores e um número significativo de aventureiros.'),
(264, 'Trapaceiro Arcano - Mãos Mágicas Malabaristas', 'A partir do 3° nível, quando você conjurar mãos mágicas, você pode fazer a mão espectral ficar invisível e poderá realizar as seguintes tarefas adicionais:\r\n<br><br>\r\n<b>-</b> Você pode guardar um objeto que a mão estiver segurando em um recipiente vestido ou carregado por outra criatura.\r\n<br>\r\n<b>-</b> Você pode recuperar um objeto guardado em um recipiente vestido ou carregado por outra criatura.\r\n<br>\r\n<b>-</b> Você pode usar ferramentas de ladrão para abrir fechaduras ou desarmar armadilhas à distância.\r\n<br><br>\r\nVocê pode realizar qualquer dessas tarefas sem ser notado por uma criatura se for bem sucedido num teste de Destreza (Prestidigitação) resistido por um teste de Sabedoria (Percepção) da criatura.\r\n<br>\r\nAlém disso, você pode usar a ação bônus concedida por sua Ação Ardilosa para controlar a mão.'),
(265, 'Trapaceiro Arcano - Emboscada Mágica', 'A partir do 9° nível, se você estiver escondido de uma criatura quando conjurar uma magia nela, a criatura terá desvantagem em qualquer teste de resistência que ela fizer contra a magia nesse turno.'),
(266, 'Trapaceiro Arcano - Trapaceiro Versátil', 'No 13° nível, você ganha a habilidade de distrair alvos com suas mãos mágicas. Com uma ação bônus, no seu turno, você pode designar uma criatura a até 1,5 metro da mão espectral criada por essa magia. Fazer isso, lhe concede vantagem nas jogadas de ataque contra essa criatura até o final do turno.'),
(267, 'Trapaceiro Arcano - Ladrão de Magia', 'No 17° nível, você ganha a habilidade de, magicamente, roubar o conhecimento de como conjurar uma magia de outro conjurador.\r\nImediatamente depois de uma criatura conjurar uma magia que tenha você como alvo ou inclua você na sua área de efeito, você pode usar sua reação para forçar a criatura a realizar um teste de resistência com o modificador de habilidade de conjuração dele. A CD é igual a CD das suas magias. Numa falha, você ignora o efeito da magia sobre você e rouba o conhecimento da magia, se ela for de, pelo menos, 1° nível e de um nível que você possa conjurar (não precisa ser uma magia de mago). Pelas próximas 8 horas, você conhece a magia e pode conjurá-la usando seus espaços de magia. A criatura não pode conjurar a magia até que 8 horas tenham se passado.\r\nUma vez que você tenha usado essa característica, você não pode usá-la novamente até ter terminado um descanso longo.'),
(268, 'Recuperação Arcana', 'Você aprendeu como recuperar um pouco de sua energia mágica estudando seu grimório. Uma vez por dia, quando você terminar um descanso curto, você pode escolher espaços de magia gastos para recuperá-los. Os espaços gastos a serem recuperados podem ser de qualquer combinação de níveis de magia, desde que sejam iguais ou inferiores a metade de seu nível de mago (arredondado para cima) e nenhum deles seja de 6º ou superior.\r\n<br>\r\nPor exemplo, se você é um mago de 4º nível, você pode recuperar até 2 espaços de magia gastos. Você pode recuperar o espaço de uma magia de 2º nível ou os espaços de duas magias de 1º nível.'),
(269, 'Tradição Arcana', 'Quando alcança o 2º nível, você pode escolher uma Tradição Arcana, moldando sua prática de magia em uma das oito escolas: Abjuração, Adivinhação, Conjuração, Encantamento, Evocação, Ilusão, Necromancia e Transmutação, todas detalhadas no fim da descrição da classe.\r\n<br>\r\nSua escolha confere características no 2º nível e de novo no 6º, 10º e 14º nível.'),
(270, 'Dominar Magia', 'No 18º nível, você alcança tamanha maestria em determinadas magias que pode conjurá-las à vontade. Você escolhe uma magia de mago de 1º nível e uma magia de mago de 2º nível de seu grimório. Você as conjura em seu nível mínimo, sem gastar espaços de magia quando as tiver preparadas. Caso queira, você pode conjurá-las com um espaço de nível superior, porém gastará espaços de magia, como normalmente se faz.'),
(271, 'Assinatura Mágica', 'Quando alcançar o 20º nível, você adquire domínio completo de duas poderosas magias e pode conjurá-las sem muito esforço. Escolha duas magias de mago de 3º nível em seu grimório como sua assinatura mágica. Você sempre tem essas magias preparadas e elas não contam como magias preparadas em sua lista, além de você poder conjurar cada uma das magias escolhidas, uma vez ao dia, como magias de 3º nível, sem gastar nenhum espaço. Quando o fizer, você não poderá fazê-lo de novo antes de terminar um descanso curto ou longo.\r\nSe você quiser conjurar essas magias com espaços de níveis superiores, a magia gastará espaços de magia, como normalmente se faz.'),
(272, 'Escola de Abjuração', 'A Escola de Abjuração enfatiza magias que bloqueiam, expulsão ou protegem. Detratores dessa escola dizem que sua tradição trata de contradição, negação, ao invés de asserções positivas. Você compreende, no entanto, que terminar efeitos nocivos, proteger os fracos e banir influências malignas é tudo, menos um vazio filosófico. É uma vocação de orgulho e respeito.\r\n<br>\r\nChamados de abjuradores, membros dessa escola são procurados quando espíritos sinistros precisam ser exorcizados, quando locais importantes devem ser guardados contra espionagem mágica e quando portais para outros planos de existência precisam ser selados.'),
(273, 'Escola de Abjuração - Abjuração Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de abjuração em seu grimório é reduzido à metade.'),
(274, 'Escola de Abjuração - Proteção Arcana', 'A partir do 2° nível, você pode tecer a magia a sua volta para proteção. Quando você conjura uma magia de abjuração de 1° nível ou superior, você pode, simultaneamente, usar uma vertente do poder da magia para criar uma proteção mágica em si mesmo, que dura até você terminar um descanso longo. A proteção tem pontos de vida iguais ao dobro do seu nível de mago + seu modificador de Inteligência. Sempre que você sofrer dano, a proteção sofrerá o dano no lugar. Se o dano reduzir a proteção a 0 pontos de vida, você sofre qualquer dano remanescente.\r\n<br>\r\nQuando a proteção estiver com 0 pontos de vida, ela não poderá mais absorver dano, mas a mágica permanece. Toda vez que você conjurar uma magia de abjuração de 1° nível ou superior, a proteção recupera um número de pontos de vida igual ao dobro do nível da magia.\r\n<br>\r\nUma vez que você tenha criado a proteção, você não pode criá-la novamente até terminar um descanso longo.'),
(275, 'Escola de Abjuração - Proteção Projetada', 'A partir do 6° nível, quando uma criatura que você possa ver a até 9 metros sofrer dano, você pode usar sua reação para fazer com que sua Proteção Arcana absorva aquele dano. Se esse dano reduzir a proteção a 0 pontos de vida, a criatura protegida sofrerá qualquer dano remanescente.'),
(276, 'Escola de Abjuração - Abjuração Aprimorada', 'A partir do 10° nível, quando você conjurar uma magia de abjuração que requeira que você realize um teste de habilidade como parte da conjuração da magia (como em contramágica e dissipar magia), você adiciona seu bônus de proficiência a esse teste de habilidade.'),
(277, 'Escola de Abjuração - Resistência à Magia', 'A partir do 14° nível, você tem vantagem em testes de resistência contra magia.\r\nAlém disso, você tem resistência contra o dano de magias.'),
(278, 'Escola de Adivinhação', 'Os conselhos de um adivinho são procurados tanto pela realeza quanto pelos plebeus comuns, por todos que buscam uma compreensão mais clara do passado, presente e futuro. Como um adivinho, você se esforça para separar os véus do espaço, tempo e da consciência, de modo que você possa ver claramente. Você trabalha para dominar magias de discernimento, visão remota, conhecimento sobrenatural e previsão.'),
(279, 'Escola de Adivinhação - Adivinhação Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de adivinhação em seu grimório é reduzido à metade.'),
(280, 'Escola de Adivinhação - Prodígio', 'Começando no 2° nível, quando você escolhe essa escola, vislumbres do futuro começam a aparecer em sua consciência. Quando você termina um descanso longo, role dois d20s e anote os números rolados. Você pode substituir qualquer jogada de ataque, teste de resistência ou teste de habilidade feito por você ou por outra criatura que você possa ver por uma das rolagens de premunição. Você deve escolher fazer isso antes da rolagem e você pode substituir uma rolagem dessa forma apenas uma vez por rodada.\r\n<br>\r\nCada rolagem de premonição pode ser usada apenas uma vez. Quando você termina um descanso longo, você perde qualquer rolagem de premonição que não tenha sido usada.'),
(281, 'Escola de Adivinhação - Especialista em Adivinhação', 'A partir do 6° nível, conjurar magias de adivinhação se tornou tão fácil pra você que isso requer apenas uma fração do seu esforço de conjuração. Quando você conjura uma magia de adivinhação de 2° nível ou superior usando um espaço de magia, você recupera um espaço de magia gasto. O espaço de magia que você recupera deve ser de um nível inferior ao da magia conjurada e não pode ser maior que 5° nível.'),
(282, 'Escola de Adivinhação - O Terceiro Olho', 'A partir do 10° nível, você pode usar sua ação para aumentar seus poderes de percepção. Quando o fizer, escolha um dos benefícios a seguir, que dura até você ficar incapacitado ou realizar um descanso curto ou longo. Você não pode usar essa característica novamente até ter terminado um descanso longo.\r\n<br><br>\r\n<b>Visão no Escuro.</b> Você adquire visão no escuro com alcance de 18 metros, como descrito no capítulo 8.\r\n<br><br>\r\n<b>Visão Etérea.</b> Você pode ver no Plano Etéreo com alcance de 18 metros.\r\n<br><br>\r\n<b>Compreensão Maior.</b> Você pode ler qualquer idioma.\r\n<br><br>\r\n<b>Ver Invisibilidade.</b> Você pode ver criaturas e objetos invisíveis a até 3 metros de você aos quais você tenha linha de visão.'),
(283, 'Escola de Adivinhação - Prodígio Maior', 'A partir do 14° nível, as visões em seus sonhos se intensificam e pintam um quadro mais preciso na sua mente do que está para acontecer. Você rola três d20s para a sua característica Prodígio, ao invés de dois.'),
(284, 'Escola de Conjuração', 'Como um conjurador, você prefere magias que produzam objetos e criaturas do nada. Você pode conjurar nuvens esvoaçantes de gás mortal ou invocar criaturas de outros lugares para lutar por você. À medida que seu domínio cresce, você aprende magias de teletransportação e pode se teletransportar por vastas distâncias, até mesmo para outros planos de existência, em um instante.'),
(285, 'Escola de Conjuração - Conjuração Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de conjuração em seu grimório é reduzido à metade.\r\n\r\n'),
(286, 'Escola de Conjuração - Conjuração Menor', 'A partir do 2° nível, quando você escolhe essa escola, você pode usar sua ação para conjurar até um objeto inanimado em sua mão ou no chão, em um espaço desocupado que você possa ver, a até 3 metros de você. Esse objeto não pode ter mais de 90 centímetros de largura nem pesar mais de 5 quilos e sua forma deve ser de um objeto não-mágico que você tenha visto. O objeto é visivelmente mágico, emanando penumbra a 1,5 metro.\r\n<br>\r\nO objeto desaparece depois de 1 hora, quando você usa essa característica novamente ou se ele sofrer ou causar qualquer dano.'),
(287, 'Escola de Conjuração - Transposição Benigna', 'A partir do 6° nível, você pode usar sua ação para se teletransportar até 9 metros em um espaço desocupado que você possa ver. Alternativamente, você pode escolher um espaço ao alcance que seja ocupado por uma criatura Pequena ou Média. Se essa criatura for voluntária, vocês dois teletransportam-se, trocando de lugar.\r\n<br>\r\nUma vez que você usa essa característica, não pode usá-la novamente até terminar um descanso longo ou até conjurar uma magia de conjuração de 1° nível ou superior.'),
(288, 'Escola de Conjuração - Conjuração Focada', 'Começando no 10° nível, enquanto você estiver concentrado em uma magia de conjuração, sua concentração não pode ser interrompida como resultado de ter sofrido dano.'),
(289, 'Escola de Conjuração - Invocações Resistentes', 'A partir do 14° nível, qualquer criatura que você invocar ou criar com uma magia de conjuração, terá 30 pontos de vida temporários.'),
(290, 'Escola de Encantamento', 'Como um membro da Escola de Encantamento, você afiou sua habilidade de entrar magicamente e seduzir outras pessoas e monstros. Alguns encantadores são pacifistas que fascinam os violentos para que larguem suas armas e enfeitiçam os cruéis para mostrar misericórdia. Outros são tiranos que dominam magicamente os involuntários, obrigando-os a servi-lo. A maioria dos encantadores está em algum lugar entre esses extremos.'),
(291, 'Escola de Encantamento - Encantamento Instruído', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de encantamento em seu grimório é reduzido à metade.'),
(292, 'Escola de Encantamento - Olhar Hipnotizante', 'A partir do 2° nível, quando você escolhe essa escola, suas palavras suaves e olhar encantador podem escravizar magicamente outra criatura. Com uma ação, escolha uma criatura que você possa ver a até 1,5 metro. Se o alvo puder ver ou ouvir você, ele deve ser bem sucedido num teste de resistência de Sabedoria contra uma CD igual das suas magias de mago, ou ficará enfeitiçado por você até o final do seu próximo turno. O deslocamento da criatura enfeitiçada cai para 0 e a criatura está incapacitada e visivelmente aturdida.\r\n<br>\r\nNos turnos subsequentes, você pode usar sua ação para manter esse efeito, estendendo sua duração até o final do seu próximo turno. No entanto, o efeito termina se você se afastar mais de 1,5 metro da criatura, se a criatura não puder nem ver nem ouvir você ou se a criatura sofrer dano.\r\n<br>\r\nAssim que o efeito terminar, ou se a criatura for bem sucedida no teste de resistência inicial contra esse efeito, você não poderá usar essa característica nessa criatura novamente até terminar um descanso longo.'),
(293, 'Escola de Encantamento - Encanto Instintivo', 'Começando no 6° nível, quando uma criatura que você puder ver a até 9 metros, realizar uma jogada de ataque contra você, você pode usar sua reação para desviar o ataque, contanto que exista outra criatura no alcance do ataque. O atacante deve realizar um teste de resistência de Sabedoria contra uma CD igual das suas magias de mago. Caso falhe, o atacante deve atacar a criatura mais próxima dele, excluindo você ou ele mesmo. Se existirem diversas criaturas próximas, o atacante escolhe qual deseja atacar. Em um sucesso, você não poderá usar essa característica contra o atacante novamente até terminar um descanso longo.\r\n<br>\r\nVocê deve escolher usar essa característica antes de saber se o ataque atingiu ou errou. Criaturas que não podem ser enfeitiçadas são imunes a esse efeito.'),
(294, 'Escola de Encantamento - Dividir Encantamento', 'A partir do 10° nível, quando você conjurar uma magia de encantamento de 1° nível ou superior que tenha uma única criatura como alvo, você pode fazer com que ela afete uma segunda criatura.'),
(295, 'Escola de Encantamento - Alterar Memórias', 'No 14° nível, você ganha a habilidade de tornar uma criatura inconsciente da sua influência mágica sobre ela. Quando você conjura uma magia de encantamento para enfeitiçar uma ou mais criaturas, você pode alterar a compreensão de uma criatura para que ela continue sem saber que está sendo enfeitiçada.\r\n<br>\r\nAlém disso, assim que a magia expirar, você pode usar sua ação para tentar fazer com que a criatura escolhida esqueça parte do tempo que permaneceu enfeitiçada. A criatura deve ser bem sucedida num teste de resistência de Inteligência contra uma CD igual das suas magias de mago ou perderá uma quantidade de horas da sua memória igual a 1 + seu modificador de Carisma (mínimo 1). Você pode fazer com que a criatura esqueça menos tempo e o total de tempo não pode exceder a duração da sua magia de encantamento.'),
(296, 'Escola de Evocação', 'Você foca seu estudo para criar poderosos efeitos elementais, como um frio cortante, uma chama intensa, um trovão estrondoso, um relâmpago devastador e ácido ardente. Alguns evocadores encontram emprego nas forças militares, servindo como artilharia para explodir fileiras inimigas de longe. Outros usam seu poder espetacular para proteger os fracos, enquanto alguns buscam o ganho próprio como bandidos, aventureiros ou aspirantes de tiranos.'),
(297, 'Escola de Evocação - Evocação Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de evocação em seu grimório é reduzido à metade.'),
(298, 'Escola de Evocação - Esculpir Magias', 'A partir do 2º nível, você pode criar bolsões de segurança relativa contra os efeitos de suas magias de evocação. Quando você conjurar uma magia de evocação que afeta outras criaturas que você possa ver, você pode escolher um número delas igual a 1 + o nível da magia. As criaturas escolhidas passam automaticamente em seus testes de resistência contra a magia conjurada e elas não sofrem dano se normalmente sofreriam metade em um sucesso no teste de resistência.'),
(299, 'Escola de Evocação - Truque Potente', 'A partir do 6º nível, seus truques de dano afetam até mesmo as criaturas que evitariam a força daquele efeito. Quando uma criatura passa em um teste de resistência de seus truques, ela sofre metade do dano (se existir), mas não sofre nenhum efeito adicional.'),
(300, 'Escola de Evocação - Evocação Potencializada', 'A partir do 10º nível, você pode adicionar seu modificador de Inteligência no resultado das jogadas de dano de qualquer magia de evocação de mago que você conjurar. O bônus de dano se aplica a uma rolagem de dano da magia, não à múltiplas rolagens.'),
(301, 'Escola de Evocação - Sobrecarga', 'A partir do 14º nível, você pode aumentar o poder de suas magias mais simples. Quando você conjurar uma magia de mago de 5º nível ou inferior (exceto truques) que cause dano, a magia causa o dano máximo.\r\nA primeira vez que fizer isso, você não sofre qualquer efeito adverso. Porém, se usar de novo essa característica antes de terminar um descanso longo, você sofre 2d12 de dano necrótico para cada nível de magia, imediatamente após conjurá-la. Cada vez que você usar essa característica antes de terminar um descanso longo, o dano necrótico por nível da magia aumenta em 1d12. Esse dano ignora qualquer resistência ou imunidade.'),
(302, 'Escola de Ilusão', 'Você focou seus estudos em magias que ofuscam os sentidos, confundem a mente e enganam até mesmo os povos mais sábios. Sua mágica é sutil, mas as ilusões criadas pela sua mente afiada fazem o impossível parecer real. Alguns ilusionistas – incluindo muitos magos gnomos – são vigaristas benignos que usam suas magias para entreter. Outros são mestres mais sinistros da enganação, usando suas ilusões para apavorar e iludir os outros para ganhos pessoais.'),
(303, 'Escola de Ilusão - Ilusão Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de ilusão em seu grimório é reduzido à metade'),
(304, 'Escola de Ilusão - Ilusão Menor Aprimorada', 'A partir do 2° nível, quando você escolhe essa escola, você aprende o truque ilusão menor. Se você já conhece esse truque, você aprende um truque de mago diferente, à sua escolha. O truque não conta no número de truque que você conhece.\r\n<br>\r\nQuando você conjurar ilusão menor, você pode criar tanto um som quanto uma imagem com uma única conjuração da magia.'),
(305, 'Escola de ilusão - Ilusões Moldáveis', 'A partir do 6° nível, quando você conjura uma magia de ilusão que tenha duração de 1 minuto ou maior, você pode usar sua ação para mudar a natureza da ilusão (usando os parâmetros normais da magia para a ilusão), considerando que você pode ver a ilusão.'),
(306, 'Escola de Ilusão - Eu Ilusório', 'Começando no 10° nível, você pode criar uma duplicata ilusória de si mesmo em um instante, como uma reação instintiva ao perigo. Quando uma criatura realizar uma jogada de ataque contra você, você pode usar sua reação para interpor a duplicata ilusória entre o atacante e você. O ataque erra você automaticamente, e então, a ilusão se dissipa.\r\n<br>\r\nUma vez que você usa essa característica, não pode usá-la novamente até terminar um descanso longo.'),
(307, 'Escola de Ilusão - Realidade Ilusória', 'A partir do 14° nível, você aprendeu o segredo de como tecer magia sombria em suas ilusões para torná-las semirreais. Quando você conjura uma magia de ilusão de 1° nível ou superior, você pode escolher um objeto inanimado e não mágico que é parte da ilusão e tornar esse objeto real. Você pode fazer isso no seu turno, com uma ação bônus, enquanto a magia estiver em efeito. O objeto permanece real por 1 minuto. Por exemplo, você pode criar uma ilusão de uma ponte sobre um abismo e depois torná-la real tempo suficiente para que seus aliados a atravessem.\r\n<br>\r\nO objeto não pode causar dano ou qualquer tipo de ferimento direto a ninguém.'),
(308, 'Escola de Necromancia', 'A Escola de Necromancia explora as forças cósmicas da vida, morte e morte-vida. À medida que você foca seus estudos nessa tradição, você aprende a manipular a energia que anima todas as coisas vivas. Enquanto progride, você aprende a retirar a força vital de uma criatura enquanto sua magia destrói seu corpo, transformando a energia vital em poder mágico que você pode manipular.\r\n<br>\r\nA maioria das pessoas veem necromantes como ameaças, ou até mesmo vilões, devido a sua associação intima com a morte. Nem todos os necromantes são malignos, mas as forças que eles manipulam são consideradas tabu por diversas sociedades.'),
(309, 'Escola de Necromancia - Necromancia Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de necromancia em seu grimório é reduzido à metade.'),
(310, 'Escola de Necromancia - Colheita Sinistra ', 'A partir do 2° nível, você ganha a habilidade de ceifar a energia vital das criaturas que você mata com suas magias. Uma vez por turno, quando você matar uma ou mais criaturas com uma magia de 1° nível ou superior, você recupera uma quantidade de pontos de vida igual ao dobro do nível da magia ou o triplo do seu nível, se a magia pertencer a Escola de Necromancia. Você não recebe esse benefício por matar constructos ou mortos-vivos.'),
(311, 'Escola de Necromancia - Escravos Mortos-Vivos', 'No 6° nível, você adiciona a magia animar mortos ao seu grimório se você ainda não a possuir. Quando você conjurar animar mortos, você pode escolher um corpo ou pilha de ossos adicional, criando outro zumbi ou esqueleto, como apropriado.\r\n<br>\r\nToda vez que você criar um morto-vivo através de uma magia de necromancia, ele terá benefícios adicionais:\r\n<br><br>\r\n<b>-</b> O máximo de pontos de vida da criatura aumenta numa quantidade igual a seu nível de mago.\r\n<br>\r\n<b>-</b> A criatura adiciona seu bônus de proficiência as suas jogadas de dano.'),
(312, 'Escola de Necromancia - Acostumado à Morte-Vida', 'A partir do 10° nível, você terá resistência a dano necrótico e seu máximo de pontos de vida não pode ser reduzido. Você gastou tanto tempo lidando com mortos-vivos e com as forças que os animam que você se acostumou a alguns dos seus piores efeitos.'),
(313, 'Escola de Necromancia - Comandar Mortos-Vivos', 'A partir do 14° nível, você pode usar magia para trazer mortos-vivos ao seu controle, até os criados por outros magos. Com uma ação, você pode escolher um morto-vivo que você possa ver a até 18 metros. Essa criatura deve realizar um teste de resistência de Carisma com CD igual das suas magias de mago. Se ela for bem sucedida, você não poderá usar essa característica nela novamente. Se ela falhar, ela se tornará amistosa a você e obedecerá seus comandos até você usar essa característica novamente.\r\n<br>\r\nMortos-vivos inteligentes são difíceis de controlar dessa forma. Se o alvo tiver Inteligência 8 ou superior, ele terá vantagem no teste de resistência. Se ele fracassar no teste de resistência e tiver Inteligência 12 ou superior, ele poderá repetir o teste de resistência ao final de cada hora até que obtenha sucesso e se liberte.'),
(314, 'Escola de Transmutação', 'Você é um estudante de magias que modificam energia e matéria. Para você, o mundo não é uma coisa fixa, mas sim eminentemente mutável e você se deleita em ser um agente da mudança. Você empunha a matéria-prima da criação e aprendeu tanto formas físicas quanto qualidades mentais. Sua magia lhe dá as ferramentas para se tornar o ferreiro na forja da realidade.\r\n<br>\r\nAlguns transmutadores são vigaristas ou brincalhões, transformando pessoas em sapos e transformando cobre em prata por diversão e lucro ocasional. Outros perseguem seus estudos mágicos com uma seriedade mórbida, buscando o poder dos deuses de criar e destruir mundos.'),
(315, 'Escola de Transmutação - Transmutação Instruída', 'Quando você escolhe essa escola no 2º nível, o ouro e o tempo que você precisa gastar para copiar uma magia da escola de transmutação em seu grimório é reduzido à metade.'),
(316, 'Escola de Transmutação - Alquimia Menor', 'A partir do 2° nível, quando você escolhe essa escola, você pode alterar temporariamente as propriedades físicas de um objeto não-mágico, alterando-o de uma substancia para outra. Você realiza um procedimento alquímico especial em um objeto composto inteiramente de madeira, pedra (mas não uma pedra preciosa), ferro, cobre ou prata, transformando-o em um material diferente dentre esses. Para cada 10 minutos que você gastar realizando esse procedimento, você pode transformar 30 centímetros cúbicos de material. Após 1 hora, ou até você perder sua concentração (como es estivesse se concentrando em uma magia) o material reverte à sua substancia original.'),
(317, 'Escola de Transmutação - Pedra de Transmutador', 'A partir do 6° nível, você pode gastar 8 horas criando uma pedra de transmutador que armazena magia de transmutação. Você pode se beneficiar da pedra ou dá-la para outra criatura. Uma criatura ganha um benefício, à sua escolha, enquanto a pedra estiver em sua posse. Quando você cria a pedra, escolha um benefício dentre as opções a seguir:\r\n<br><br>\r\n<b>-</b> Visão no escuro com alcance de 18 metros, como descrito no capítulo 8\r\n<br>\r\n<b>-</b> Um aumento de 3 metros no deslocamento enquanto a criatura não estiver sobrecarregada\r\n<br>\r\n<b>-</b> Proficiência em testes de resistência de Constituição\r\n<br>\r\n<b>-</b> Resistência a dano de ácido, frio, fogo, elétrico ou trovejante (escolhido por você quando escolhe esse benefício)\r\n<br><br>\r\nCada vez que você conjurar uma magia de conjuração de 1° nível ou superior, você pode mudar o efeito da sua pedra, se ela estiver em sua posse.\r\n<br>\r\nSe você criar uma nova pedra de transmutador, a anterior para de funcionar'),
(318, 'Escola de Transmutação - Metamorfo', 'No 10° nível, você adiciona a magia metamorfose ao seu grimório, se você ainda não a possuir. Você pode conjurar metamorfose sem gastar um espaço de magia. Quando o fizer, você só pode escolher a si mesmo como alvo e se transforma em uma besta com nível de desafio 1 ou menor.\r\n<br>\r\nQuando você conjurar metamorfose dessa forma, você não poderá fazê-lo novamente até terminar um descanso curto ou longo, apesar de ainda poder conjurá-la normalmente usando espaços de magia disponíveis.'),
(319, 'Escola de Transmutação - Mestre Transmutador', 'A partir do 14° nível, você pode usar sua ação para consumir a reserva de magia de transmutação armazenada dentro da sua pedra de transmutador em uma única explosão. Quando o fizer, escolha um dos seguintes efeitos. Sua pedra de transmutador é destruída e não pode ser refeita até você terminar um descanso longo.\r\n<br><br>\r\n<b>Transformação Maior.</b> Você pode transmutar um objeto não-mágico – não maior que 1,5 metro cubico – em outro objeto não-mágico de tamanho e massa similares e de valor igual ou inferior. Você deve gastar 10 minutos manipulando o objeto para transformá-lo.\r\n<br><br>\r\n<b>Panaceia.</b> Você remove todas as maldições, doenças e venenos afetando uma criatura que você tocar com sua pedra de transmutador. A criatura também recupera todos os seu pontos de vida.\r\n<br><br>\r\n<b>Restaurar Vida.</b> Você pode conjurar reviver mortos em uma criatura que você tocar com sua pedra de transmutador, sem gastar espaço de magia ou precisar ter a magia no seu grimório.\r\n<br><br>\r\n<b>Restaurar Juventude.</b> Você toca a pedra de transmutador em uma criatura voluntária e a idade aparente da criatura é reduzida em 3d10 anos, para o mínimo de 13 anos. Esse efeito não estende a vida útil da criatura.');
INSERT INTO `habilidade_classe` (`hab_class_cod`, `hab_class_nome`, `hab_class_desc`) VALUES
(320, 'Defesa sem Armadura - Monge', 'A partir do 1° nível, quando você não estiver vestindo nenhuma armadura nem empunhando um escudo, sua Classe de Armadura será 10 + seu modificador de Destreza + seu modificador de Sabedoria.'),
(321, 'Artes Marciais', 'No 1° nível, sua prática nas artes marciais concede a você maestria nos estilos de combate que utilizam golpes desarmados e armas de monge, que são as espadas curtas e quaisquer armas simples corpo-a-corpo que não tenham a propriedade duas mãos ou pesada.\r\n<br>\r\nVocê ganha os seguintes benefícios enquanto estiver desarmado ou empunhando uma arma de monge e não estiver vestindo nenhuma armadura ou empunhando um escudo:\r\n<br><br>\r\n<b>-</b> Você pode usar Destreza ao invés de Força para as jogadas de ataque e dano dos seus golpes desarmados e de suas armas de monge.\r\n<br>\r\n<b>-</b> Você pode rolar um d4 no lugar do dano normal dos seus golpes desarmados e armas de monge. Esse dado muda à medida que você adquire níveis de monge, como mostrado na coluna Artes Marciais na tabela O Monge.\r\n<br>\r\n<b>-</b> Quando você usa a ação de Ataque com um golpe desarmado ou uma arma de monge no seu turno, você pode realizar um golpe desarmado com uma ação bônus. Por exemplo, se você realizar a ação de Ataque com um bordão, você também poderá realizar um golpe desarmado com uma ação bônus, assumindo que você ainda não realizou uma ação bônus nesse turno.\r\n<br><br>\r\nDeterminados monastérios usam formas especializadas de armas de monge. Por exemplo, você pode usar uma clava feita por dois pedaços de madeira conectados por uma pequena corrente (chamado de nunchaku) ou uma foice com uma estranha lâmina fina (chamada de kama). Qualquer que seja o nome que você use para uma arma de monge, você pode usar as estatísticas de jogo mostradas para as armas no capítulo 5.'),
(322, 'Chi', 'A partir do 2° nível, seu treinamento permitiu que você controlasse a energia mística do chi. Seu acesso a essa energia é representado por um número de pontos de chi. Seu nível de monge determina o número de pontos que você tem, como mostrado na coluna Pontos de Chi da tabela O Monge.\r\n<br>\r\nVocê pode gastar esses pontos para abastecer várias características de chi. Você começa conhecendo três dessas características: Rajada de Golpes, Defesa Paciente e Passo do Vento. Você aprende mais características de chi à medida que adquire níveis nessa classe.\r\n<br>\r\nQuando você gasta um ponto de chi, ele se torna indisponível até você terminar um descanso curto ou longo, no fim deste, todos os pontos de chi gastos volta para você. Você deve gastar, pelo menos, 30 minutos do descanso meditando para recuperar seus pontos de chi.\r\n<br>\r\nAlgumas das características de chi requerem que seu alvo realize um teste de resistência para resistir ao efeito da característica. A CD do teste de resistência é calculada a segui:\r\n<br><br>\r\n<b>CD de resistência de Chi</b> = 8 + bônus de proficiência + seu modificador de Sabedoria'),
(323, 'Chi - Rajada de golpes', 'Imediatamente após você realizar a ação de Ataque no seu turno, você pode gastar 1 ponto de chi para realizar dois golpes desarmados com uma ação bônus.'),
(324, 'Chi - Defesa paciente', 'Você pode gastar 1 ponto de chi para realizar a ação de Esquivar, com uma ação bônus, no seu turno.'),
(325, 'Chi - Passo do Vento', 'Você pode gastar 1 ponto de chi para realizar a Ação de Desengajar ou Disparada, com uma ação bônus, no seu turno, e sua distância de salto é dobrada nesse turno.'),
(326, 'Movimento sem Armadura', 'A partir do 2° nível, seu deslocamento aumenta em 3 metros enquanto você não estiver usando armadura nem empunhando um escudo. Esse bônus aumenta quando você alcança determinados níveis, como mostrado na tabela O Monge.\r\n<br>\r\nNo 9° nível, você ganha a habilidade de se mover através de superfícies verticais e sobre líquidos, no seu turno, sem cair durante o movimento.'),
(327, 'Tradição Monástica', 'Quando você alcança o 3° nível, você ingressa numa tradição monástica: o Caminho da Mão Aberta, o Caminho Sombrio e o Caminho dos Quatro Elementos, todas detalhadas no final da descrição dessa classe. Sua tradição concede a você características no 3° nível e novamente no 6°, 11° e 17° nível.'),
(328, 'Defletir Projéteis', 'A partir do 3° nível, você pode usar sua reação para defletir ou apanhar o projétil quando você é atingido por um ataque de arma à distância. Quando o fizer, o dano que você sofrer do ataque é reduzido em 1d10 + seu modificador de Destreza + seu nível de monge.\r\n<br>\r\nSe o dano for reduzido a 0, você pode apanhar o projétil se ele for pequeno o suficiente para ser segurando em uma mão e você tenha, pelo menos, uma mão livre. Se você apanhar um projétil dessa forma, você pode gastar 1 ponto de chi para realizar uma ataque à distância com a arma ou munição que você acabou de pegar, como parte da mesma reação. Você realiza esse ataque com proficiência, independentemente das armas em que você é proficiente, e o projétil conta como uma arma de monge para o ataque. A distância do ataque do monge é de 6/18 metros.'),
(329, 'Queda Lenta', 'Começando no 4° nível, você pode usar sua reação, quando você cai, para reduzir o dano de queda sofrido por um valor igual a cinco vezes seu nível de monge.'),
(330, 'Ataque Extra - Monge', 'A partir do 5° nível, você pode atacar duas vezes, ao invés de uma, sempre que você realizar a ação de Ataque no seu turno.'),
(331, 'Ataque Atordoante', 'A partir do 5° nível, você pode interferir no fluxo de chi do corpo de um oponente. Quando você atingir outra criatura com um ataque corpo-a-corpo com arma, você pode gastar 1 ponto de chi para tentar um ataque atordoante. O alvo deve ser bem sucedido num teste de resistência de Constituição ou ficará atordoado até o final do seu próximo turno.'),
(332, 'Golpes de Chi', 'A partir do 6° nível, seus golpes desarmados contam como armas mágicas com o propósito de ultrapassar a resistência ou imunidade a ataques e danos não-mágicos.'),
(333, 'Evasão', 'A partir do 7º nível, você pode esquivar-se agilmente de certos efeitos em área, como o sopro elétrico de um dragão azul ou uma magia bola de fogo. Quando você for alvo de um efeito que exige um teste de resistência de Destreza para sofrer metade do dano, você não sofre dano algum se passar, e somente metade do dano se falhar.'),
(334, 'Mente Tranquila', 'A partir do 7° nível, você pode usar sua ação para terminar um efeito em si mesmo, que esteja lhe enfeitiçando ou amedrontando.'),
(335, 'Pureza Corporal', 'No 10° nível, sua maestria do chi flui através de você, tornando-o imune a doenças e venenos.'),
(336, 'Idiomas do Sol e da Lua', 'A partir do 13° nível, você aprende a tocar o chi de outras mentes fazendo com que você compreenda todos os idiomas falados. Além do mais, qualquer criatura que possa entender um idioma poderá entender o que você fala.'),
(337, 'Alma de Diamante', 'A partir do 14° nível, sua maestria do chi concede a você proficiência em todos os testes de resistência.\r\n<br>\r\nAlém disso, toda vez que você realizar um teste de resistência e falha, você pode gastar 1 ponto de chi para jogar novamente e ficar com o segundo resultado.'),
(338, 'Corpo Atemporal', 'No 15° nível, seu chi sustenta você tanto que você não sofre os efeitos da velhice e não pode envelhecer magicamente. Você ainda morrerá de velhice, no entanto. Além disso, você não precisa mais de comida ou água.'),
(339, 'Corpo Vazio', 'A partir do 18° nível, você pode usar sua ação para gastar 4 pontos de chi e ficar invisível por 1 minuto. Durante esse tempo, você também adquire resistência a todos os danos, exceto dano de energia.\r\n<br>\r\nAlém disso, você pode gastar 8 pontos de chi para conjurar a magia projeção astral, sem precisar de componentes materiais. Quando o fizer, você não pode levar qualquer outra criatura com você.'),
(340, 'Auto Aperfeiçoamento', 'No 20° nível, quando você rolar iniciativa e não tiver nenhum ponto de chi restante, você recupera 4 pontos de chi.'),
(341, 'Caminho da Mão Aberta', 'Monges do Caminho da Mão Aberta são os mestres supremos das artes de combate marcial, tanto armado quanto desarmado. Eles aprendem técnicas para empurrar e derrubar seus oponentes, manipulando o chi para curar os ferimentos dos seus corpos e praticando uma meditação avançada que os protege de mazelas.'),
(342, 'Caminho da Mão Aberta - Técnica da Mão Aberta', 'Começando quando você escolhe essa tradição, no 3° nível, você pode manipular o chi do seu inimigo quando você controla o seu. Toda vez que você atingir uma criatura com um dos seus ataques garantidos por sua Rajada de Golpes, você pode impor um dos seguintes efeitos no alvo:\r\n<br><br>\r\n<b>-</b> Ele deve ser bem sucedido num teste de resistência de Destreza ou cairá no chão.\r\n<br>\r\n<b>-</b> Ele deve realizar um teste de resistência de Força. Se falhar, você pode empurrá-lo 4,5 metros para longe de você.\r\n<br>\r\n<b>-</b> Ele não pode realizar reações até o final do seu próximo turno.'),
(343, 'Caminho da Mão Aberta - Integridade Corporal', 'No 6° nível, você ganha a habilidade de se curar. Com uma ação, você recupera uma quantidade de pontos de vida igual a três vezes seu nível de monge. Você deve terminar um descanso longo antes de poder usar essa característica novamente.'),
(344, 'Caminho da Mão Aberta - Tranquilidade', 'A partir do 11° nível, você pode entrar num estado especial de meditação que rodeia você com uma aura pacifica. No final de um descanso longo, você ganha o efeito da magia santuário que dura até o começo do seu próximo descanso longo (a magia pode terminar prematuramente, como normal). A CD do teste de resistência para a magia é 8 + seu modificador de Sabedoria + seu bônus de proficiência.'),
(345, 'Caminho da Mão Aberta - Palma Vibrante', 'No 17° nível, você ganha a habilidade de criar vibrações letais no corpo de alguém. Quando você atingir uma criatura com um golpe desarmado, você pode gastar 3 pontos de chi para começar essas vibrações imperceptíveis, que duram por um número de dias igual ao seu nível de monge. As vibrações são inofensivas, a não ser que você use sua ação para terminá-las. Para tanto, você e o alvo devem estar no mesmo plano de existência. Quando você usa essa ação, a criatura deve realizar um teste de resistência de Constituição. Se ela falhar, ela será reduzida a 0 pontos de vida. Se ela passar, ela sofrerá 10d10 de dano necrótico.\r\n<br>\r\nVocê pode ter apenas uma criatura sob o efeito dessa característica por vez. Você pode escolher terminar as vibrações inofensivamente, sem usar uma ação.'),
(346, 'Caminho da Sombra', 'Monges do Caminho da Sombra seguem uma tradição que valoriza furtividade e subterfugio. Esses monges devem ser chamados de ninjas ou dançarinos das sombras e eles servem como espiões e assassinos. Às vezes, os membros de um monastério ninja são membros da mesma família, formando um clã que jurou sigilo sobre suas artes e missões. Outros monastérios parecem mais com guildas de ladrões, oferecendo seus serviços a nobres, mercadores ricos ou qualquer um que possa pagar suas taxas. Independente dos seus métodos, os líderes desses monastérios esperam obediência inquestionável de seus estudantes.'),
(347, 'Caminho da Sombra - Artes Sombrias', 'Começando quando você escolhe essa tradição, no 3° nível, você pode usar seu chi para simular o efeito de certas magias. Com uma ação, você pode gastar 2 pontos de chi para conjurar escuridão, visão no escuro, passos sem pegadas ou silêncio, sem precisar de componentes materiais. Além disso, você ganha o truque ilusão menor, se você ainda não o conhecia.'),
(348, 'Caminho da Sombra - Passo das Sombras', 'No 6° nível, você ganha a habilidade de entrar em uma sombra e sair em outra. Quando você estiver sob penumbra ou na escuridão, com uma ação bônus, você pode se teletransportar a até 18 metros para um espaço desocupado que você possa ver que também esteja sob penumbra ou escuridão. Você, então, terá vantagem no primeiro ataque corpo-a-corpo que você fizer antes do final do seu turno.'),
(349, 'Caminho da Sombra - Manto das Sombras', 'No 11° nível, você aprendeu a se tornar uno com as sombras. Quando você estiver em uma área de penumbra ou escuridão, você pode usar sua ação para se tornar invisível. Você permanece invisível até realizar um ataque, conjurar uma magia ou se for para uma área de luz plena.'),
(350, 'Caminho da Sombra - Oportunista', 'No 17° nível, você pode explorar um momento de distração de uma criatura quando ela é atingida por um ataque. Toda vez que uma criatura a até 1,5 metro de você for atingida por um ataque realizar por outra criatura diferente de você, você pode usar sua reação para realizar um ataque corpo-a corpo contra essa criatura.'),
(351, 'Caminho dos Quatro Elementos', 'Você segue uma tradição monástica que ensina você a dominar os elementos. Quando você foca seu chi, você pode se alinhar com as forças da criação e moldar os elementos a sua vontade, usando-os como uma extensão do seu corpo. Alguns membros dessa tradição se dedicam a um único elemento, mas outros tecem os elementos juntos.\r\n<br>\r\nMuitos monges dessa tradição tatuam seus corpos com representações dos seus poderes de chi, normalmente representadas através de dragões enrolados, mas também como fênix, peixes, plantas, montanhas e ondas coroantes.'),
(352, 'Caminho dos Quatro Elementos - Discípulo dos Elementos', 'Quando você escolhe essa tradição, no 3° nível, você aprende disciplinas mágicas que manipulam o poder dos quatro elementos. Uma disciplina requer que você gaste pontos de chi cada vez que você a usa.\r\n<br>\r\nVocê conhece a disciplina Sintonia Elemental e uma outra disciplina, à sua escolha, que são detalhadas na seção “Disciplinas Elementais” abaixo. Você aprende uma disciplina adicional, à sua escolha, no 6°, 11° e 17° nível.\r\n<br>\r\nToda vez que você aprende uma nova disciplina elemental, você pode substituir uma disciplina elemental que você já conhecia por uma disciplina diferente.\r\n<br>\r\n<b>Conjurando Magias Elementais.</b> Algumas disciplinas elementais permitem que você conjure magias. Veja o capítulo 10 para as regras gerais de conjuração. Para conjurar uma dessas magias, você usa o tempo de conjuração da mesma e suas outra regras, mas você não precisa fornecer os componentes materiais dela.\r\n<br>\r\nQuando você alcança o 5° nível nessa classe, você pode gastar pontos de chi adicionais para aumentar o nível da magia de disciplina elemental que você conjurar, considerando que a magia tenha um efeito de aprimoramento para um nível superior, como mãos flamejantes, por exemplo. O nível da magia aumenta em 1 para cada ponto de chi adicional que você gastar. Por exemplo, se você for um monge de 5° nível e usar Golpe de Varredura Cauterizante para conjurar mãos flamejantes, você pode gastar 3 pontos de chi para conjurá-la como uma magia de 2° nível (o custo base da disciplina de 2 pontos mais 1).\r\n<br>\r\nO número máximo de pontos de chi que você pode gastar para conjurar uma magia dessa forma (incluindo seu custo de chi base e quaisquer pontos de chi adicionais que você gastar para elevar seu nível) é determinado pelo seu nível de monge, como mostrado na tabela Magias e Pontos de Chi.\r\n<br><br>\r\n<b>Magias e Pontos de Chi</b><br>\r\n<b>Nível de Monge</b> | <b>Pontos de Chi Máximos para uma Magia</b>\r\n<br><br>\r\n    5°–8°      |                   3\r\n    9°–12°     |                   4\r\n    13°–16°    |                   5\r\n    17°–20°    |                   6'),
(353, 'Caminho dos Quatro Elementos - Disciplinas Elementais', 'As disciplinas elementais serão apresentadas em ordem alfabética. Se a disciplina tiver um nível como pré-requisito, você deve ter aquele nível na classe para aprendê-la.'),
(354, 'Sentido Divino', 'A presença de um mal poderoso é registrada nos seus sentidos como um odor nocivo e o bem poderoso badala como música celestial nos seus ouvidos. Com uma ação, você pode expandir sua consciência para detectar tais forças. Até o final do seu próximo turno, você sabe a localização de qualquer celestial, corruptor ou morto-vivo a 18 metros de você que não esteja com cobertura total. Você sabe o tipo (celestial, corruptor ou morto-vivo) de qualquer ser cuja presença você sentiu, mas não sua identidade (o vampiro Conde Strahd von Zarovish, por exemplo). Dentro do mesmo raio, você também detecta a presença de qualquer lugar ou objeto que tenha sido consagrado ou conspurcado, como pela magia consagrar.\r\n<br>\r\nVocê pode usar essa característica um número de vezes igual a 1 + seu modificador de Carisma. Quando você concluir um descanso longo, você recupera todos os usos gastos.'),
(355, 'Cura pelas Mãos', 'Seu toque abençoado pode curar ferimentos. Você tem uma reserva de poder curativo que se enche quando você realiza um descanso longo. Com essa reserva, você pode restaurar um número total de pontos de vida igual ao seu nível de paladino x 5.\r\n<br>\r\nCom uma ação, você pode tocar uma criatura e sugar poder da sua reserva para restaurar um número de pontos de vida da criatura, até o máximo de pontos restantes na reserva.\r\n<br>\r\nAlternativamente, você pode gastar 5 pontos de cura da sua reserva de cura para curar o alvo de uma doença ou neutralizar um veneno que o esteja afetando. Você pode curar múltiplas doenças e neutralizar múltiplos venenos com um único uso de Cura pelas Mãos, gastando pontos de vida separadamente para cada um.\r\n<br>\r\nEssa característica não gera nenhum efeito em mortos-vivos e constructos.'),
(356, 'Destruição Divina', 'A partir do 2° nível, quando você atingir uma criatura com um ataque corpo-a-corpo com arma, você pode gastar um espaço de magia de qualquer classe para causar dano radiante no alvo, além do dano normal da arma. O dano extra é de 2d8 para um espaço de magia de 1° nível, mais 1d8 para cada espaço de magia acima do 1°, até o máximo de 5d8. O dano aumenta em 1d8 se o alvo for um corruptor ou um morto-vivo.'),
(357, 'Saúde Divina', 'No 3° nível, a magia divina flui através de você tornando você imune a doenças.'),
(358, 'Juramento Sagrado', 'Quando você alcança o 3° nível, você faz um juramento que torna-o um paladino para sempre. Até então, você estava em um estágio preparatório, guiado pelo caminho, mas ainda não jurado a ele. Agora você escolhe o Juramento de Devoção, o Juramento dos Anciões ou o Juramento de Vingança, todos detalhados no final da descrição da classe.\r\n<br>\r\nSua escolha lhe confere características no 3° nível e novamente no 7°, 15° e 20° nível. Tais características incluem as magias de juramento e a característica Canalizar Divindade.'),
(359, 'Juramento Sagrado - Magias de Juramento', 'Cada juramento possui uma lista de magias associada a ele. Você ganha acesso a essas magias nos níveis especificados na descrição do juramento. Uma vez que você tenha ganhado acesso a uma magia de juramento, você sempre a terá preparada. Magias de juramento não contam no número de magias que você pode preparar a cada dia.\r\n<br>\r\nSe você ganhar uma magia de juramento que não apareça na lista de magias de paladino, a magia será, no entanto, uma magia de paladino para você.'),
(360, 'Juramento Sagrado - Canalizar Divindade', 'Seu juramento permite que você canalize energia divina para abastecer efeitos mágicos. Cada opção de Canalizar Divindade concedida por um juramento explica como usá-la.\r\n<br>\r\nQuando você usa o seu Canalizar Divindade, você escolhe qual opção usar. Você deve terminar um descanso curto ou longo para pode usar seu Canalizar Divindade novamente.\r\n<br>\r\nAlguns efeitos de Canalizar Divindade requerem um teste de resistência. Quando você usar tais efeitos dessa classe, a CD será igual a CD das suas magias de paladino.'),
(361, 'Ataque Extra - Paladino', 'A partir do 5° nível, você pode atacar duas vezes, ao invés de uma, sempre que você realizar a ação de Ataque no seu turno.'),
(362, 'Aura de Proteção', 'A partir do 6° nível, sempre que você ou uma criatura amigável a até 3 metros de você tiver que fazer um teste de resistência, aquela criatura ganha um bônus no seu teste de proteção igual a seu modificador de Carisma (com um bônus mínimo de +1). Você deve estar consciente para garantir esse bônus.\r\nNo 18° nível, o alcance dessa aura aumenta para 9 metros.'),
(363, 'Aura de Coragem', 'Começando no 10° nível, você e as criaturas amigáveis dentro de um raio de 3 metros de você não podem ser amedrontadas enquanto você estiver consciente.\r\n<br>\r\nNo 18° nível, o alcance dessa aura aumenta para 9 metros.'),
(364, 'Destruição Divina Aprimorada', 'No 11° nível, você fica tão infundido com o poder da justiça que todos os seus ataques corpo-a-corpo com arma carregam poder divino neles. Sempre que você atingir uma criatura com um ataque corpo-a-corpo, a criatura sofre 1d8 de dano radiante extra. Se você também usar sua Destruição Divina em um ataque, você adiciona esse dano ao dano extra da sua Destruição Divina.'),
(365, 'Toque Purificador', 'A partir do 14° nível, você pode usar sua ação para terminar uma magia em si mesmo ou em uma criatura voluntária que você tocar.\r\nVocê pode usar essa característica um número de vezes igual a seu modificador de Carisma (mínimo uma vez). Você recupera os usos gastos quando termina um descanso longo.'),
(366, 'Juramento de Devoção', 'O Juramento de Devoção vincula um paladino aos mais sublimes ideias de justiça, virtude e ordem. Algumas vezes chamados de campeões, cavaleiros brancos ou guerreiros sagrados, esses paladinos atendem o ideal do cavaleiro na armadura brilhante, agindo com honra em busca de justiça e do bem maior. Eles se agarram aos mais altos padrões de conduta, e alguns, para o melhor ou para o pior, consideram que o resto do mundo deve ter os mesmos padrões. Muitos dos que fazem esse juramento são devotados aos deuses da lei e do bem e usam os dogmas de seus deuses como medida de sua devoção. Eles consideram os anjos – os perfeitos servos do bem – como seus ideais e incorporam imagens de asas angelicais em seus elmos ou brasões.'),
(367, 'Juramento de Devoção - Dogmas de Devoção', 'Embora as palavras exatas e restrições do Juramento de Devoção variem, os paladinos que fazem esse juramento partilha desses dogmas.\r\n<br><br>\r\n<b>Honestidade.</b> Não minta nem trapaceie. Deixe sua palavra ser sua garantia.\r\n<br><br>\r\n<b>Coragem.</b> Nunca tenha medo de agir, apesar de a cautela ser sensata\r\n<br><br>\r\n<b>Compaixão.</b> Ajude os outros, proteja os fracos, puna aqueles que os ameaçarem. Mostre misericórdia aos seus adversários, mas tempere isso com sabedoria.\r\n<br><br>\r\n<b>Honra.</b> Trate os outros com equidade e deixe seus feitos honoráveis serem exemplos para eles. Faça o máximo de bem possível causando a menor quantidade de mazelas.\r\n<br><br>\r\n<b>Dever.</b> Seja responsável pelos seus atos e por suas consequências, proteja aqueles confiados aos vossos cuidados e obedeça aqueles que tiverem autoridade sobre você.'),
(368, 'Juramento de Devoção - Magias de Juramento', 'Você ganha magias de juramento nos níveis de paladino descritos.\r\n<br><br>\r\n<b>Nível de Paladino</b> | <b>Magias</b>\r\n<br><br>\r\n         3°       | proteção contra o bem e mal, santuário\r\n<br>\r\n         5°       | restauração menor, zona da verdade\r\n<br>\r\n         9°       | sinal de esperança, dissipar magia\r\n<br>\r\n        13°       | movimentação livre, guardião da fé\r\n<br>\r\n        17°       | comunhão, coluna de chamas'),
(369, 'Juramento de Devoção - Canalizar Divindade', 'Quando você faz esse juramento, no 3° nível, você ganha as duas opções seguintes de Canalizar Divindade.\r\n<br><br>\r\n<b>Arma Sagrada.</b> Com uma ação, você pode imbuir uma arma que você esteja empunhando com energia positiva, usando seu Canalizar Divindade. Por 1 minuto, você adiciona seu modificador de Carisma as jogadas de ataque feitas com essa arma (bônus mínimo de +1). A arma também emite luz plena num raio de 6 metros e penumbra mais 6 metros além. Se a arma ainda não for mágica, ela se torna mágica por essa duração.\r\n<br>\r\nVocê pode terminar o efeito no seu turno, como parte de qualquer ação. Se você não estiver mais segurando ou portando a arma, ou estiver inconsciente, esse efeito termina.\r\n<br><br>\r\n<b>Expulsar o Profano.</b> Com uma ação, você apresenta seu símbolo sagrado e faz uma oração censurando corruptores e mortos-vivos, usando seu Canalizar Divindade. Cada corruptor ou morto-vivo que puder ver ou ouvir você e esteja a até 9 metros, deve realizar um teste de resistência de Sabedoria. Se a criatura falhar no teste de resistência, ela será expulsa por 1 minuto ou até sofrer dano.\r\n<br>\r\nUma criatura expulsa deve gastar seu turno tentando se mover para longe de você da melhor forma possível e não pode, voluntariamente, se mover para um espaço a menos de 9 metros de você. Ela também não pode realizar reações. Nas ações delas, elas só poderão realizar a ação de Disparada ou tentar escapar de um efeito que as impeça de se mover. Se não houver lugar para se mover, a criatura pode usar a ação de Esquivar.'),
(370, 'Juramento de Devoção - Aura de Devoção', 'A partir do 7° nível, você e as criaturas amistosas a até 3 metros não podem ser enfeitiçadas enquanto você estiver consciente.\r\n<br>\r\nNo 18° nível, o alcance dessa aura aumenta para 9 metros.'),
(371, 'Juramento de Devoção - Pureza de Espírito', 'A partir do 15° nível, você estará sempre sob efeito da magia proteção contra o bem e mal.'),
(372, 'Juramento de Devoção - Halo Sagrado', 'No 20° nível, com uma ação, você pode emanar uma aura de luz solar. Por 1 minuto, luz plena emana de você num raio de 9 metros, penumbra brilha mais 9 metros além.\r\nSempre que uma criatura inimiga começar seu turno na luz plena, a criatura sofrerá 10 de dano radiante.\r\nAlém disso, por essa duração, você tem vantagem em testes de resistência contra magias conjuradas por corruptores ou mortos-vivos.\r\nUma vez que você use essa característica, não poderá fazê-lo novamente até ter terminado um descanso longo.'),
(373, 'Juramento dos Anciões', 'O Juramento dos Anciões é tão antigo quanto a raça dos elfos e os rituais dos druidas. Algumas vezes chamados de cavaleiros feéricos, cavaleiros verdejantes ou cavaleiros dos chifres, paladinos que fazem esse juramento lançam sua sorte com o lado da luz na batalha cósmica contra as trevas, porque eles amam as coisas belas e vivificantes do mundo, não necessariamente porque eles acreditam em princípios de honra, coragem e justiça. Eles adornam suas armaduras e roupas com imagens de coisas que crescem – folhas, galhadas ou flores – para refletir seu comprometimento em preservar a vida e a luz no mundo.'),
(374, 'Juramento dos Anciões - Dogmas dos Anciões', 'Os dogmas do Juramento dos Anciões tem sido preservados por incontáveis séculos. Esse juramento enfatiza os princípios do bem acima de qualquer interesse de ordem ou caos. Seus quatro princípios centrais são simples.\r\n<br><br>\r\n<b>Acenda a Luz.</b> Através dos seus atos de misericórdia, gentileza e piedade, acenda a luz da esperança no mundo, afastando o desespero.\r\n<br><br>\r\n<b>Abrigue a Luz.</b> Onde houver bem, beleza, amor e riso no mundo, mantenha-se contra a maldade que pode engolir isso. Onde a vida floresce, mantenha-se contra as forças que podem torná-la estéril.\r\n<br><br>\r\n<b>Preserve Sua Própria Luz.</b> Deleite-se com música e risadas, beleza e arte. Se você permitir que a luz morra em seu coração, você não poderá preservá-la no mundo.\r\n<br><br>\r\n<b>Seja a Luz.</b> Seja uma glorioso guia para todos que vivem em desespero. Deixe a luz da sua alegria e coragem brilhar através de todos os seus feitos.'),
(375, 'Juramento dos Anciões - Magias de Juramento', 'Você ganha magias de juramento nos níveis de paladino descritos.\r\n<br><br>\r\n<b>Nível de Paladino</b> | <b>Magias</b>\r\n<br><br>\r\n         3°       | golpe constritor, falar com animais\r\n<br>\r\n         5°       | raio lunar, passo nebuloso\r\n<br>\r\n         9°       | ampliar plantas, proteção contra energia\r\n<br>\r\n        13°       | tempestade de gelo, pele de pedra\r\n<br>\r\n        17°       | comunhão com a natureza, caminhar em árvores'),
(376, 'Juramento dos Anciões - Canalizar Divindade', 'Quando você faz esse juramento, no 3° nível, você ganha as duas opções seguintes de Canalizar Divindade.\r\n<br><br>\r\n<b>Fúria da Natureza.</b> Você pode usar seu Canalizar Divindade para invocar forças primitivas para enredar um oponente. Com uma ação, você pode fazer com que vinhas espectrais cresçam e alcancem uma criatura a até 3 metros de você, que você possa ver. A criatura deve ser bem sucedida num teste de resistência de Força ou Destreza (a escolha dela) ou ficará impedida. Enquanto estiver impedida pelas vinhas, a criatura repete o teste de resistência no final de cada turno dela. Se obtiver sucesso, ela se liberta e as vinhas desaparecem.\r\n<br><br>\r\n<b>Expulsar os Infiéis.</b> Você pode usar seu Canalizar Divindade para pronunciar palavras antigas que são dolorosas para fadas e corruptores que as ouvem. Com uma ação, você ergue seu símbolo sagrado e cada fada ou corruptor que puder ver ou ouvir você e esteja a até 9 metros, deve realizar um teste de resistência de Sabedoria. Se a criatura falhar no teste de resistência, ela será expulsa por 1 minuto ou até sofrer dano.\r\n<br>\r\nUma criatura expulsa deve gastar seu turno tentando se mover para longe de você da melhor forma possível e não pode, voluntariamente, se mover para um espaço a menos de 9 metros de você. Ela também não pode realizar reações. Nas ações delas, elas só poderão realizar a ação de Disparada ou tentar escapar de um efeito que as impeça de se mover. Se não houver lugar para se mover, a criatura pode usar a ação de Esquivar.'),
(377, 'Juramento dos Anciões - Aura de Vigilância', 'A partir do 7° nível, a magia antiga fica tão profunda em você que ela forma uma proteção mística. Você e as criaturas amistosas a até 3 metros tem resistência ao dano de magias.\r\n<br>\r\nNo 18° nível, o alcance dessa aura aumenta para 9 metros.'),
(378, 'Juramento dos Anciões - Sentinela Imortal', 'A partir do 15° nível, quando você for reduzido a 0 pontos de vida, mas não morrer totalmente, você pode escolher cair para 1 ponto de vida no lugar. Uma vez que você use essa característica, não poderá fazê-lo novamente até ter terminado um descanso longo.\r\n<br>\r\nAlém disso, você não sofre nenhum efeito colateral por envelhecer e você não pode envelhecer magicamente.'),
(379, 'Juramento dos Anciões - Campeão dos Anciões', 'No 20° nível, você pode assumir a forma de uma antiga força da natureza, tomando a aparência que desejar. Por exemplo, sua pele poderia ficar verde ou adquirir uma textura de casca de árvore, seu cabelo poderia ficar com aparência de folhas ou musgo ou poderia crescer galhadas ou uma juba como a de um leão.\r\n<br>\r\nUsando sua ação, você sofre uma transformação. Por 1 minuto, você ganha os seguintes benefícios:\r\n<br><br>\r\n<b>-</b> No início de cada um dos seus turnos, você recupera 10 pontos de vida.\r\n<br>\r\n<b>-</b> Sempre que você for conjurar uma magia de paladino que tiver um tempo de conjuração de 1 ação, você pode conjurá-la usando uma ação bônus, ao invés.\r\n<br>\r\n<b>-</b> Criaturas inimigas a até 3 metros de você tem desvantagem em testes de resistência contra suas magias de paladino e as opções de Canalizar Divindade.\r\n<br><br>\r\nUma vez que você use essa característica, não poderá fazê-lo novamente até ter terminado um descanso longo.'),
(380, 'Juramento de Vingança', 'O Juramento de Vingança é um comprometimento solene de punir aqueles que cometeram pecados graves. Quando forças malignas chacinam camponeses indefesos, quando todo um povo se volta contra a vontade dos deuses, quando uma guilda de ladrões cresce e se torna violenta e poderosa, quando um dragão investe através da zona rural – em momentos como esses, paladinos surgem e fazem o Juramento de Vingança para tornar certo o que já foi errado. Para esses paladinos – algumas vezes chamados de vingadores ou de cavaleiros negros – sua própria pureza não é tão importante quando trazer justiça.'),
(381, 'Juramento de Vingança - Dogmas de Vingança', 'Os dogmas do Juramento de Vingança variam de paladino para paladino, mas todos os dogmas giram em torno de punir malfeitores a qualquer custo. Paladinos que defendem esses dogmas estão dispostos a sacrificar, até mesmo sua própria integridade para fazer justiça sobre aqueles que praticaram o mal, de modo que, muitas vezes, os paladinos são neutros ou leais e neutros em alinhamento. Os princípios fundamentais dos dogmas são brutalmente simples.\r\n<br><br>\r\n<b>Combater o Mal Maior.</b> Entre escolher lutar contra meus inimigos jurados ou combater um mal menor. Eu escolho o mal maior.\r\n<br><br>\r\n<b>Sem Misericórdia para os Malignos.</b> Inimigos comuns podem ter minha misericórdia, mas meus inimigos jurados não.\r\n<br><br>\r\n<b>A Todo Custo.</b> Meus escrúpulos não podem ficar no caminho do extermínio dos meus inimigos.\r\n<br><br>\r\n<b>Restituição.</b> Se meus inimigos causaram ruina no mundo, é porque eu falhei em detê-los. Devo ajudar aqueles prejudicados pelos delitos.'),
(382, 'Juramento de Vingança - Magias de Juramento', 'Você ganha magias de juramento nos níveis de paladino descritos.\r\n<br><br>\r\n<b>Nível de Paladino</b> | <b>Magias</b>\r\n<br><br>\r\n        3°        | perdição, marca do caçador\r\n<br>\r\n        5°        | imobilizar pessoa, passo nebuloso\r\n<br>\r\n        9°        | velocidade, proteção contra energia\r\n<br>\r\n       13°        | banimento, porta dimensional\r\n<br>\r\n       17°        | imobilizar monstro, vidência'),
(383, 'Juramento de Vingança - Canalizar Divindade', 'Quando você faz esse juramento, no 3° nível, você ganha as duas opções seguintes de Canalizar Divindade.\r\n<br><br>\r\n<b>Abjurar Inimigo.</b> Com uma ação, você ergue seu símbolo sagrado e faz uma prece de condenação, usando seu Canalizar Divindade. Escolha uma criatura a até 18 metros de você que você possa ver. A criatura deve realizar um teste de resistência de Sabedoria, a não ser que seja imune a ser amedrontada. Corruptores e mortos-vivos tem desvantagem nesse teste de resistência.\r\n<br>\r\nNum fracasso no teste de resistência, a criatura ficará amedrontada por 1 minuto ou até sofrer qualquer dano. Enquanto estiver amedrontada, o deslocamento da criatura será 0 e ela não pode receber qualquer bônus de deslocamento.\r\n<br>\r\nEm um sucesso, o deslocamento da criatura é reduzido à metade por 1 minuto ou até que ela sofra qualquer dano.\r\n<br><br>\r\n<b>Voto de Inimizade.</b> Com uma ação bônus, você pode pronunciar um voto de inimizade contra uma criatura que você possa ver a até 3 metros, usando seu Canalizar Divindade. Você ganha vantagem nas jogadas de ataque contra a criatura por 1 minuto ou até ela cair a 0 pontos de vida ou cair inconsciente.'),
(384, 'Juramento de Vingança - Vingador Implacável', 'No 7° nível, seu foco sobrenatural ajuda você a impedir a fuga de um inimigo. Quando você atinge uma criatura com um ataque de oportunidade, você pode se mover até metade do seu deslocamento, imediatamente depois do ataque e como parte da mesma reação. Esse movimento não provoca ataques de oportunidade.'),
(385, 'Juramento de Vingança - Alma de Vingança', 'A partir do 15° nível, a autoridade com a qual você fala seu Voto de Inimizade lhe dá maior poder sobre seu inimigo. Quando uma criatura sob efeito do seu Voto de Inimizade realizar um ataque, você pode usar sua reação para realizar um ataque corpo-a-corpo com arma contra essa criatura, se ela estiver ao seu alcance.'),
(386, 'Juramento de Vingança - Anjo Vingador', 'No 20° nível, você pode assumir a forma de um anjo vingador. Usando sua ação, você sofre uma transformação. Por 1 hora, você ganha os seguintes benefícios:\r\n<br><br>\r\n<b>-</b> Asas crescem nas suas costas e lhe concedem deslocamento de voo de 18 metros.\r\n<br>\r\n<b>-</b> Você emana uma aura de ameaça num raio de 9 metros. A primeira vez que qualquer criatura inimiga entrar na aura ou começar seu turno nela, durante uma batalha, a criatura deve ser bem sucedida num teste de resistência de Sabedoria ou ficará amedrontada em relação a você por 1 minuto ou até sofrer qualquer dano. Jogadas de ataque contra a criatura amedrontada tem vantagem.\r\n<br><br>\r\nUma vez que você use essa característica, não poderá fazê-lo novamente até ter terminado um descanso longo.'),
(387, 'Inimigo Favorito', 'A partir do 1° nível, você tem experiência significativa estudando, rastreando, caçando e, até mesmo, falando com certos tipos de inimigos.\r\n<br>\r\nEscolha um tipo de inimigo favorito: bestas, fadas, humanoide, monstruosidades ou mortos-vivos. Você recebe um bônus de +2 nas jogadas de dano com ataques com arma contra criaturas do tipo escolhido. Além disso, você tem vantagem em testes de Sabedoria (Sobrevivência) para rastrear seus inimigos favoritos, assim como em testes de Inteligência para lembrar informações sobre eles. \r\n<br>\r\nQuando você adquire essa característica, você também aprende um idioma, à sua escolha, que seja falado pelos seus inimigos favoritos, se eles falarem algum.'),
(388, 'Explorador Natural', 'Você é um mestre na navegação pelo mundo natural e você reage de forma rápida e decisiva quando é atacado. Isso fornece a você os seguintes benefícios:\r\n<br><br>\r\n<b>-</b> Você ignora terreno difícil.\r\n<br>\r\n<b>-</b> Você tem vantagem em rolagens de iniciativa.\r\n<br>\r\n<b>-</b> No seu primeiro turno de combate, você tem vantagem nas jogadas de ataque contra criaturas que ainda não tenham agido.\r\n<br><br>\r\nAlém disso, você é perito em navegar pelo ambiente selvagem. Você ganha os seguintes benefícios quando estiver viajando por uma hora ou mais:\r\n<br><br>\r\n<b>-</b> Terreno difícil não atrasa a viagem do seu grupo.\r\n<br>\r\n<b>-</b> Seu grupo não pode se perder, exceto por meios\r\nmágicos.\r\n<br>\r\n<b>-</b> Mesmo quando você está engajado em outra atividade além de viajar (como forragear, navegar ou rastrear), você permanece alerta ao perigo.\r\n<br>\r\n<b>-</b> Se você estiver viajando sozinho, você pode se mover furtivamente com um ritmo de viagem normal.\r\n<br>\r\n<b>-</b> Quando você forrageia, você encontra o dobro de comida que normalmente encontraria.\r\n<br>\r\n<b>-</b> Enquanto estiver rastreando outras criaturas, você também descobre o número exato delas, seus tamanhos e há quanto tempo elas passaram pela área.'),
(389, 'Estilo de Luta - Patrulheiro', 'No 2° nível, você adota um estilo de combate particular que será sua especialidade. Escolha uma das opções a seguir. Você não pode escolher o mesmo Estilo de Combate mais de uma vez, mesmo se puder escolher de novo.'),
(390, 'Conclave de Patrulheiro', 'No 3° nível, você escolhe emular os ideais de treinamento de um conclave de patrulheiro: o Conclave da Besta, o Conclave do Caçador ou o Conclave do Rastreador Subterrâneo, todos detalhados no final da descrição da classe. Sua escolha lhe concede características no 3° nível e novamente no 5°, 7°, 11° e 15° nível.'),
(391, 'Consciência Primitiva', 'A partir do 3° nível, sua maestria do conhecimento de patrulheiro permite que você estabeleça um poderoso elo com bestas e com a terra ao seu redor.\r\n<br>\r\nVocê possui uma habilidade inata de se comunicar com bestas e elas consideram você como um espírito semelhante. Através de sons e gestos, você pode comunicar ideias simples a bestas como uma ação e pode compreender seu ânimo e intenção básicos. Você aprende o estado emocional dela, suas necessidades imediatas (como comida e abrigo) e ações que você pode tomar (se aplicável) para persuadi-la a não atacar.\r\n<br>\r\nVocê não pode usar essa habilidade contra uma criatura que você tenha atacado nos últimos 10 minutos.\r\n<br>\r\nAlém disso, você pode sintonizar seus sentidos para determinar se algum dos seus inimigos favoritos está espreitando nas redondezas. Ao passar 1 minuto ininterrupto em concentração (como se estivesse se concentrando em uma magia), você pode sentir se algum dos seus inimigos favoritos está presente a até 8 quilometros de você. Essa característica revela qual dos seus inimigos favoritos está presente, a quantidade deles e a direção e distância aproximadas dessas criaturas (em quilometros) de você.\r\n<br>\r\nSe houverem múltiplos grupos de seus inimigos favoritos no alcance, você descobre essas informações de cada grupo.'),
(392, 'Inimigo Favorito Maior', 'A partir do 6° nível, você está pronto para caçar mesmo as presas mais mortais. Escolha um tipo de inimigo favorito maior: aberrações, celestiais, constructos, corruptores, dragões, elementais ou gigantes. Você ganha todos os benefícios contra o inimigo escolhido que você normalmente ganha contra seu inimigo favorito, além do idioma adicional. Seu bônus nas jogadas de dano contra todos os seus inimigos favoritos aumenta para +4.\r\n<br>\r\nAlém disso, você tem vantagem em testes de resistência contra magias e habilidades usadas por um inimigo favorito maior.'),
(393, 'Pés Rápidos', 'Começando no 8° nível, você pode usar a ação de Disparada como uma ação bônus no seu turno.'),
(394, 'Mimetismo', 'A partir do 10° nível, você pode permanecer perfeitamente imóvel por longos períodos de tempo para preparar uma emboscada.\r\n<br>\r\nQuando você tentar se esconder no seu turno, você pode optar por não se mover nesse turno. Se você evitar se mover, criaturas que tentarem detectar você sofrem –10 de penalidade em testes de Sabedoria (Percepção) até o começo do seu próximo turno. Você perde esse benefício caso se mova ou caia no chão, voluntariamente ou por um efeito externo. Você ainda será automaticamente detectado caso algum efeito ou ação faça com que você não esteja mais escondido.\r\n<br>\r\nSe você ainda estiver escondido no seu turno, você pode continuar imóvel e ganhar esse benefício até ser detectado.'),
(395, 'Desaparecer', 'Começando no 14° nível, você pode usar a ação de Esconder, com uma ação bônus, no seu turno. Além disso, você não pode ser rastreado por meios não-mágicos, a não ser que você decida deixar um rastro.'),
(396, 'Sentidos Selvagens', 'No 18° nível, você ganha sentidos preternaturais que o ajudam a lutar contra criaturas que você não pode ver. Quando você atacar uma criatura que você não possa ver, sua incapacidade em vê-la não impõem desvantagem nas suas jogadas de ataque contra ela.\r\n<br>\r\nVocê também está ciente da localização de qualquer criatura invisível a até 9 metros de você, considerando que a criatura não esteja se escondendo de você e você não esteja cego ou surdo.'),
(397, 'Matador de Inimigos', 'No 20° nível, você se torna um caçador incomparável. Uma vez em cada um dos seus turnos, você pode adicionar seu modificador de Sabedoria na jogada de ataque ou jogada de dano de um ataque que você fizer. Você pode escolher usar essa característica antes ou depois da rolagem, mas antes de qualquer efeito da jogada ser aplicado.'),
(398, 'Conclave da Besta', 'Muitos patrulheiros sentem-se mais a vontade no ambiente selvagem que na civilização, ao ponto de animais consideram-nos como semelhantes. Patrulheiros do Conclave da Besta desenvolvem um vínculo poderoso com uma besta, posteriormente fortalecendo esse vínculo com o uso de magia.'),
(399, 'Conclave da Besta - Companheiro Animal', 'No 3° nível, você aprende a usar sua magia para criar um poderoso vínculo com uma criatura do mundo natural.\r\n<br>\r\nCom 8 horas de trabalho e o gasto de 50 po em ervas raras e comida boa, você invoca um animal do ambiente selvagem para servir como um companheiro leal. Você geralmente escolhe seu companheiro dentre os seguintes animais: um arminho gigante, um javali, um gorila, um lobo, uma mula, uma pantera, um texugo gigante ou urso negro. Porém, seu Mestre pode escolher um desses animais para você baseado nos terrenos ao redor e em que tipos de criaturas logicamente poderiam estar presentes na área.\r\n<br>\r\nAo final das 8 horas, seu companheiro animal aparece e adquire todos os benefícios da sua habilidade Vínculo com o Companheiro. Você só pode ter um companheiro animal por vez.\r\n<br>\r\nSe o seu companheiro animal for morto, o vínculo mágico que vocês compartilham permite que você o traga de volta à vida. Com 8 horas de trabalho e o gasto de 25 po em ervas raras e comida boa, você pode invocar o espírito do seu companheiro e usar sua mágica para criar um novo corpo para ele. Você pode trazer um companheiro animal de volta à vida dessa forma mesmo que você não possua qualquer parte do corpo dele.\r\n<br>\r\nSe você usar essa habilidade para trazer um companheiro animal antigo de volta à vida enquanto você já tiver outro companheiro animal, seu companheiro\r\nanimal atual abandona você e é substituido pelo companheiro animal ressuscitado.'),
(400, 'Conclave da Besta - Vínculo com Companheiro', 'Seu companheiro animal ganha uma variedade de benefícios enquanto estiver vinculado a você.\r\n<br>\r\nO companheiro animal perde a ação Ataques Múltiplos, caso ele possua.\r\n<br>\r\nO companheiro obedece seus comandos da melhor forma possível. Ele rola iniciativa como qualquer outra criatura, mas você determina suas ações, decisões, atitudes e afins. Se você estiver incapacitado ou ausente, seu companheiro age por conta própria.\r\n<br>\r\nQuando estiver usando sua característica Explorador Natural, você e seu companheiro animal podem se mover furtivamente com ritmo normal.\r\n<br>\r\nSeu companheiro animal tem habilidades e estatísticas de jogo em parte determinadas pelo seu nível. Seu companheiro usa seu bônus de proficiência ao invés do próprio. Além das áreas onde ele normalmente aplicaria o bônus de proficiência dele, um companheiro animal também adiciona o bônus de proficiência a CA e jogadas de dano dele.\r\n<br>\r\nSeu companheiro animal ganha proficiência em duas perícias de sua escolha. Ele também se torna proficiente em todos os testes de resistência.\r\n<br>\r\nPara cada nível que você adquirir após o 3°, seu companheiro animal ganha um dado de vida adicional e aumenta os pontos de vida dele apropriadamente.\r\n<br>\r\nSempre que você ganhar a característica de classe Incremento no Valor de Habilidade, as habilidades do seu companheiro também aumentam. Seu companheiro pode aumentar um valor de habilidade de sua escolha em 2, ou ele pode aumentar dois valores de habilidade de sua escolha em 1. Como normalmente, seu companheiro não pode aumentar um valor de habilidade acima de 20 usando essa característica a não ser que sua descrição diga o contrário.\r\n<br>\r\nSeu companheiro partilha de sua tendência e possui um traço de personalidade e um defeito das tabelas abaixo. Seu companheiro partilha do seu ideal e o vínculo dele sempre é “O patrulheiro que viaja comigo é um companheiro adorado por quem eu daria minha vida de bom grado.”\r\n<br>\r\nSeu companheiro animal ganha os benefícios da sua característica Inimigo Favorito e Inimigo Favorito Maior, quando você ganha essa característica no 6° nível. Ele usa o inimigo favorito escolhido por você para essas características.'),
(401, 'Conclave da Besta - Ataque Coordenado', 'A partir do 5° nível, você e seu companheiro animal formam um time de luta mais poderoso. Quando você usar a ação de Ataque no seu turno, se o seu companheiro puder ver você, ele pode usar a reação dele para realizar um ataque corpo-a-corpo.'),
(402, 'Conclave da Besta - Defesa da Besta', 'No 7° nível, enquanto seu companheiro puder ver você, ele tem vantagem em todos os testes de resistência.'),
(403, 'Conclave da Besta - Tempestade de Garras e Presas', 'A partir do 11° nível, seu companheiro pode usar a ação dele para realizar um ataques corpo-a-corpo contra cada criatura, a escolha dele, a até 1,5 metro dele, com uma jogada de ataque separada para cada alvo.'),
(404, 'Conclave da Besta - Defesa da Besta Superior', 'A partir do 15° nível, sempre que um atacante que seu companheiro puder ver atingi-lo com um ataque, ele pode usar a reação dele para reduzir o dano desse ataque à metade.'),
(405, 'Conclave do Caçador', 'Alguns patrulheiros buscam dominar armas para proteger melhor a civilização dos terrores do ambiente selvagem. Membros do Conclave do Caçador aprendem técnicas especializadas de luta usadas contra as mais terríveis ameaças, desde ogros enfurecidos e hordas de orcs até enormes gigantes e dragões aterradores.'),
(406, 'Conclave do Caçador - Presa do Caçador', 'No 3° nível, você ganha uma das seguintes\r\ncaracterísticas, à sua escolha.\r\n<br><br>\r\n<b>Assassino de Colossos.</b> Sua tenacidade pode\r\nderrubar os mais poderosos oponentes. Quando você\r\natinge uma criatura com um ataque com arma, a criatura\r\nsofre 1d8 de dano extra, se ela estiver abaixo do máximo\r\nde pontos de vida dela. Você só pode causar esse dano\r\nextra uma vez por turno.\r\n<br><br>\r\n<b>Matador de Gigantes.</b> Quando uma criatura Grande\r\nou maior a até 1,5 metro de você atingir ou errar um\r\nataque contra você, você pode usar sua reação para atacar\r\na criatura, imediatamente após o ataque dela,\r\nconsiderando que você possa ver a criatura.\r\n<br><br>\r\n<b>Destruidor de Hordas.</b> Uma vez em cada um dos\r\nseus turnos, quando você fizer um ataque com arma, você\r\npode realizar outro ataque com a mesma arma contra\r\numa criatura diferente que esteja a até 1,5 metro do alvo\r\noriginal e esteja no alcance da sua arma.'),
(407, 'Conjuração - Bardo', 'Você aprendeu a desembaraçar e remodelar o decido da realidade em harmonia com os seus desejos e música. Suas magias são parte do seu vasto repertório, magia que você pode entoar em diferentes situações. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de bardo.');
INSERT INTO `habilidade_classe` (`hab_class_cod`, `hab_class_nome`, `hab_class_desc`) VALUES
(408, 'Conjuração - Bardo: Truques', 'Você conhece dois truques, à sua escolha da lista de magias de bardo. Você aprende truques de bardo adicionais, à sua escolha em níveis mais altos, como mostrado na coluna Truques Conhecidos da tabela O Bardo.'),
(409, 'Conjuração - Bardo: Espaços de Magia', 'A tabela O Bardo mostra quantos espaços de magia de 1° nível e superiores você possui disponíveis para conjuração. Para conjurar uma dessas magias, você deve gastar uma espaço de magia do nível da magia ou superior. Você recobra todos os espaços de magia gastos quando você completa um descanso longo.\r\nPor exemplo, se você quiser conjurar a magia de 1° nível curar ferimentos e você tiver um espaço de magia de 1° nível e um de 2° nível disponíveis, você poderá conjurar curar ferimentos usando qualquer dos dois espaços.'),
(410, 'Conjuração - Bardo: Magias Conhecidas de 1° Nível e Superiores', 'Você conhece quatro magias de 1° nível, à sua escolha, da lista de magias de bardo.\r\nA coluna Magias Conhecidas na tabela O Bardo mostra quando você aprende mais magias de bardo, à sua escolha. Cada uma dessas magias deve ser de um nível a que você tenha acesso, como mostrado na tabela. Por exemplo, quando você alcança o 3° nível da classe, você pode aprender uma nova magia de 1° ou 2° nível.\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de bardo que você conheça e substituí-la por outra magia da lista de magias de bardo, que também deve ser de um nível ao qual você tenha espaços de magia.'),
(411, 'Conjuração - Bardo: Habilidade de Conjuração', 'Sua habilidade de conjuração é Carisma para suas magias de bardo, portanto, você usa seu Carisma sempre que alguma magia se referir à sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Carisma para definir a CD dos testes de resistência para as magias de bardo que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Carisma\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Carisma'),
(412, 'Conjuração - Bardo: Conjuração de Ritual', 'Você pode conjurar qualquer magia de bardo que você conheça como um ritual se ela possuir o descritor ritual.'),
(413, 'Conjuração - Bardo: Foco de Conjuração', 'Você pode usar um instrumento musical (encontrado no capítulo 5) como foco de conjuração das suas magias de bardo.'),
(414, 'Magia de Pacto', 'Sua pesquisa arcana e a magia outorgada a você por seu patrono, lhe concedem uma gama de magias. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de bruxo.'),
(415, 'Magia de Pacto - Truques', 'Você conhece dois truques, à sua escolha, da lista de magias de bruxo. Você aprende truques de bruxo adicionais, à sua escolha, em níveis mais altos, como mostrado na coluna Truques Conhecidos da tabela O Bruxo.'),
(416, 'Magia de Pacto - Espaços de Magia', 'A tabela O Bruxo mostra quantos espaços de magia você possui. A tabela também mostra qual o nível desses espaços; todos os seus espaços de magia são do mesmo nível. Para conjurar uma magia de bruxo de 1° nível ou superior, você deve gastar uma espaço de magia. Você recobra todos os espaços de magia gastos quando você completa um descanso curto ou longo. \r\nPor exemplo, quando você atingir o 5° nível, você terá dois espaços de magia de 3° nível. Para conjurar a magia de 1° nível onda trovejante, você deve gastar um desses espaços e você a conjura como uma magia de 3° nível.'),
(417, 'Magia de Pacto - Magias Conhecidas de 1° Nível e Superiores', 'No 1° nível, você conhece duas magias de 1° nível, à sua escolha da lista de magias de bruxo.\r\nA coluna Magias Conhecidas na tabela O Bruxo mostra quando você aprende mais magias de bruxo, à sua escolha, de 1° nível ou superior. Cada uma dessas magias deve ser de um nível a que você tenha acesso, como mostrado na tabela na coluna de Nível de Magia para o seu nível. Quando você alcança o 6° nível, por exemplo, você aprende uma nova magia de bruxo, que pode ser de 1°, 2° ou 3° nível.\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de bruxo que você conheça e substituí-la por outra magia da lista de magias de bruxo, que também deve ser de um nível ao qual você tenha espaços de magia.'),
(418, 'Magia de Pacto - Habilidade de Conjuração', 'Sua habilidade de conjuração é Carisma para suas magias de bruxo, portanto, você usa seu Carisma sempre que alguma magia se referir à sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Carisma para definir a CD dos testes de resistência para as magias de bruxo que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Carisma\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Carisma'),
(419, 'Magia de Pacto - Foco de Conjuração', 'Você pode usar um foco arcano (encontrado no capítulo 5) como foco de conjuração das suas magias de bruxo.'),
(420, 'Conjuração - Clérigo', 'Como um canalizador de poder divino, você pode conjurar magias de clérigo. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de clérigo.'),
(421, 'Conjuração - Clérigo: Truques', 'Você conhece três truques, à sua escolha, da lista de magias de clérigo. Você aprende truques de clérigo adicionais, à sua escolha, em níveis mais altos, como mostrado na coluna Truques Conhecidos da tabela O Clérigo.'),
(422, 'Conjuração - Clérigo: Preparando e Conjurando Magias', 'A tabela O Clérigo mostra quantos espaços de magia você têm para conjurar suas magias de 1º nível e superiores. Para conjurar uma dessas magias, você precisa gastar um espaço do nível da magia ou superior. Você recupera todos os espaços gastos quando termina um descanso longo.\r\n<br>\r\nVocê prepara a lista de magias disponíveis selecionando-as da lista de magias de clérigo. Você seleciona um número de magias igual ao seu modificador de Sabedoria + seu nível de clérigo (mínimo de uma magia). Essas magias devem ser de níveis que você possua espaços de magia.\r\n<br>\r\nPor exemplo, se você é um clérigo de 3º nível, você possui quatro espaços de magia de 1º nível e dois de 2º nível. Com Sabedoria 16, sua lista de magias preparadas pode incluir 6 magias, combinando as de 1º e 2º nível em qualquer ordem. Se você preparar a magia de 1º nível curar ferimentos, você pode conjurá-la com um espaço de magia de 1º ou de 2º nível. Ao conjurar a magia, você não a retira de sua lista de magias preparadas, podendo conjurá-la de novo se tiver espaços de magia disponíveis.\r\n<br>\r\nVocê pode modificar a sua lista de magias preparadas quando termina um descanso longo. Preparar uma nova lista de magias de clérigo requer tempo gasto em preces e meditação: no mínimo 1 minuto por nível de magia para cada magia preparada.'),
(423, 'Conjuração - Clérigo: Habilidade de Conjuração', 'Sabedoria é a sua habilidade para você conjurar suas magias de clérigo. O poder de suas magias vem da devoção que você tem ao seu deus. Você usa sua Sabedoria sempre que alguma magia se referir a sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Sabedoria para definir a CD dos testes de resistência para as magias de clérigo que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Sabedoria\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Sabedoria'),
(424, 'Conjuração - Clérigo: Conjuração de Ritual', 'Você pode conjurar qualquer magia de clérigo que você conheça como um ritual se ela possuir o descritor ritual.'),
(425, 'Conjuração - Clérigo: Foco de Conjuração', 'Você pode usar um símbolo sagrado (encontrado no capítulo 5) como foco de conjuração das suas magias de clérigo.'),
(426, 'Conjuração - Druida', 'Baseado na essência divina da própria natureza, você pode conjurar magias para moldar sua essência a sua vontade. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de druida.'),
(427, 'Conjuração - Druida: Truques', 'Você conhece dois truques, à sua escolha, da lista de magias de druida. Você aprende truques de druida adicionais, à sua escolha, em níveis mais altos, como mostrado na coluna Truques Conhecidos da tabela O Druida.'),
(428, 'Conjuração - Druida: Preparando e Conjurando Magias', 'A tabela O Druida mostra quantos espaços de magia você têm para conjurar suas magias de 1º nível e superiores. Para conjurar uma dessas magias, você precisa gastar um espaço do nível da magia ou superior. Você recupera todos os espaços gastos quando termina um descanso longo.\r\n<br>\r\nVocê prepara a lista de magias disponíveis selecionando-as da lista de magias de Druida. Você seleciona um número de magias igual ao seu modificador de Sabedoria + seu nível de druida (mínimo de uma magia). Essas magias devem ser de níveis que você possua espaços de magia.\r\n<br>\r\nPor exemplo, se você é um druida de 3º nível, você possui quatro espaços de magia de 1º nível e dois de 2º nível. Com Sabedoria 16, sua lista de magias preparadas pode incluir 6 magias, combinando as de 1º e 2º nível em qualquer ordem. Se você preparar a magia de 1º nível curar ferimentos, você pode conjurá-la com um espaço de magia de 1º ou de 2º nível. Ao conjurar a magia, você não a retira de sua lista de magias preparadas, podendo conjurá-la de novo se tiver espaços de magia disponíveis.\r\n<br>\r\nVocê pode modificar a sua lista de magias preparadas quando termina um descanso longo. Preparar uma nova lista de magias de druida requer tempo gasto em preces e meditação: no mínimo 1 minuto por nível de magia para cada magia preparada.'),
(429, 'Conjuração - Druida: Habilidade de Conjuração', 'Sabedoria é a sua habilidade para você conjurar suas magias de druida, já que sua magia vem da sua devoção e sintonia com a natureza. Você usa sua Sabedoria sempre que alguma magia se referir a sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Sabedoria para definir a CD dos testes de resistência para as magias de druida que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Sabedoria\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Sabedoria'),
(430, 'Conjuração - Druida: Conjuração de Ritual', 'Você pode conjurar qualquer magia de druida que você conheça como um ritual se ela possuir o descritor ritual.'),
(431, 'Conjuração - Druida: Foco de Conjuração', 'Você pode usar um foco druídico (encontrado no capítulo 5) como foco de conjuração das suas magias de druida.'),
(432, 'Conjuração - Feiticeiro', 'Um evento do seu passado ou na vida de um parente ou ancestral, deixou uma marca indelével em você, infundindo você com magia arcana. A fonte desse poder, independente da sua origem, flui em suas magias. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de feiticeiro.'),
(433, 'Conjuração - Feiticeiro: Truques', 'Você conhece quatro truques, à sua escolha, da lista de magias de feiticeiro. Você aprende truques de feiticeiro adicionais, à sua escolha, em níveis mais altos, como mostrado na coluna Truques Conhecidos da tabela O Feiticeiro.'),
(434, 'Conjuração - Feiticeiro: Espaços de Magia', 'A tabela O Feiticeiro mostra quantos espaços de magia de 1° nível e superiores você possui disponíveis para conjuração. Para conjurar uma dessas magias, você deve gastar uma espaço de magia do nível da magia ou superior. Você recobra todos os espaços de magia gastos quando você completa um descanso longo.\r\nPor exemplo, se você quiser conjurar a magia de 1° nível mãos flamejantes e você tiver um espaço de magia de 1° nível e um de 2° nível disponíveis, você poderá conjurar mãos flamejantes usando qualquer dos dois espaços.'),
(435, 'Conjuração - Feiticeiro: Magias Conhecidas de 1º Nível e Superiores', 'Você conhece duas magias de 1° nível, à sua escolha, da lista de magias de feiticeiro.<br>\r\nA coluna Magias Conhecidas na tabela O Feiticeiro mostra quando você aprende mais magias de feiticeiro, à sua escolha. Cada uma dessas magias deve ser de um nível a que você tenha acesso, como mostrado na tabela. Por exemplo, quando você alcança o 3° nível da classe, você pode aprender uma nova magia de 1° ou 2° nível.<br>\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de feiticeiro que você conheça e substituí-la por outra magia da lista de magias de feiticeiro, que também deve ser de um nível ao qual você tenha espaços de magia.'),
(436, 'Conjuração - Feiticeiro: Habilidade de Conjuração', 'Carisma é a sua habilidade de conjuração para suas magias de feiticeiro, já que o poder da sua magia depende da sua capacidade de projetar sua vontade no mundo. Use seu Carisma sempre que alguma magia se referir à sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Carisma para definir a CD dos testes de resistência para as magias de feiticeiro que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Carisma\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Carisma'),
(437, 'Conjuração - Feiticeiro: Foco de Conjuração', 'Você pode usar um foco arcano (encontrado no capítulo 5) como foco de conjuração das suas magias de feiticeiro.'),
(438, 'Conjuração - Cavaleiro Arcano', 'Quando você alcançar o 3° nível, você amplia o seu poderio marcial com a habilidade de conjurar magias.\r\nVeja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de mago.'),
(439, 'Conjuração - Cavaleiro Arcano: Truques', 'Você aprende dois truques, à sua escolha, da lista de magias de mago. Você aprende um truque de mago adicional, à sua escolha, no 10° nível.'),
(440, 'Conjuração - Cavaleiro Arcano: Espaços de Magia', 'A tabela Conjuração de Cavaleiro Arcano mostra quantos espaços de magia de 1° nível e superiores você possui disponíveis para conjuração. Para conjurar uma dessas magias, você deve gastar um espaço de magia do nível da magia ou superior. Você recobra todos os espaços de magia gastos quando você completa um descanso longo.\r\n<br>\r\nPor exemplo, se você quiser conjurar a magia de 1° nível escudo arcano e você tiver um espaço de magia de 1° nível e um de 2° nível disponíveis, você poderá conjurar escudo arcano usando qualquer dos dois espaços.'),
(441, 'Conjuração - Cavaleiro Arcano: Magias Conhecidas de 1º Nível e Superiores', 'Você conhece três magias de 1° nível, à sua escolha, as quais duas delas você deve escolher das magias de abjuração e evocação da lista de magias de mago.\r\n<br>\r\nA coluna Magias Conhecidas na tabela Conjuração do Cavaleiro Arcano mostra quando você aprende mais magias de mago, de 1° nível ou superior. Cada uma dessas magias deve ser uma magia de abjuração ou evocação, à sua escolha, de um nível a que você tenha acesso, como mostrado na tabela. Por exemplo, quando você alcança o 7° nível da classe, você pode aprender uma nova magia de 1° ou 2° nível.\r\n<br>\r\nAs magias que você aprende no 8°, 14° e 20° nível podem vir de qualquer escola de magia.\r\n<br>\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de mago que você conheça e substituí-la por outra magia da lista de magias de mago, que também deve ser de um nível ao qual você tenha espaços de magia e deve ser uma magia de abjuração ou evocação, a não ser que você esteja substituindo a magia que você ganhou no 3°, 8°, 14° ou 20º nível de qualquer escola de magia.'),
(442, 'Conjuração - Cavaleiro Arcano: Habilidade de Conjuração', 'Sua habilidade de conjuração é Inteligência para suas magias de mago, portanto, você usa sua Inteligência sempre que alguma magia se referir à sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Inteligência para definir a CD dos testes de resistência para as magias de mago que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Inteligência\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Inteligência'),
(443, 'Conjuração - Trapaceiro Arcano', 'Quando você alcançar o 3° nível, você adquire a habilidade de conjurar magias. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de mago.\r\n\r\n'),
(444, 'Conjuração - Trapaceiro Arcano: Truques', 'Você aprende três truques: mãos mágicas e outros dois truques, à sua escolha, da lista de magias de mago. Você aprende um truque de mago adicional, à sua escolha, no 10° nível.'),
(445, 'Conjuração - Trapaceiro Arcano: Espaços de Magia', 'A tabela Conjuração de Trapaceiro Arcano mostra quantos espaços de magia de 1° nível e superiores você possui disponíveis para conjuração. Para conjurar uma dessas magias, você deve gastar uma espaço de magia do nível da magia ou superior. Você recobra todos os espaços de magia gastos quando você completa um descanso longo.\r\n<br>\r\nPor exemplo, se você quiser conjurar a magia de 1° nível enfeitiçar pessoa e você tiver um espaço de magia de 1° nível e um de 2° nível disponíveis, você poderá conjurar enfeitiçar pessoa usando qualquer dos dois espaços.'),
(446, 'Conjuração - Trapaceiro Arcano: Magias Conhecidas de 1º Nível e Superiores', 'Você conhece três magias de 1° nível, à sua escolha, as quais duas delas você deve escolher das magias de encantamento e ilusão da lista de magias de mago.\r\n<br>\r\nA coluna Magias Conhecidas na tabela Conjuração do Trapaceiro Arcano mostra quando você aprende mais magias de mago, de 1° nível ou superior. Cada uma dessas magias deve ser uma magia de encantamento ou ilusão, à sua escolha, de um nível a que você tenha acesso, como mostrado na tabela. Por exemplo, quando você alcança o 7° nível da classe, você pode aprender uma nova magia de 1° ou 2° nível.\r\n<br>\r\nAs magias que você aprende no 8°, 14° e 20° nível podem vir de qualquer escola de magia.\r\n<br>\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de mago que você conheça e substituí la por outra magia da lista de magias de mago, que também deve ser de um nível ao qual você tenha espaços de magia e deve ser uma magia de encantamento ou ilusão, exceto as magias substituídas no 8°, 14° e 20º nível.'),
(447, 'Conjuração - Trapaceiro Arcano: Habilidade de Conjuração', 'Sua habilidade de conjuração é Inteligência para suas magias de mago, portanto, você usa sua Inteligência sempre que alguma magia se referir à sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Inteligência para definir a CD dos testes de resistência para as magias de mago que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Inteligência\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Inteligência'),
(448, 'Conjuração - Mago', 'Como um estudante da magia arcana, você possui um livro de magias (ou grimório) que revela os primeiros vislumbres de seu verdadeiro poder. Consulte o capítulo 10 para as regras gerais sobre conjuração de magias e o capítulo 11 para conferir a lista de magias de mago.'),
(449, 'Conjuração - Mago: Truques', 'A partir do 1º nível, você conhece três truques à sua escolha da lista de magias de mago. Você aprende truques adicionais conforme avança de nível, como mostra a coluna Truques Conhecidos na tabela O Mago.\r\n\r\n'),
(450, 'Conjuração - Mago: Grimório', 'No 1º nível, você possui um grimório contendo seis magias de mago de 1º nível, à sua escolha. Um grimório não contém truques.'),
(451, 'Conjuração - Mago: Preparando e Conjurando Magias', 'A tabela O Mago mostra quantos espaços de magia você possui para conjurar suas magias de 1º nível e superiores. Para conjurar uma dessas magias, você precisa usar um espaço do nível da magia ou superior. Você recupera todos os espaços gastos quando termina um descanso longo.\r\n<br>\r\nVocê prepara a lista de magias de mago que estarão disponíveis para serem conjuradas. Para tanto, você escolhe um número de magias de mago de seu grimório igual ao seu modificador de Inteligência + seu nível de mago (mínimo de uma magia). As magias precisam ser de um nível que você tenha espaços de magia.\r\n<br>\r\nPor exemplo, se você é um mago de 3º nível, você possui 4 espaços de magia de 1º nível e 2 espaços de magia de 2º nível. Com Inteligência 16, sua lista de magias preparadas pode incluir seis magias de 1º e 2º nível de seu grimório, em qualquer combinação. Se você preparar a magia de 1º nível mísseis mágicos, você poderá conjurá-la utilizando um espaço de 1º ou 2º nível de magia. Conjurar a magia não a remove de sua lista de magias preparadas.\r\n<br>\r\nVocê pode mudar sua lista de magias preparadas quando terminar um descanso longo. Preparar uma nova lista de magias de mago requer que você gaste um tempo estudando seu grimório e memorizando as palavras e gestos, para efetivamente conjurar a magia: ao menos 1 minuto por nível de magia para cada magia da sua lista.'),
(452, 'Conjuração - Mago: Habilidade de Conjuração', 'Inteligência é a sua habilidade para você conjurar suas magias de mago, pois os magos aprendem novas magias através de estudo e memorização. Você usa sua Inteligência sempre que alguma magia se referir a sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Inteligência para definir a CD dos testes de resistência para as magias de mago que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Inteligência\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Inteligência'),
(453, 'Conjuração - Mago: Conjuração de Ritual', 'Você pode conjurar qualquer magia de mago como um ritual se ela possuir o descritor ritual, desde que a possua em seu grimório. Você não precisa ter essa magia preparada.'),
(454, 'Conjuração - Mago: Foco de Conjuração', 'Você pode usar um foco arcano (encontrado no capítulo 5) como foco de conjuração das suas magias de mago.'),
(455, 'Conjuração - Mago: Aprendendo Magias de 1º Nível ou Superior', 'A cada nível de mago adquirido, você pode adicionar duas magias de mago à sua escolha em seu grimório. Cada uma dessas magias deve ser de um nível que você possua espaços de magia, conforme mostra a tabela O Mago. Em suas aventuras, você pode encontrar outras magias e adicioná-las em seu grimório (consulte a caixa de texto \"O Seu Grimório\").'),
(456, 'Conjuração - Paladino', 'No 2° nível, você aprende a extrair magia divina através de meditação e oração para conjurar magias, como um clérigo faz. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de paladino.'),
(457, 'Conjuração - Paladino: Preparando e Conjurando Magias', 'A tabela O Paladino mostra quantos espaços de magia você têm para conjurar suas magias de 1º nível e superiores. Para conjurar uma dessas magias, você precisa gastar um espaço do nível da magia ou superior. Você recupera todos os espaços gastos quando termina um descanso longo.\r\n<br>\r\nVocê prepara a lista de magias disponíveis selecionando-as da lista de magias de paladino. Você seleciona um número de magias igual ao seu modificador de Carisma + metade do seu nível de paladino, arredondado para baixo (mínimo de uma magia). Essas magias devem ser de níveis que você possua espaços de magia.\r\n<br>\r\nPor exemplo, se você é um paladino de 5º nível, você possui quatro espaços de magia de 1º nível e dois de 2º nível. Com Carisma de 14, sua lista de magias preparadas pode incluir quatro magias, combinando as de 1º e 2º nível em qualquer ordem. Se você preparar a magia de 1º nível curar ferimentos, você pode conjurá-la com um espaço de magia de 1º ou de 2º nível. Ao conjurar a magia, você não a retira de sua lista de magias preparadas, podendo conjurá-la de novo se tiver espaços de magia disponíveis.\r\n<br>\r\nVocê pode modificar a sua lista de magias preparadas quando termina um descanso longo. Preparar uma nova lista de magias de paladino requer tempo gasto em preces e meditação: no mínimo 1 minuto por nível de magia para cada magia preparada.'),
(458, 'Conjuração - Paladino: Habilidade de Conjuração', 'Carisma é a sua habilidade para você conjurar suas magias de paladino, já que seu poder deriva da força das suas convicções. Você usa seu Carisma sempre que alguma magia se referir a sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Carisma para definir a CD dos testes de resistência para as magias de paladino que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Carisma\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Carisma'),
(459, 'Conjuração - Paladino: Foco de Conjuração', 'Você pode usar um símbolo sagrado (encontrado no capítulo 5) como foco de conjuração das suas magias de paladino.'),
(460, 'Conjuração - Patrulheiro', 'Quando você alcança o 2° nível, você aprende a usar a essência mágica da natureza para conjurar magias, como um druida faz. Veja o capítulo 10 para as regras gerais de conjuração e o capítulo 11 para a lista de magias de patrulheiro.'),
(461, 'Conjuração - Patrulheiro: Espaços de Magia', 'A tabela O Patrulheiro mostra quantos espaços de magia você tem para conjurar suas magias de 1° nível e superiores. Para conjurar uma dessas magias, você deve gastar uma espaço de magia do nível da magia ou superior. Você recobra todos os espaços de magia gastos quando você completa um descanso longo.\r\n<br>\r\nPor exemplo, se você quiser conjurar a magia de 1° nível amizade animal e você tiver um espaço de magia de 1° nível e um de 2° nível disponíveis, você poderá conjurar amizade animal usando qualquer dos dois espaços.'),
(462, 'Conjuração - Patrulheiro: Magias Conhecidas de 1º Nível e Superiores', 'Você conhece duas magias de 1° nível, à sua escolha, da lista de magias de patrulheiro.\r\n<br>\r\nA coluna Magias Conhecidas na tabela O Patrulheiro mostra quando você aprende mais magias de patrulheiro, à sua escolha. Cada uma dessas magias deve ser de um nível a que você tenha acesso, como mostrado na tabela. Por exemplo, quando você alcança o 5° nível da classe, você pode aprender uma nova magia de 1° ou 2° nível.\r\n<br>\r\nAlém disso, quando você adquire um nível nessa classe, você pode escolher uma magia de patrulheiro que você conheça e substituí-la por outra magia da lista de magias de patrulheiro, que também deve ser de um nível ao qual você tenha espaços de magia.'),
(463, 'Conjuração - Patrulheiro: Habilidade de Conjuração', 'Sabedoria é a sua habilidade para conjurar suas magias de patrulheiro, já que sua magia vem da sua sintonia com a natureza. Você usa sua Sabedoria sempre que alguma magia se referir a sua habilidade de conjurar magias. Além disso, você usa o seu modificador de Sabedoria para definir a CD dos testes de resistência para as magias de patrulheiro que você conjura e quando você realiza uma jogada de ataque com uma magia.\r\n<br><br>\r\n<b>CD para suas magias</b> = 8 + bônus de proficiência + seu modificador de Sabedoria\r\n<br><br>\r\n<b>Modificador de ataque de magia</b> = seu bônus de proficiência + seu modificador de Sabedoria'),
(464, 'Estilo de Luta - Paladino', 'No 2° nível, você adota um estilo de combate particular que será sua especialidade. Escolha uma das opções a seguir. Você não pode escolher o mesmo Estilo de Combate mais de uma vez, mesmo se puder escolher de novo.'),
(465, 'Conclave do Caçador - Ataque Extra', 'A partir do 5° nível, você pode atacar duas vezes, ao invés de uma, sempre que você realizar a ação de Ataque no seu turno.'),
(466, 'Conclave do Caçador - Táticas Defensivas', 'No 7° nível, você ganha uma das seguintes características, à sua escolha.\r\n<br><br>\r\n<b>Escapar da Horda.</b> Ataques de oportunidade contra\r\nvocê são feitos com desvantagem.\r\n<br><br>\r\n<b>Defesa Contra Múltiplos Ataques.</b> Quando uma\r\ncriatura atinge você com um ataque, você recebe +4 de\r\nbônus na CA contra todos os ataques subsequentes feitos\r\npor essa criatura no resto do turno.\r\n<br><br>\r\n<b>Vontade de Aço.</b> Você tem vantagem em testes de\r\nresistência para evitar ser amedrontado.'),
(467, 'Conclave do Caçador - Ataque Múltiplo', 'No 11° nível, você ganha uma das seguintes\r\ncaracterísticas, à sua escolha.\r\n<br><br>\r\n<b>Saraivada.</b> Você pode usar sua ação para realizar um\r\nataque à distância contra qualquer número de criatura a\r\naté 3 metros de um ponto que você possa ver, no alcance\r\nda sua arma. Você deve ter munição para cada alvo, como\r\nnormal, e você realiza uma jogada de ataque separada\r\npara cada alvo.\r\n<br><br>\r\n<b>Ataque Giratório.</b> Você pode usar sua ação para\r\nrealizar um ataque corpo-a-corpo contra qualquer número\r\nde criaturas a até 1,5 metro de você, realizando uma\r\njogada de ataque separada para cada alvo.'),
(468, 'Conclave do Caçador - Defesa de Caçador Superior', 'No 15° nível, você ganha uma das seguintes características, à sua escolha.\r\n<br><br>\r\n<b>Evasão.</b> Você pode esquivar-se agilmente de certos efeitos em área, como o sopro de fogo de um dragão vermelho ou uma magia relâmpago. Quando você for alvo de um efeito que exige um teste de resistência de Destreza para sofrer metade do dano, você não sofre dano algum se passar, e somente metade do dano se falhar.\r\n<br><br>\r\n<b>Manter-se Contra a Maré.</b> Quando uma criatura hostil errar você com um ataque corpo-a-corpo, você pode usar sua reação para forçar a criatura a repetir o mesmo ataque contra outra criatura (que não ela mesma), à sua escolha.\r\n<br><br>\r\n<b>Esquiva Sobrenatural.</b> Quando um atacante que você possa ver, atinge você com um ataque, você pode usar sua reação para reduzir o dano causado pelo ataque à metade.'),
(469, 'Conclave do Rastreador Subterrâneo', 'Muitos povos descem para as profundezas do Subterrâneo apenas sob as condições mais urgentes, empreendendo alguma busca desesperada ou seguindo promessas de vastas riquezas. Com demasiada frequência, males antigos ocultos abaixo da terra e patrulheiros do Conclave dos Rastreadores Subterrâneos se esforçam para descobrir e derrotar tais ameaças antes que elas possam alcançar a superfície.'),
(470, 'Conclave do Rastreador Subterrâneo - Batedor do Subterrâneo', 'No 3° nível, você domina a arte da emboscada. No seu primeiro turno durante o combate, você ganha +3 metros de bônus no seu deslocamento e, se você usar a ação de Ataque nesse turno, você pode realizar um ataque adicional.\r\n<br>\r\nVocê também é especialista em evitar criaturas que contam com visão no escuro. Tais criaturas não ganham qualquer benefício quando tentarem detectar você em condições de escuridão ou penumbra. Além disso, quando o Mestre determina se você pode se esconder de uma criatura, tal criatura não ganham qualquer benefício devido a visão no escuro dela.'),
(471, 'Conclave do Rastreador Subterrâneo - Magia do Rastreador Subterrâneo', 'A partir do 3° nível, você ganha visão no escuro com um alcance de 27 metros. Você também ganha acesso a magias adicionais no 3°, 5°, 9°, 13° e 17° níveis. Uma vez que tenha adquirido uma magia de rastreador subterrâneo, ela conta como uma magia de patrulheiro para você, mas não conta na quantidade de magias de patrulheiro que você conhece.\r\n<br><br>\r\n<b>Magias do Rastreador Subterrâneo</b>\r\n<br>\r\n<b>Nível de Patrulheiro</b> | <b>Magias</b>\r\n<br><br>\r\n3° | disfarçar-se\r\n<br>\r\n5° | truque de corda\r\n<br>\r\n9° | glifo de vigilância\r\n<br>\r\n13° | invisibilidade maior\r\n<br>\r\n17° | similaridade'),
(472, 'Conclave do Rastreador Subterrâneo - Ataque Extra', 'A partir do 5° nível, você pode atacar duas vezes, ao invés de uma, sempre que você realizar a ação de Ataque no seu turno.'),
(473, 'Conclave do Rastreador Subterrâneo - Mente de Aço', 'No 7° nível, você ganha proficiência em testes de resistência de Sabedoria.'),
(474, 'Conclave do Rastreador Subterrâneo - Rajada do Rastreador', 'A partir do 11° nível, uma vez em cada um dos seus turnos quando você errar um ataque, você pode realizar outro ataque.'),
(475, 'Conclave do Rastreador Subterrâneo - Esquiva do Rastreador', 'No 15° nível, sempre que uma criatura atacar você e não tiver vantagem, você pode usar sua reação para impor desvantagem na jogada de ataque da criatura contra você. Você pode usar essa característica antes ou depois da jogada de ataque ser feita, mas deve ser usada antes do resultado da jogada ser determinado.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hab_rac`
--

CREATE TABLE `hab_rac` (
  `hab_rac_cod` int(11) NOT NULL,
  `hab_rac_nome` varchar(60) DEFAULT NULL,
  `hab_rac_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hab_rac`
--

INSERT INTO `hab_rac` (`hab_rac_cod`, `hab_rac_nome`, `hab_rac_desc`) VALUES
(0, '', ''),
(1, 'Visão no Escuro - Anão', 'Acostumado à vida subterrânea, você tem uma visão superior no escuro e na penumbra. Você enxerga na penumbra a até 18 metros como se fosse luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(2, 'Visão no Escuro - Elfo', 'Acostumado às florestas crepusculares e ao céu noturno, você possui uma visão superior em condições de escuridão e na penumbra. Você pode enxergar na penumbra a até 18 metros como se fosse na luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(3, 'Visão no Escuro - Gnomo', 'Acostumado à vida subterrânea, você tem uma visão superior no escuro e na penumbra. Você enxerga na penumbra a até 18 metros como se fosse luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(4, 'Visão no Escuro - Meio-Elfo', 'Graças ao seu sangue élfico, você tem uma visão superior no escuro e na penumbra. Você enxerga na penumbra a até 18 metros como se fosse luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(5, 'Visão no Escuro - Meio-Orc', 'Graças ao seu sangue orc, você tem uma visão superior no escuro e na penumbra. Você enxerga na penumbra a até 18 metros como se fosse luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(6, 'Visão no Escuro - Tiefling', 'Graças a sua herança infernal, você tem uma visão superior no escuro e na penumbra. Você enxerga na penumbra a até 18 metros como se fosse luz plena, e no escuro como se fosse na penumbra. Você não pode discernir cores no escuro, apenas tons de cinza.'),
(7, 'Resiliência Anã', 'Você possui vantagem em testes de resistência contra venenos e resistência contra dano de veneno (explicado no capítulo 9).'),
(8, 'Treinamento Anão em Combate', 'Você tem proficiência com machados de batalha, machadinhas, martelos leves e martelos de guerra.'),
(9, 'Proficiência com Ferramentas', 'Você tem proficiência em uma ferramenta de artesão à sua escolha entre: ferramentas de ferreiro, suprimentos de cervejeiro ou ferramentas de pedreiro.'),
(10, 'Especialização em Rochas', 'Sempre que você realizar um teste de Inteligência (História) relacionado à origem de um trabalho em pedra, você é considerado proficiente na perícia História e adiciona o dobro do seu bônus de proficiência ao teste, ao invés do seu bônus de proficiência normal.'),
(11, 'Tenacidade Anã', 'Seu máximo de pontos de vida aumentam em 1, e cada vez que o anão da colina sobe um nível, ele recebe 1 ponto de vida adicional.'),
(12, 'Treinamento Anão com Armaduras', 'Você adquire proficiência em armaduras leves e médias.'),
(13, 'Sentidos Aguçados', 'Você tem proficiência na perícia Percepção.'),
(14, 'Ancestral Feérico', 'Você tem vantagem nos testes de resistência para resistir a ser enfeitiçado e magias não podem colocá-lo para dormir.'),
(15, 'Transe', 'Elfos não precisam dormir. Ao invés disso, eles meditam profundamente, permanecendo semiconscientes, durante 4 horas por dia. (A palavra em idioma comum para tal meditação é \"transe\".) Enquanto medita, um elfo é capaz de sonhar de certo modo. Esses sonhos na verdade são exercícios mentais que se tornam reflexos através de anos de prática. Depois de descansar dessa forma, você ganha os mesmos benefícios que um humano depois de 8 horas de sono.'),
(16, 'Treinamento Élfico com Armas', 'Você possui proficiência com espadas longas, espadas curtas, arcos longos e arcos curtos.'),
(17, 'Truque', 'Você conhece um truque, à sua escolha, da lista de truques do mago. Inteligência é a habilidade usada para conjurar este truque.'),
(18, 'Idioma Adicional', 'Você pode falar, ler e escrever um idioma adicional à sua escolha.'),
(19, 'Pés Ligeiros', 'Seu deslocamento base de caminhada aumenta para 10,5 metros.'),
(20, 'Máscara da Natureza', 'Você pode tentar se esconder mesmo quando você está apenas levemente obscurecido por folhagem, chuva forte, neve caindo, névoa ou outro fenômeno natural.'),
(21, 'Visão no Escuro Superior', 'Sua visão no escuro tem alcance de 36 metros de raio.'),
(22, 'Sensibilidade à Luz Solar', 'Você possui desvantagem nas jogadas de ataque e testes de Sabedoria (Percepção) relacionados a visão quando você, o alvo do seu ataque, ou qualquer coisa que você está tentando perceber, esteja sob luz solar direta.'),
(23, 'Magia Drow', 'Você possui o truque globos de luz. Quando você alcança o 3° nível, você pode conjurar a magia fogo das fadas. Quando você alcança o 5° nível, você pode conjurar escuridão. Você precisa terminar um descanso longo para poder conjurar as magias desse traço novamente. Carisma é sua habilidade chave para conjurar essas magias.'),
(24, 'Treinamento Drow com Armas', 'Você possui proficiência com rapieiras, espadas curtas e bestas de mão.'),
(25, 'Sortudo', 'Quando você obtiver um 1 natural em uma jogada de ataque, teste de habilidade ou teste de resistência, você pode jogar de novo o dado e deve utilizar o novo resultado.'),
(26, 'Bravura', 'Você tem vantagem em testes de resistência contra ficar amedrontado.'),
(27, 'Agilidade Halfling', 'Você pode mover-se através do espaço de qualquer criatura que for de um tamanho maior que o seu.'),
(28, 'Furtividade Natural', 'Você pode tentar se esconder mesmo quando possuir apenas a cobertura de uma criatura que for no mínimo um tamanho maior que o seu.'),
(29, 'Resiliência dos Robustos', 'Você tem vantagem em testes de resistência contra veneno e tem resistência contra dano de veneno.'),
(30, 'Perícia', 'Você ganha proficiência em uma perícia, à sua escolha.'),
(31, 'Talento', 'Você adquire um talento de sua escolha.'),
(32, 'Ancestral Dracônico', 'Você possui um ancestral dracônico. Escolha um tipo de dragão da tabela Ancestral Dracônico. Sua arma de sopro e resistência a dano são determinadas pelo tipo de dragão, como mostrado na tabela.'),
(33, 'Arma de Sopro', 'Você pode usar uma ação para exalar energia destrutiva. Seu ancestral dracônico determina o tamanho, formado e tipo de dano que você expele.\r\nQuando você usa sua arma de sopro, cada criatura na área exalada deve realizar um teste de resistência, o tipo do teste é determinado pelo seu ancestral dracônico. A CD do teste de resistência é 8 + seu modificador de Constituição + seu bônus de proficiência. Uma criatura\r\nsofre 2d6 de dano num fracasso e metade desse dano num sucesso. O dano aumenta para 3d6 no 6° nível, 4d6 no 11° nível e 5d6 no 16° nível.\r\nDepois de usar sua arma de sopro, você não poderá utilizá-la novamente até completar um descanso curto ou longo.'),
(34, 'Resistência a Dano', 'Você possui resistência ao tipo de dano associado ao seu ancestral dracônico.'),
(35, 'Esperteza Gnômica', 'Você possui vantagem em todos os testes de resistência de Inteligência, Sabedoria e Carisma contra magia.'),
(36, 'Ilusionista Nato', 'Você conhece o truque ilusão menor. Inteligência é a sua habilidade usada para conjurá-la.'),
(37, 'Falar com Bestas Pequenas', 'Através de sons e gestos, você pode comunicar ideias simples para Bestas pequenas ou menores. Gnomos da floresta amam os animais e normalmente possuem esquilos, doninhas, coelhos, toupeiras, pica-paus e outras criaturas como amados animais de estimação.'),
(38, 'Conhecimento de Artífice', 'Toda vez que você fizer um teste de Inteligência (História) relacionado a itens\r\nmágicos, objetos alquímicos ou mecanismos tecnológicos, você pode adicionar o dobro do seu bônus de proficiência, ao invés de qualquer bônus de proficiência que você normalmente use.'),
(39, 'Engenhoqueiro', 'Você possui proficiência com ferramentas de artesão (ferramentas de engenhoqueiro). Usando essas ferramentas, você pode gastar 1 hora e 10 po em materiais para construir um mecanismo Miúdo (CA 5, 1 pv). O mecanismo para de funcionar após 24 horas (a não ser que você gaste 1 hora reparando-o para manter o mecanismo funcionando), ou quando você usa sua ação para desmantelá-lo; nesse momento, você pode recuperar o material usado para criá-lo. Você pode ter até três desses mecanismos ativos ao mesmo tempo.\r\nQuando você criar um mecanismo, escolha uma das seguintes opções:\r\n<br><br>\r\n<b>- Brinquedo Mecânico.</b> Esse brinquedo é um animal, monstro ou pessoa mecânica, como um sapo, rato, pássaro, dragão ou soldado. Quando colocado no chão,\r\no brinquedo se move 1,5 metro pelo chão em cada um dos seus turnos em uma direção aleatória. Ele faz barulhos apropriados a criatura que ele representa.\r\n<br><br>\r\n<b>- Isqueiro Mecânico.</b> O mecanismo produz uma miniatura de chama, que você pode usar para acender uma vela, tocha ou fogueira. Usar o mecanismo requer sua ação.\r\n<br><br>\r\n<b>- Caixa de Música.</b> Quando aberta, essa caixa de música toca uma canção a um volume moderado. A caixa para de tocar quando alcança o fim da música ou quando é fechada.'),
(40, 'Versatilidade em Perícia', 'Você ganha proficiência em duas perícias, à sua escolha.'),
(41, 'Ameaçador', 'Você adquire proficiência na perícia Intimidação.'),
(42, 'Resistência Implacável', 'Quando você é reduzido a 0 pontos de vida mas não é completamente morto, você pode voltar para 1 ponto de vida.\r\nVocê não pode usar essa característica novamente até completar um descanso longo.'),
(43, 'Ataques Selvagens', 'Quando você atinge um ataque crítico com uma arma corpo-a-corpo, você pode rolar um\r\ndos dados de dano da arma mais uma vez e adicioná-lo ao dano extra causado pelo acerto crítico.'),
(44, 'Resistência Infernal', 'Você possui resistência a dano de fogo.'),
(45, 'Legado Infernal', 'Você conhece o truque taumaturgia. Quando você atingir o 3° nível, você poderá conjurar a magia repreensão infernal como uma magia de 2° nível. Quando você atingir o 5° nível, você também poderá conjurar a magia escuridão. Você precisa terminar um descanso longo para poder usar as magias desse traço novamente. Sua habilidade de conjuração para essas magias é Carisma.'),
(46, 'Idade - Anão', 'Anões tornam-se maduros na mesma proporção que os humanos, mas são considerados jovens até atingirem a idade de 50 anos. Em média, eles vivem 350 anos.'),
(47, 'Tendência - Anão', 'A maioria dos anões é leal, pois acreditam firmemente nos benefícios de uma sociedade bem organizada. Eles tendem para o bem, com um forte senso de honestidade e uma crença de que todos merecem compartilhar os benefícios de uma ordem social justa.'),
(48, 'Tamanho - Anão', 'Anões estão entre 1,20 e 1,50 metro de altura e pesam cerca de 75 kg. Seu tamanho é Médio.'),
(49, 'Deslocamento - Anão', 'Seu deslocamento base de caminhada é de 7,5 metros. Seu deslocamento não é reduzido quando estiver usando armadura pesada.'),
(50, 'Idiomas - Anão', 'Você pode falar, ler e escrever Comum e Anão. O idioma Anão é repleto de consoantes duras e sons guturais, e essa característica influencia, como um sotaque, qualquer outro idioma que o anão falar.'),
(51, 'Idade - Elfo', 'Embora os elfos atinjam a maturidade física com praticamente a mesma idade dos humanos, a compreensão élfica da idade adulta vai além da maturidade física, abrangendo sua experiência sobre o mundo. Um elfo tipicamente assume a idade adulta e um nome adulto com cerca de 100 anos de idade e pode viver 750 anos.'),
(52, 'Tendência - Elfo', 'Elfos amam a liberdade, a diversidade e a expressão pessoal, então eles inclinam-se forte e suavemente para aspectos do caos. Eles valorizam e protegem a liberdade dos outros como a sua própria, e são geralmente mais bondosos que o contrário. Os drow são exceção. Seu exílio no Subterrâneo fez deles perversos e perigosos. Drow são geralmente mais maus que o contrário.'),
(53, 'Tamanho - Elfo', 'Elfos medem entre 1,50 a 1,80 metro de altura e possuem constituição delgada. Seu tamanho é Médio.'),
(54, 'Deslocamento - Elfo', 'Seu deslocamento base de caminhada é 9 metros.'),
(55, 'Idiomas - Elfo', 'Você pode falar, ler e escrever Comum e Élfico. O Élfico é um idioma fluido, com entonações sutis e gramática complexa. A literatura élfica é rica e diversa, e suas canções e poemas são famosos entre outras raças. Muitos bardos aprendem essa língua para que possam adicionar canções élficas ao seu repertório.'),
(56, 'Idade - Halfling', 'Um halfling atinge a idade adulta aos 20 anos e pode chegar a 150 anos.'),
(57, 'Tendência - Halfling', 'A maioria dos halflings é leal e boa. Via de regra, eles possuem um bom coração e são amáveis, odeiam ver o sofrimento dos outros e não toleram a opressão. Eles também são muito ordeiros e tradicionais, fortemente apegados à sua comunidade e ao conforto de suas antigas tradições.'),
(58, 'Tamanho - Halfling', 'Halflings medem cerca de 0,90 metro de altura e pesam aproximadamente 20 kg. Seu tamanho é Pequeno.'),
(59, 'Deslocamento - Halfling', 'Seu deslocamento base de caminhada é 7,5 metros.'),
(60, 'Idiomas - Halfling', 'Você pode falar, ler e escrever Comum e Halfling. A linguagem Halfling não é secreta, mas os halflings são relutantes em compartilhá-la com os outros. Eles escrevem muito pouco, por isso eles não possuem uma literatura rica. No entanto, sua tradição oral é muito forte. Quase todos os halflings falam o idioma Comum para conversar com as pessoas das terras que habitam, ou através das quais eles estejam viajando.'),
(61, 'Idade - Humano', 'Os humanos chegam à idade adulta no final da adolescência e vivem menos de um século.'),
(62, 'Tendência - Humano', 'Os humanos não possuem inclinação a nenhuma tendência em especial. Os melhores e os piores são encontrados entre eles.'),
(63, 'Tamanho - Humano', 'Os humanos variam muito em altura e peso, podem ter quase 1,50 metro ou mais de 1,80 metro. Independentemente da sua posição entre esses valores, o seu tamanho é Médio.'),
(64, 'Deslocamento - Humano', 'Seu deslocamento base de caminhada é 9 metros.'),
(65, 'Idiomas - Humano', 'Você pode falar, ler e escrever Comum e outro idioma adicional, à sua escolha. Os humanos normalmente aprendem os idiomas dos povos que convivem, incluindo dialetos obscuros. Eles gostam de rechear seu discurso com palavras emprestadas de outras línguas: xingamentos orcs, expressões musicais élficas, frases militares anãs e outros.'),
(66, 'Idade - Draconato', 'Draconatos jovens crescem rapidamente. Eles caminham horas após nascerem, adquirindo o tamanho e desenvolvimento semelhante a de uma criança humana de 10 anos com 3 anos de idade e alcançam a maturidade aos 15. Eles costumam viver até os 80.'),
(67, 'Tendência - Draconato', 'Os draconatos tendem aos extremos, realizando uma escolha consciente de um lado ou do outro da guerra cósmica entre o bem e o mal (representada por Bahamut e Tiamat, respectivamente). A maioria dos draconatos é boa, mas os que vão para o lado de Tiamat podem se tornar vilões terríveis.'),
(68, 'Tamanho - Draconato', 'Os draconatos são mais altos e mais pesados que os humanos, geralmente possuindo mais de 1,80 metro e normalmente pesando mais de 125 kg. Seu tamanho é Médio.'),
(69, 'Deslocamento - Draconato', 'Seu deslocamento base de caminhada é 9 metros.'),
(70, 'Idiomas - Draconato', 'Você pode falar, ler e escrever Comum e Dracônico. O idioma Dracônico é conhecido por ser uma das mais antigas línguas e ainda é usado no estudo de magia. A linguagem soa áspera para a maioria das criaturas, incluindo várias consoantes e silabas firmes.'),
(71, 'Idade - Gnomos', 'Gnomos amadurecem a mesma proporção que os humanos e, a maioria, atinge a idade adulta por volta dos 40 anos. Eles podem viver entre 350 e 500 anos.'),
(72, 'Tendência - Gnomos', 'Os gnomos geralmente são bons. Os que tendem para a ordem são sábios, engenheiros, pesquisadores, escolásticos, investigadores ou inventores. Os que tendem ao caos são menestréis, engenhoqueiros, andarilhos ou joalheiros caprichosos. Gnomos são bons de coração e, até mesmo os trapaceiros entre eles tendem a ser mais brincalhões que perversos.'),
(73, 'Tamanho - Gnomos', 'Os gnomos tem entre 0,90 e 1,20 metro e seu peso médio é de 20 kg. Seu tamanho é Pequeno.'),
(74, 'Deslocamento - Gnomos', 'Seu deslocamento base de caminhada é 7,5 metros.'),
(75, 'Idiomas - Gnomo', 'Você sabe falar, ler e escrever Comum e Gnômico. A linguagem Gnômica, que usa o alfabeto Anão, é conhecida por suas técnicas de dissertação e por seus catálogos de conhecimento sobre o mundo natural.'),
(76, 'Idade - Meio-Elfo', 'Meio-elfos atingem a maturidade ao mesmo tempo que os humanos atingem a idade adulta, por volta dos 20 anos. Eles vivem muito mais que os humanos, no entanto, raramente ultrapassam os 180 anos.'),
(77, 'Tendência - Meio-Elfo', 'Meio-elfos compartilham a veia caótica da sua herança élfica. Eles valorizam tanto a sua liberdade quanto sua expressão criativa, não demonstrando qualquer apresso por líderes ou seguidores. Eles se irritam com regras, ressentindo com exigências de outros e, as vezes, se provam incertos, ou pelo menos, imprevisíveis.'),
(78, 'Tamanho - Meio-Elfo', 'Meio-elfos tem aproximadamente a mesma altura dos humanos, variando entre 1,50 metro e 1,80 metro. Seu tamanho é Médio.'),
(79, 'Deslocamento - Meio-Elfo', 'Seu deslocamento base de caminhada é 9 metros.'),
(80, 'Idiomas - Meio-Elfo', 'Você sabe falar, ler e escrever Comum, Élfico e um idioma adicional, à sua escolha.'),
(81, 'Idade - Meio-Orc', 'Os meio-orcs amadurecem um pouco antes dos humanos, atingindo a idade adulta aos 14 anos. Eles envelhecem notavelmente mais rápido e, raramente, vivem mais de 75 anos.'),
(82, 'Tendência - Meio-Orc', 'Meio-orcs tem uma tendência inata ao caos devido aos seus parentes orcs e não são fortemente inclinados ao bem. Meio-orcs que cresceram entre orcs e desejam viver e estão dispostos a passar sua vida entre eles, tendem a ser malignos.'),
(83, 'Tamanho - Meio-Orc', 'Meio-orcs são de certa forma maiores e mais largos que os humanos, medindo entre 1,80 metro e 2,10 metros. Seu tamanho é Médio.'),
(84, 'Deslocamento - Meio-Orc', 'Seu deslocamento base de caminhada é 9 metros.'),
(85, 'Idiomas - Meio-Orc', 'Você sabe falar, ler e escrever Comum, Orc. O Orc é um idioma ríspido, possuindo uma linguagem de consoantes duras. Ele não possui alfabeto próprio, mas usa o alfabeto Anão.'),
(86, 'Idade - Tiefling', 'Os tieflings amadurecem ao mesmo tempo que os humanos, mas vivem alguns anos a mais.'),
(87, 'Tendência - Tiefling', 'Tieflings não possuem uma tendência inata ao mal, mas muitos acabam por abraçá-lo. Maligno ou não, uma natureza independente inclina a maioria dos tieflings ao alinhamento caótico.'),
(88, 'Tamanho - Tiefling', 'Os tieflings possuem o mesmo tamanho e compleição dos humanos. Seu tamanho é Médio.'),
(89, 'Deslocamento - Tiefling', 'Seu deslocamento base de caminhada é 9 metros.'),
(90, 'Idiomas - Tiefling', 'Você sabe falar, ler e escrever Comum e Infernal.'),
(91, 'Aumento no Valor de Habilidade - Anão', 'Seu valor de Constituição aumenta em 2.'),
(92, 'Aumento no Valor de Habilidade - Anão da Montanha', 'Seu valor de Força aumenta em 2.'),
(93, 'Aumento no Valor de Habilidade - Anão da Colina', 'Seu valor de Sabedoria aumenta em 1.'),
(94, 'Aumento no Valor de Habilidade - Elfo', 'Seu valor de Destreza aumenta em 2.'),
(95, 'Aumento no Valor de Habilidade - Alto Elfo', 'Seu valor de Inteligência aumenta em 1.'),
(96, 'Aumento no Valor de Habilidade - Elfo da Floresta', 'Seu valor de Sabedoria aumenta em 1.'),
(97, 'Aumento no Valor de Habilidade - Elfo Negro (Drow)', 'Seu valor de Carisma aumenta em 1.'),
(98, 'Aumento no Valor de Habilidade - Halfling', 'Seu valor de Destreza aumenta em 2.'),
(99, 'Aumento no Valor de Habilidade - Halfling Pés Leves', 'Seu valor de Carisma aumenta em 1.'),
(100, 'Aumento no Valor de Habilidade - Halfling Robusto', 'Seu valor de Constituição aumenta em 1.'),
(101, 'Aumento no Valor de Habilidade - Humano Comum', 'Todos os seus valores de habilidade aumentam em 1.'),
(102, 'Aumento no Valor de Habilidade - Humano Variante', 'Dois valores de habilidade, à sua escolha, aumentam em 1.'),
(103, 'Aumento no Valor de Habilidade - Draconato', 'Seu valor de Força aumenta em 2 e seu valor de Carisma aumenta em 1.'),
(104, 'Aumento no Valor de Habilidade - Gnomo', 'Seu valor de Inteligência aumenta em 2.'),
(105, 'Aumento no Valor de Habilidade - Gnomo da Floresta', 'Seu valor de Destreza aumenta em 1.'),
(106, 'Aumento no Valor de Habilidade - Gnomo das Rochas', 'Seu valor de Constituição aumenta em 1.'),
(107, 'Aumento no Valor de Habilidade - Meio-Elfo', 'Seu valor de Carisma aumenta em 2 e outros dois valores de habilidade, à sua escolha, aumentam em 1.'),
(108, 'Aumento no Valor de Habilidade - Meio-Orc', 'Seu valor de Força aumenta em 2 e seu valor de Constituição aumenta em 1.'),
(109, 'Aumento no Valor de Habilidade - Tiefling', 'Seu valor de Inteligência aumenta em 1 e seu valor de Carisma aumenta em 2.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `id` int(3) NOT NULL,
  `tipo` varchar(3) NOT NULL,
  `classe` int(1) NOT NULL,
  `item` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`id`, `tipo`, `classe`, `item`) VALUES
(1, '1.1', 1, 'Um machado grande'),
(2, '1.2', 1, 'Qualquer arma marcial corpo-a-corpo'),
(3, '2.1', 1, 'Dois machados de mão'),
(4, '2.2', 1, 'Quaquer arma simples'),
(5, '3.1', 1, 'Um pacote de aventureiro e quatro azagaias'),
(6, '1.1', 2, 'Uma rapieira'),
(7, '1.2', 2, 'uma espada longa'),
(8, '1.3', 2, 'Qualquer arma simples'),
(9, '2.1', 2, 'Um pacote de diplomata'),
(10, '2.2', 2, 'Um pacote de artista'),
(11, '3.1', 2, 'Um lute'),
(12, '3.2', 2, 'Qualquer outro instrumento musical'),
(13, '4.1', 2, 'Armadura de couro e uma adaga'),
(14, '1.1', 3, 'Uma besta leve e 20 virotes'),
(15, '1.2', 3, 'Qualquer arma simples'),
(16, '2.1', 3, 'Uma bolsa de componentes'),
(17, '2.2', 3, 'Um foco arcano'),
(18, '3.1', 3, 'Um pacote de estudioso'),
(19, '3.2', 3, 'Um pacote de explorador'),
(20, '4.1', 3, 'Armadura de couro, qualquer arma simples e duas adagas'),
(21, '1.1', 4, 'Uma maça'),
(22, '1.2', 4, 'Um martelo de Guerra (se for proficiente)'),
(23, '2.1', 4, 'Brunea'),
(24, '2.2', 4, 'Armadura de couro'),
(25, '2.3', 4, 'Cota de malha (se for proficiente)'),
(26, '3.1', 4, 'Uma besta leve e 20 virotes'),
(27, '3.2', 4, 'Qualquer arma simples'),
(28, '4.1', 4, 'Um pacote de sacerdote'),
(29, '4.2', 4, 'Um pacote de aventureiro'),
(30, '5.1', 4, 'Um escudo e um símbolo sagrado'),
(31, '1.1', 5, 'Um escudo de madeira'),
(32, '1.2', 5, 'Qualquer arma simples'),
(33, '2.1', 5, 'Uma cimitarra'),
(34, '2.2', 5, 'Qualquer arma corpo-a-corpo simples'),
(35, '3.1', 5, 'Um pacote de estudioso'),
(36, '3.2', 5, 'Um pacote de explorador'),
(37, '4.1', 5, 'Armadura de couro, um pacote de aventureiro e um foco druídico'),
(38, '1.1', 6, 'Uma besta leve e 20 virotes'),
(39, '1.2', 6, 'Qualquer arma simples'),
(40, '2.1', 6, 'Uma bolsa de componentes'),
(41, '2.2', 6, 'Um foco arcano'),
(42, '3.1', 6, 'Um pacote de explorador'),
(43, '3.2', 6, 'Um pacote de aventureiro'),
(44, '1.1', 7, 'Cota de malha'),
(45, '1.2', 7, 'Gibão de peles, arco longo e 20 flechas'),
(46, '2.1', 7, 'Uma arma marcial e um escudo'),
(47, '2.2', 7, 'Duas armas marciais'),
(48, '3.1', 7, 'Uma besta leve e 20 virotes'),
(49, '3.2', 7, 'Dois machados de arremesso'),
(50, '4.1', 7, 'Um pacote de aventureiro'),
(51, '4.2', 7, 'Um pacote de explorador'),
(52, '1.1', 8, 'Uma rapieira'),
(53, '1.2', 8, 'Uma espada longa'),
(54, '2.1', 8, 'Um arco curto e uma aljava com 20 flechas'),
(55, '2.2', 8, 'Uma espada curta'),
(56, '3.1', 8, 'Um pacote de assaltante'),
(57, '3.2', 8, 'Um pacote de aventureiro'),
(58, '3.3', 8, 'Um pacote de explorador'),
(59, '4.1', 8, 'Armadura de couro, duas adagas e ferramentas de ladrão'),
(60, '1.1', 9, 'Um bordão'),
(61, '1.2', 9, 'Uma adaga'),
(62, '2.1', 9, 'Uma bolsa de componentes'),
(63, '2.2', 9, 'Um foco arcano'),
(64, '3.1', 9, 'Um pacote de estudioso'),
(65, '3.2', 9, 'Um pacote de explorador'),
(66, '4.1', 9, 'Um grimório'),
(67, '1.1', 10, 'Uma espada curta'),
(68, '1.2', 10, 'Qualquer arma simples'),
(69, '2.1', 10, 'Um pacote de explorador'),
(70, '2.2', 10, 'Um pacote de aventureiro'),
(71, '3.1', 10, '10 dardos'),
(72, '1.1', 11, 'Uma arma marcial e um escudo'),
(73, '1.2', 11, 'Duas armas marciais'),
(74, '2.1', 11, 'Cinco azagaias'),
(75, '2.2', 11, 'Qualquer arma simples corpo-a-corpo'),
(76, '3.1', 11, 'Um pacote de sacerdote'),
(77, '3.2', 11, 'Um pacote de aventureiro'),
(78, '4.1', 11, 'Cota de malha e um símbolo sagrado'),
(79, '1.1', 12, 'Camisão de malha'),
(80, '1.2', 12, 'Armadura de couro'),
(81, '2.1', 12, 'Duas espadas curtas'),
(82, '2.2', 12, 'Duas armas simples corpo-a-corpo'),
(83, '3.1', 12, 'Um pacote de explorador'),
(84, '3.2', 12, 'Um pacote de aventureiro'),
(85, '4.1', 12, 'Um arco longo e uma aljava com 20 flechas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_bardo`
--

CREATE TABLE `magias_bardo` (
  `magias_bardo_cod` int(11) NOT NULL,
  `magias_bardo_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_bardo`
--

INSERT INTO `magias_bardo` (`magias_bardo_cod`, `magias_bardo_nome`) VALUES
(1, 'Amizade (encantamento)'),
(2, 'Ataque Certeiro (adivinhação)'),
(3, 'Consertar (transmutação)'),
(4, 'Globos de Luz (evocação)'),
(5, 'Ilusão Menor (ilusão)'),
(6, 'Luz (evocação)'),
(7, 'Mãos Mágicas (conjuração)'),
(8, 'Mensagem (transmutação)'),
(9, 'Prestidigitação (transmutação)'),
(10, 'Proteção contra Lâminas (abjuração)'),
(11, 'Zombaria Viciosa (encantamento)'),
(12, 'Amizade animal (encantamento)'),
(13, 'Compreender Idiomas (adivinhação, ritual)'),
(14, 'Curar Ferimentos (evocação)'),
(15, 'Detectar Magia (adivinhação, ritual)'),
(16, 'Disfarçar-se (ilusão)'),
(17, 'Enfeitiçar Pessoa (encantamento)'),
(18, 'Escrita Ilusória (ilusão, ritual)'),
(19, 'Falar com Animais (adivinhação, ritual)'),
(20, 'Fogo das Fadas (evocação)'),
(21, 'Heroísmo (encantamento)'),
(22, 'Identificação (adivinhação, ritual)'),
(23, 'Imagem Silenciosa (ilusão)'),
(24, 'Onda Trovejante (evocação)'),
(25, 'Queda Suave (transmutação)'),
(26, 'Palavra Curativa (evocação)'),
(27, 'Passos Longos (transmutação)'),
(28, 'Perdição (encantamento)'),
(29, 'Riso Histérico de Tasha (encantamento)'),
(30, 'Servo Invisível (conjuração, ritual)'),
(31, 'Sono (encantamento)'),
(32, 'Sussurros Dissonantes (encantamento)'),
(33, 'Acalmar Emoções (encantamento)'),
(34, 'Aprimorar Habilidade (transmutação)'),
(35, 'Arrombar (transmutação)'),
(36, 'Boca Encantada (ilusão, ritual)'),
(37, 'Cativar (encantamento)'),
(38, 'Cegueira/Surdez (necromancia)'),
(39, 'Coroa da Loucura (encantamento)'),
(40, 'Esquentar Metal (transmutação)'),
(41, 'Despedaçar (evocação)'),
(42, 'Força Fantasmagórica (ilusão)'),
(43, 'Detectar Pensamentos (adivinhação)'),
(44, 'Imobilizar Pessoa (encantamento)'),
(45, 'Invisibilidade (ilusão)'),
(46, 'Localizar Animais ou Plantas (adivinhação, ritual)'),
(47, 'Localizar Objeto (adivinhação)'),
(48, 'Mensageiro Animal (encantamento, ritual)'),
(49, 'Nuvem de Adagas (conjuração)'),
(50, 'Restauração Menor (abjuração)'),
(51, 'Silêncio (ilusão, ritual)'),
(52, 'Sugestão (encantamento)'),
(53, 'Ver o Invisível (adivinhação)'),
(54, 'Zona da Verdade (encantamento)'),
(55, 'Ampliar Plantas (transmutação)'),
(56, 'Clarividência (adivinhação)'),
(57, 'Dificultar Detecção (abjuração)'),
(58, 'Dissipar Magia (abjuração)'),
(59, 'Enviar Mensagem (evocação)'),
(60, 'Falar com os Mortos (necromancia)'),
(61, 'Falar com Plantas (transmutação)'),
(62, 'Forjar Morte (necromancia, ritual)'),
(63, 'Glifo de Vigilância (abjuração)'),
(64, 'Idiomas (adivinhação)'),
(65, 'Imagem Maior (ilusão)'),
(66, 'Medo (ilusão)'),
(67, 'Névoa Fétida (conjuração)'),
(68, 'Padrão Hipnótico (ilusão)'),
(69, 'Pequena Cabana de Leomund (evocação, ritual)'),
(70, 'Rogar Maldição (necromancia)'),
(71, 'Confusão (encantamento)'),
(72, 'Compulsão (encantamento)'),
(73, 'Movimentação Livre (abjuração)'),
(74, 'Invisibilidade Maior (ilusão)'),
(75, 'Localizar Criatura (adivinhação)'),
(76, 'Metamorfose (transmutação)'),
(77, 'Porta Dimensional (conjuração)'),
(78, 'Terreno Alucinógeno (ilusão)'),
(79, 'Âncora Planar (abjuração)'),
(80, 'Animar Objetos (transmutação)'),
(81, 'Círculo de Teletransporte (conjuração)'),
(82, 'Conhecimento Lendário (adivinhação)'),
(83, 'Curar Ferimentos em Massa (evocação)'),
(84, 'Despertar (transmutação)'),
(85, 'Despistar (ilusão)'),
(86, 'Dominar Pessoa (encantamento)'),
(87, 'Imobilizar Monstro (encantamento)'),
(88, 'Missão (encantamento)'),
(89, 'Modificar Memória (encantamento)'),
(90, 'Restauração Maior (abjuração)'),
(91, 'Reviver os Mortos (necromancia)'),
(92, 'Similaridade (ilusão)'),
(93, 'Sonho (ilusão)'),
(94, 'Vidência (adivinhação)'),
(95, 'Ataque Visual (necromancia)'),
(96, 'Dança Irresistível de Otto (encantamento)'),
(97, 'Encontrar o Caminho (adivinhação)'),
(98, 'Ilusão Programada (ilusão)'),
(99, 'Proteger Fortaleza (abjuração)'),
(100, 'Sugestão em Massa (encantamento)'),
(101, 'Visão da Verdade (adivinhação)'),
(102, 'Espada de Mordenkainen (evocação)'),
(103, 'Forma Etérea (transmutação)'),
(104, 'Miragem (ilusão)'),
(105, 'Mansão Magnifica de Mordenkainen (conjuração)'),
(106, 'Prisão de Energia (evocação)'),
(107, 'Projetar Imagem (ilusão)'),
(108, 'Regeneração (transmutação)'),
(109, 'Ressurreição (necromancia)'),
(110, 'Símbolo (abjuração)'),
(111, 'Teletransporte (conjuração)'),
(112, 'Dominar Monstro (encantamento)'),
(113, 'Enfraquecer Intelecto (encantamento)'),
(114, 'Limpar a Mente (abjuração)'),
(115, 'Loquacidade (transmutação)'),
(116, 'Palavra de Poder Atordoar (encantamento)'),
(117, 'Palavra de Poder Curar (evocação)'),
(118, 'Palavra de Poder Matar (encantamento)'),
(119, 'Metamorfose Verdadeira (transmutação)'),
(120, 'Sexto Sentido (adivinhação)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_bruxo`
--

CREATE TABLE `magias_bruxo` (
  `magias_bruxo_cod` int(11) NOT NULL,
  `magias_bruxo_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_bruxo`
--

INSERT INTO `magias_bruxo` (`magias_bruxo_cod`, `magias_bruxo_nome`) VALUES
(1, 'Amizade (encantamento)'),
(2, 'Ataque Certeiro (adivinhação)'),
(3, 'Ilusão Menor (ilusão)'),
(4, 'Mãos Mágicas (conjuração)'),
(5, 'Prestidigitação (transmutação)'),
(6, 'Proteção contra Lâminas (abjuração)'),
(7, 'Rajada de Veneno (conjuração)'),
(8, 'Rajada Mística (evocação)'),
(9, 'Toque Arrepiante (necromancia)'),
(10, 'Armadura de Agathys (abjuração)'),
(11, 'Braços de Hadar (conjuração)'),
(12, 'Bruxaria (encantamento)'),
(13, 'Compreender Idiomas (adivinhação, ritual)'),
(14, 'Enfeitiçar Pessoa (encantamento)'),
(15, 'Escrita ilusória (ilusão, ritual)'),
(16, 'Proteção contra o Bem e Mal (abjuração)'),
(17, 'Raio de Bruxa (evocação)'),
(18, 'Recuo Acelerado (transmutação)'),
(19, 'Repreensão Infernal (evocação)'),
(20, 'Servo Invisível (conjuração, ritual)'),
(21, 'Cativar (encantamento)'),
(22, 'Coroa da Loucura (encantmento)'),
(23, 'Despedaçar (evocação)'),
(24, 'Escuridão (evocação)'),
(25, 'Imobilizar Pessoa (encantamento)'),
(26, 'Invisibilidade (ilusão)'),
(27, 'Nuvem de Adagas (conjuração)'),
(28, 'Passo Nebuloso (conjuração)'),
(29, 'Patas de Aranha (transmutação)'),
(30, 'Raio do Enfraquecimento (necromancia)'),
(31, 'Reflexos (ilusão)'),
(32, 'Sugestão (encantamento)'),
(33, 'Círculo Mágico (abjuração)'),
(34, 'Contramágica (bjuração)'),
(35, 'Dissipar Magia (abjuração)'),
(36, 'Fome de Hadar (conjuração)'),
(37, 'Forma Gasosa (transmutação)'),
(38, 'Idiomas (adivinhação)'),
(39, 'Imagem Maior (ilusão)'),
(40, 'Remover Maldição (abjuração)'),
(41, 'Medo (ilusão)'),
(42, 'Padrão Hipnótico (ilusão)'),
(43, 'Toque Vampírico (necromancia)'),
(44, 'Voo (transmutação)'),
(45, 'Banimento (abjuração)'),
(46, 'Porta Dimensional (conjuração)'),
(47, 'Malogro (necromancia)'),
(48, 'Terreno Alucinógeno (ilusão)'),
(49, 'Contato Extraplanar (adivinhação, ritual)'),
(50, 'Imobilizar Monstro (encantamento)'),
(51, 'Sonho (ilusão)'),
(52, 'Vidência (adivinhação)'),
(53, 'Ataque Visual (necromancia)'),
(54, 'Círculo da Morte (necromancia)'),
(55, 'Conjurar Fada (conjuração)'),
(56, 'Criar Mortos-Vivos (necromancia)'),
(57, 'Carne para Pedra (transmutação)'),
(58, 'Portal Arcano (conjuração)'),
(59, 'Sugestão em Massa (encantamento)'),
(60, 'Visão da Verdade (adivinhação)'),
(61, 'Dedo da Morte (necromancia)'),
(62, 'Forma Etérea (transmutação)'),
(63, 'Prisão de Energia (evocação)'),
(64, 'Viagem Planar (conjuração)'),
(65, 'Dominar Monstro (encantamento)'),
(66, 'Enfraquecer o Intelecto (encantamento)'),
(67, 'Loquacidade (transmutação)'),
(68, 'Palavra de Poder Atordoar (encantamento)'),
(69, 'Semiplano (conjuração)'),
(70, 'Aprisionamento (abjuração)'),
(71, 'Metamorfose Verdadeira (transmutação)'),
(72, 'Palavra de Poder Matar (encantamento)'),
(73, 'Projeção Astral (necromancia)'),
(74, 'Sexto Sentido (adivinhação)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_clerigo`
--

CREATE TABLE `magias_clerigo` (
  `magias_clerigo_cod` int(11) NOT NULL,
  `magias_clerigo_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_clerigo`
--

INSERT INTO `magias_clerigo` (`magias_clerigo_cod`, `magias_clerigo_nome`) VALUES
(1, 'Chama Sagrada (evocação)'),
(2, 'Consertar (transmutação)'),
(3, 'Estabilizar (necromancia)'),
(4, 'Luz (evocação)'),
(5, 'Orientação (adivinhação)'),
(6, 'Resistência (abjuração)'),
(7, 'Taumaturgia (transmutação)'),
(8, 'Bênção (encantamento)'),
(9, 'Comando (encantamento)'),
(10, 'Criar ou Destruir Água (transmutação)'),
(11, 'Curar Ferimentos (evocação)'),
(12, 'Detectar Magia (adivinhação, ritual)'),
(13, 'Detectar o Bem e Mal (adivinhação)'),
(14, 'Detectar Veneno e Doença (adivinhação, ritual)'),
(15, 'Escudo da Fé (abjuração)'),
(16, 'Infringir Ferimentos (necromancia)'),
(17, 'Palavra Curativa (evocação)'),
(18, 'Perdição (encantamento)'),
(19, 'Proteção contra o Bem e Mal (abjuração)'),
(20, 'Purificar Alimentos (transmutação, ritual)'),
(21, 'Raio Guiador (evocação)'),
(22, 'Santuário (abjuração)'),
(23, 'Acalmar Emoções (encantamento)'),
(24, 'Ajuda (abjuração)'),
(25, 'Aprimorar Habilidade (transmutação)'),
(26, 'Arma Espiritual (evocação)'),
(27, 'Augúrio (adivinhação, ritual)'),
(28, 'Cegueira/Surdez (necromancia)'),
(29, 'Chama Continua (evocação)'),
(30, 'Encontrar Armadilhas (adivinhação)'),
(31, 'Imobilizar Pessoa (encantamento)'),
(32, 'Localizar Objeto (adivinhação)'),
(33, 'Oração Curativa (evocação)'),
(34, 'Proteção contra Veneno (abjuração)'),
(35, 'Repouso Tranquilo (necromancia, ritual)'),
(36, 'Restauração Menor (abjuração)'),
(37, 'Silêncio (ilusão, ritual)'),
(38, 'Vínculo Protetor (abjuração)'),
(39, 'Zona da Verdade (encantamento)'),
(40, 'Andar na Água (transmutação, ritual)'),
(41, 'Animar mortos (necromancia)'),
(42, 'Círculo Mágico (abjuração)'),
(43, 'Clarividência (adivinhação)'),
(44, 'Criar Alimentos (conjuração)'),
(45, 'Dissipar Magia (abjuração)'),
(46, 'Enviar Mensagem (evocação)'),
(47, 'Espíritos Guardiões (conjuração)'),
(48, 'Falar com os Mortos (necromancia)'),
(49, 'Forjar Morte (necromancia, ritual)'),
(50, 'Glifo de Vigilância (abjuração)'),
(51, 'Idiomas (adivinhação)'),
(52, 'Luz do Dia (evocação)'),
(53, 'Mesclar-se às Rochas (transmutação, ritual)'),
(54, 'Palavra Curativa em Massa (evocação)'),
(55, 'Proteção contra Energia (abjuração)'),
(56, 'Rogar maldição (necromancia)'),
(57, 'Sinal de Esperança (abjuração)'),
(58, 'Remover Maldição (abjuração)'),
(59, 'Revivificar (necromancia)'),
(60, 'Adivinhação (adivinhação, ritual)'),
(61, 'Banimento (abjuração)'),
(62, 'Controlar a Água (transmutação)'),
(63, 'Localizar Criatura (adivinhação)'),
(64, 'Guardião da Fé (conjuração)'),
(65, 'Moldar Rochas (transmutação)'),
(66, 'Movimentação Livre (abjuração)'),
(67, 'Proteção contra a Morte (abjuração)'),
(68, 'Âncora Planar (abjuração)'),
(69, 'Coluna de Chamas (evocação)'),
(70, 'Comunhão (adivinhação, ritual)'),
(71, 'Conhecimento Lendário (adivinhação)'),
(72, 'Consagrar (evocação)'),
(73, 'Curar Ferimentos em Massa (evocação)'),
(74, 'Dissipar o Bem e Mal (abjuração)'),
(75, 'Missão (encantamento)'),
(76, 'Praga (necromancia)'),
(77, 'Praga de Insetos (conjuração)'),
(78, 'Restauração Maior (abjuração)'),
(79, 'Reviver os Mortos (necromancia)'),
(80, 'Vidência (adivinhação)'),
(81, 'Aliado Planar (conjuração)'),
(82, 'Barreira de Lâminas (evocação)'),
(83, 'Criar Mortos-Vivos (necromancia)'),
(84, 'Cura Completa (evocação)'),
(85, 'Encontrar o Caminho (adivinhação)'),
(86, 'Doença Plena (necromancia)'),
(87, 'Banquete dos Heróis (conjuração)'),
(88, 'Palavra de Recordação (conjuração)'),
(89, 'Proibição (abjuração, ritual)'),
(90, 'Visão da Verdade (adivinhação)'),
(91, 'Conjurar Celestial (conjuração)'),
(92, 'Forma Etérea (transmutação)'),
(93, 'Palavra Divina (evocação)'),
(94, 'Regeneração (transmutação)'),
(95, 'Ressurreição (necromancia)'),
(96, 'Símbolo (abjuração)'),
(97, 'Tempestade de Fogo (evocação)'),
(98, 'Viagem Planar (conjuração)'),
(99, 'Aura Sagrada (abjuração)'),
(100, 'Campo Antimagia (abjuração)'),
(101, 'Controlar o Clima (transmutação)'),
(102, 'Terremoto (evocação)'),
(103, 'Cura Completa em Massa (evocação)'),
(104, 'Portal (conjuração)'),
(105, 'Projeção Astral (necromancia)'),
(106, 'Ressurreição Verdadeira (necromancia)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_druida`
--

CREATE TABLE `magias_druida` (
  `magias_druida_cod` int(11) NOT NULL,
  `magias_druida_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_druida`
--

INSERT INTO `magias_druida` (`magias_druida_cod`, `magias_druida_nome`) VALUES
(1, 'Bordão Místico (transmutação)'),
(2, 'Chicote de Espinhos (transmutação)'),
(3, 'Consertar (transmutação)'),
(4, 'Criar Chamas (conjuração)'),
(5, 'Druidismo (transmutação)'),
(6, 'Orientação (adivinhação)'),
(7, 'Rajada de Veneno (conjuração)'),
(8, 'Resistência (abjuração)'),
(9, 'Amizade Animal (encantamento)'),
(10, 'Bom Fruto (transmutação)'),
(11, 'Constrição (conjuração)'),
(12, 'Criar ou Destruir Água (transmutação)'),
(13, 'Curar Ferimentos (evocação)'),
(14, 'Detectar Magia (adivinhação, ritual)'),
(15, 'Detectar Veneno e Doença (adivinhação, ritual)'),
(16, 'Enfeitiçar Pessoa (encantamento)'),
(17, 'Falar com Animais (adivinhação, ritual)'),
(18, 'Fogo das Fadas (evocação)'),
(19, 'Névoa Obscurecente (conjuração)'),
(20, 'Onda Trovejante (evocação)'),
(21, 'Palavra Curativa (evocação)'),
(22, 'Passos Longos (transmutação)'),
(23, 'Purificar Alimentos (transmutação, ritual)'),
(24, 'Salto (transmutação)'),
(25, 'Aprimorar Habilidade (transmutação)'),
(26, 'Crescer Espinhos (transmutação)'),
(27, 'Encontrar Armadilhas (adivinhação)'),
(28, 'Esfera Flamejante (conjuração)'),
(29, 'Esquentar Metal (transmutação)'),
(30, 'Imobilizar Pessoa (encantamento)'),
(31, 'Lâmina Flamejante (evocação)'),
(32, 'Localizar Animais ou Plantas (adivinhação, ritual)'),
(33, 'Localizar Objeto (adivinhação)'),
(34, 'Lufada de Vento (evocação)'),
(35, 'Mensageiro Animal (encantamento, ritual)'),
(36, 'Passos sem Pegadas (abjuração)'),
(37, 'Pele de Árvore (transmutação)'),
(38, 'Proteção contra Veneno (abjuração)'),
(39, 'Raio Lunar (evocação)'),
(40, 'Restauração Menor (abjuração)'),
(41, 'Sentido Bestial (adivinhação, ritual)'),
(42, 'Visão no Escuro (transmutação)'),
(43, 'Ampliar Plantas (transmutação)'),
(44, 'Andar na Água (transmutação, ritual)'),
(45, 'Conjurar Animais (conjuração)'),
(46, 'Convocar Relâmpagos (conjuração)'),
(47, 'Dissipar Magia (abjuração)'),
(48, 'Falar com Plantas (transmutação)'),
(49, 'Forjar Morte (necromancia, ritual)'),
(50, 'Luz do Dia (evocação)'),
(51, 'Mesclar-se às Rochas (transmutação, ritual)'),
(52, 'Muralha de Vento (evocação)'),
(53, 'Nevasca (conjuração)'),
(54, 'Proteção contra Energia (abjuração)'),
(55, 'Respirar na Água (transmutação, ritual)'),
(56, 'Confusão (encantamento)'),
(57, 'Conjurar Elementais Menores (conjuração)'),
(58, 'Conjurar Seres da Floresta (conjuração)'),
(59, 'Controlar a Água (transmutação)'),
(60, 'Dominar Besta (encantamento)'),
(61, 'Inseto Gigante (transmutação)'),
(62, 'Localizar Criatura (adivinhação)'),
(63, 'Malogro (necromancia)'),
(64, 'Metamorfose (transmutação)'),
(65, 'Moldar Rochas (transmutação)'),
(66, 'Movimentação Livre (abjuração)'),
(67, 'Muralha de Fogo (evocação)'),
(68, 'Pele de Pedra (abjuração)'),
(69, 'Tempestade de Gelo (evocação)'),
(70, 'Terreno Alucinógeno (ilusão)'),
(71, 'Vinha Esmagadora (conjuração)'),
(72, 'Âncora Planar (abjuração)'),
(73, 'Caminhar em Árvores (conjuração)'),
(74, 'Conjurar Elemental (conjuração)'),
(75, 'Comunhão com a Natureza (adivinhação, ritual)'),
(76, 'Cúpula Antivida (abjuração)'),
(77, 'Curar Ferimentos em Massa (evocação)'),
(78, 'Despertar (transmutação)'),
(79, 'Missão (encantamento)'),
(80, 'Muralha de Pedra (evocação)'),
(81, 'Praga (necromancia)'),
(82, 'Praga de Insetos (conjuração)'),
(83, 'Reencarnação (transmutação)'),
(84, 'Restauração Maior (abjuração)'),
(85, 'Vidência (adivinhação)'),
(86, 'Banquete de Heróis (conjuração)'),
(87, 'Caminhar no Vento (transmutação)'),
(88, 'Conjurar Fada (conjuração)'),
(89, 'Cura Completa (evocação)'),
(90, 'Encontrar o Caminho (adivinhação)'),
(91, 'Mover Terra (transmutação)'),
(92, 'Muralha de Espinhos (conjuração)'),
(93, 'Raio Solar (evocação)'),
(94, 'Teletransporte por Árvores (conjuração)'),
(95, 'Inverter a Gravidade (transmutação)'),
(96, 'Miragem (ilusão)'),
(97, 'Regeneração (transmutação)'),
(98, 'Tempestade de Fogo (evocação)'),
(99, 'Viagem Planar (conjuração)'),
(100, 'Antipatia/Simpatia (encantamento)'),
(101, 'Controlar o Clima (transmutação)'),
(102, 'Enfraquecer o Intelecto (encantamento)'),
(103, 'Explosão Solar (evocação)'),
(104, 'Formas Animais (transmutação)'),
(105, 'Terremoto (evocação)'),
(106, 'Tsunami (conjuração)'),
(107, 'Alterar Forma (transmutação)'),
(108, 'Ressurreição Verdadeira (necromancia)'),
(109, 'Sexto Sentido (adivinhação)'),
(110, 'Tempestade da Vingança (conjuração)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_feiticeiro`
--

CREATE TABLE `magias_feiticeiro` (
  `magias_feiticeiro_cod` int(11) NOT NULL,
  `magias_feiticeiro_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_feiticeiro`
--

INSERT INTO `magias_feiticeiro` (`magias_feiticeiro_cod`, `magias_feiticeiro_nome`) VALUES
(1, 'Amizade (encantamento)'),
(2, 'Ataque Certeiro (adivinhação)'),
(3, 'Consertar (transmutação)'),
(4, 'Espirro Ácido (conjuração)'),
(5, 'Globos de Luz (evocação)'),
(6, 'Ilusão Menor (ilusão)'),
(7, 'Luz (evocação)'),
(8, 'Mãos Mágicas (conjuração)'),
(9, 'Mensagem (transmutação)'),
(10, 'Prestidigitação (transmutação)'),
(11, 'Proteção contra Lâminas (abjuração)'),
(12, 'Raio de Fogo (evocação)'),
(13, 'Raio de Gelo (evocação)'),
(14, 'Rajada de Veneno (conjuração)'),
(15, 'Toque Arrepiante (necromancia)'),
(16, 'Toque Chocante (evocação)'),
(17, 'Armadura Arcana (abjuração)'),
(18, 'Compreender Idiomas (adivinhação, ritual)'),
(19, 'Detectar Magia (adivinhação, ritual)'),
(20, 'Disfarçar-se (ilusão)'),
(21, 'Enfeitiçar Pessoa (encantamento)'),
(22, 'Escudo Arcano (abjuração)'),
(23, 'Imagem Silenciosa (ilusão)'),
(24, 'Leque Cromático (ilusão)'),
(25, 'Mãos Flamejantes (evocação)'),
(26, 'Mísseis Mágicos (evocação)'),
(27, 'Névoa Obscurecente (conjuração)'),
(28, 'Onda Trovejante (evocação)'),
(29, 'Orbe Cromática (evocação)'),
(30, 'Queda Suave (transmutação)'),
(31, 'Raio Adoecente (necromancia)'),
(32, 'Raio de Bruxa (evocação)'),
(33, 'Recuo Acelerado (transmutação)'),
(34, 'Sono (encantamento)'),
(35, 'Salto (transmutação)'),
(36, 'Vitalidade Falsa (necromancia)'),
(37, 'Alterar-se (transmutação)'),
(38, 'Aprimorar Habilidade (transmutação)'),
(39, 'Arrombar (transmutação)'),
(40, 'Aumentar/Reduzir (transmutação)'),
(41, 'Cegueira/Surdez (necromancia)'),
(42, 'Coroa da Loucura (encantamento)'),
(43, 'Despedaçar (evocação)'),
(44, 'Detectar Pensamentos (adivinhação)'),
(45, 'Escuridão (transmutação)'),
(46, 'Força Fantasmagórica (ilusão)'),
(47, 'Imobilizar Pessoa (encantamento)'),
(48, 'Invisibilidade (ilusão)'),
(49, 'Levitação (transmutação)'),
(50, 'Lufada de Vento (evocação)'),
(51, 'Nublar (ilusão)'),
(52, 'Nuvem de Adagas (conjuração)'),
(53, 'Passo Nebuloso (conjuração)'),
(54, 'Patas de Aranha (transmutação)'),
(55, 'Raio Ardente (evocação)'),
(56, 'Reflexos (ilusão)'),
(57, 'Sugestão (encantamento)'),
(58, 'Teia (conjuração)'),
(59, 'Visão no Escuro (transmutação)'),
(60, 'Ver o Invisível (adivinhação)'),
(61, 'Andar na Água (transmutação, ritual)'),
(62, 'Bola de Fogo (evocação)'),
(63, 'Clarividência (adivinhação)'),
(64, 'Contramágica (abjuração)'),
(65, 'Dissipar Magia (abjuração)'),
(66, 'Forma Gasosa (transmutação)'),
(67, 'Idiomas (adivinhação)'),
(68, 'Imagem Maior (ilusão)'),
(69, 'Lentidão (transmutação)'),
(70, 'Luz do Dia (evocação)'),
(71, 'Medo (ilusão)'),
(72, 'Nevasca (conjuração)'),
(73, 'Névoa Fétida (conjuração)'),
(74, 'Padrão Hipnótico (ilusão)'),
(75, 'Piscar (transmutação)'),
(76, 'Proteção contra Energia (abjuração)'),
(77, 'Relâmpago (evocação)'),
(78, 'Respirar na Água (transmutação, ritual)'),
(79, 'Velocidade (transmutação)'),
(80, 'Voo (transmutação)'),
(81, 'Banimento (abjuração)'),
(82, 'Confusão (encantamento)'),
(83, 'Dominar Besta (encantamento)'),
(84, 'Invisibilidade Maior (ilusão)'),
(85, 'Malogro (necromancia)'),
(86, 'Metamorfose (transmutação)'),
(87, 'Muralha de Fogo (evocação)'),
(88, 'Pele de Pedra (abjuração)'),
(89, 'Porta Dimensional (conjuração)'),
(90, 'Tempestade de Gelo (evocação)'),
(91, 'Animar Objetos (transmutação)'),
(92, 'Círculo de Teletransporte (conjuração)'),
(93, 'Cone de Frio (evocação)'),
(94, 'Criação (ilusão)'),
(95, 'Dominar Pessoa (encantamento)'),
(96, 'Imobilizar Monstro (encantamento)'),
(97, 'Muralha de Pedra (evocação)'),
(98, 'Névoa Mortal (conjuração)'),
(99, 'Praga de Insetos (conjuração)'),
(101, 'Similaridade (ilusão)'),
(102, 'Telecinésia (transmutação)'),
(103, 'Ataque Visual (necromancia)'),
(104, 'Círculo da Morte (necromancia)'),
(105, 'Corrente de Relâmpagos (evocação)'),
(106, 'Desintegrar (transmutação)'),
(107, 'Globo de Invulnerabilidade (abjuração)'),
(108, 'Mover Terra (transmutação)'),
(109, 'Portal Arcano (conjuração)'),
(110, 'Raio Solar (evocação)'),
(111, 'Sugestão em Massa (encantamento)'),
(112, 'Visão da Verdade (adivinhação)'),
(113, 'Bola de Fogo Controlável (evocação)'),
(114, 'Dedo da Morte (necromancia)'),
(115, 'Forma Etérea (transmutação)'),
(116, 'Inverter a Gravidade (transmutação)'),
(117, 'Rajada Prismática (evocação)'),
(118, 'Teletransporte (conjuração)'),
(119, 'Tempestade de Fogo (evocação)'),
(120, 'Viagem Planar (conjuração)'),
(121, 'Dominar Monstro (encantamento)'),
(122, 'Explosão Solar (evocação)'),
(123, 'Nuvem Incendiária (conjuração)'),
(124, 'Palavra de Poder Atordoar (encantamento)'),
(125, 'Terremoto (evocação)'),
(126, 'Chuva de Meteoros (evocação)'),
(127, 'Desejo (conjuração)'),
(128, 'Palavra de Poder Matar (encantamento)'),
(129, 'Parar o Tempo (transmutação)'),
(130, 'Portal (conjuração)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_mago`
--

CREATE TABLE `magias_mago` (
  `magias_mago_cod` int(11) NOT NULL,
  `magias_mago_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_mago`
--

INSERT INTO `magias_mago` (`magias_mago_cod`, `magias_mago_nome`) VALUES
(1, 'Amizade (encantamento)'),
(2, 'Ataque Certeiro (adivinhação)'),
(3, 'Consertar (transmutação)'),
(4, 'Espirro Ácido (conjuração)'),
(5, 'Globos de Luz (evocação)'),
(6, 'Ilusão Menor (ilusão)'),
(7, 'Luz (evocação)'),
(8, 'Mãos Mágicas (conjuração)'),
(9, 'Mensagem (transmutação)'),
(10, 'Prestidigitação (transmutação)'),
(11, 'Proteção contra Lâminas (abjuração)'),
(12, 'Raio de Fogo (evocação)'),
(13, 'Raio de Gelo (evocação)'),
(14, 'Rajada de Veneno (conjuração)'),
(15, 'Toque Arrepiante (necromancia)'),
(16, 'Toque Chocante (evocação)'),
(17, 'Alarme (abjuração, ritual)'),
(18, 'Área Escorregadia (conjuração)'),
(19, 'Armadura Arcana (abjuração)'),
(20, 'Compreender Idiomas (adivinhação, ritual)'),
(21, 'Convocar Familiar (conjuração, ritual)'),
(22, 'Detectar Magia (adivinhação, ritual)'),
(23, 'Disco Flutuante de Tenser (conjuração, ritual)'),
(24, 'Disfarçar-se (ilusão)'),
(25, 'Enfeitiçar Pessoa (encantamento)'),
(26, 'Escrita Ilusória (ilusão, ritual)'),
(27, 'Escudo Arcano (abjuração)'),
(28, 'Identificação (adivinhação, ritual)'),
(29, 'Imagem Silenciosa (ilusão)'),
(30, 'Leque Cromático (ilusão)'),
(31, 'Mãos Flamejantes (evocação)'),
(32, 'Mísseis Mágicos (evocação)'),
(33, 'Névoa Obscurecente (conjuração)'),
(34, 'Onda Trovejante (evocação)'),
(35, 'Orbe Cromática (evocação)'),
(36, 'Passos Longos (transmutação)'),
(37, 'Proteção contra o Bem e Mal (abjuração)'),
(38, 'Queda Suave (transmutação)'),
(39, 'Raio Adoecente (necromancia)'),
(40, 'Raio de Bruxa (evocação)'),
(41, 'Recuo Acelerado (transmutação)'),
(42, 'Riso Histérico de Tasha (encantamento)'),
(43, 'Salto (transmutação)'),
(44, 'Servo Invisível (conjuração, ritual)'),
(45, 'Sono (encantamento)'),
(46, 'Vitalidade Falsa (necromancia)'),
(47, 'Alterar-se (transmutação)'),
(48, 'Arma Mágica (transmutação)'),
(49, 'Arrombar (transmutação)'),
(50, 'Aumentar/Reduzir (transmutação)'),
(51, 'Aura Mágica de Nystul (ilusão)'),
(52, 'Boca Encantada (ilusão, ritual)'),
(53, 'Cegueira/Surdez (necromancia)'),
(54, 'Chama Continua (evocação)'),
(55, 'Coroa da Loucura (encantamento)'),
(56, 'Despedaçar (evocação)'),
(57, 'Detectar Pensamentos (adivinhação)'),
(58, 'Escuridão (evocação)'),
(59, 'Esfera Flamejante (conjuração)'),
(60, 'Flecha Ácida de Melf (evocação)'),
(61, 'Força Fantasmagórica (ilusão)'),
(62, 'Imobilizar Pessoa (encantamento)'),
(63, 'Invisibilidade (ilusão)'),
(64, 'Levitação (transmutação)'),
(65, 'Localizar Objeto (adivinhação)'),
(66, 'Lufada de Vento (evocação)'),
(67, 'Nublar (ilusão)'),
(68, 'Nuvem de Adagas (conjuração)'),
(69, 'Passo Nebuloso (conjuração)'),
(70, 'Patas de Aranha (transmutação)'),
(71, 'Raio Ardente (evocação)'),
(72, 'Raio do Enfraquecimento (necromancia)'),
(73, 'Reflexos (ilusão)'),
(74, 'Repouso Tranquilo (necromancia, ritual)'),
(75, 'Sugestão (encantamento)'),
(76, 'Teia (conjuração)'),
(77, 'Tranca Arcana (abjuração)'),
(78, 'Truque de Corda (transmutação)'),
(79, 'Ver o Invisível (adivinhação)'),
(80, 'Visão no Escuro (transmutação)'),
(81, 'Animar Mortos (necromancia)'),
(82, 'Bola de Fogo (evocação)'),
(83, 'Círculo Mágico (abjuração)'),
(84, 'Clarividência (adivinhação)'),
(85, 'Contramágica (abjuração)'),
(86, 'Dificultar Detecção (abjuração)'),
(87, 'Dissipar Magia (abjuração)'),
(88, 'Enviar Mensagem (evocação)'),
(89, 'Forjar Morte (necromancia, ritual)'),
(90, 'Forma Gasosa (transmutação)'),
(91, 'Glifo de Vigilância (abjuração)'),
(92, 'Idiomas (adivinhação)'),
(93, 'Imagem Maior (ilusão)'),
(94, 'Lentidão (transmutação)'),
(95, 'Medo (ilusão)'),
(96, 'Montaria Fantasmagórica (ilusão, ritual)'),
(97, 'Nevasca (conjuração)'),
(98, 'Névoa Fétida (conjuração)'),
(99, 'Padrão Hipnótico (ilusão)'),
(100, 'Pequena Cabana de Leomund (evocação, ritual)'),
(101, 'Piscar (transmutação)'),
(102, 'Proteção contra Energia (abjuração)'),
(103, 'Relâmpago (evocação)'),
(104, 'Remover Maldição (abjuração)'),
(105, 'Respirar na Água (transmutação, ritual)'),
(106, 'Rogar Maldição (necromancia)'),
(107, 'Toque Vampírico (necromancia)'),
(108, 'Velocidade (transmutação)'),
(109, 'Voo (transmutação)'),
(110, 'Arca Secreta de Leomund (conjuração)'),
(111, 'Assassino Fantasmagórico (ilusão)'),
(112, 'Banimento (abjuração)'),
(113, 'Cão Fiel de Mordenkainen (conjuração)'),
(114, 'Confusão (encantamento)'),
(115, 'Conjurar Elementais Menores (conjuração)'),
(116, 'Controlar a Água (transmutação)'),
(117, 'Escudo de Fogo (evocação)'),
(118, 'Esfera Resiliente de Otiluke (evocação)'),
(119, 'Fabricar (transmutação)'),
(120, 'Invisibilidade Maior (ilusão)'),
(121, 'Localizar Criatura (adivinhação)'),
(122, 'Malogro (necromancia)'),
(123, 'Metamorfose (transmutação)'),
(124, 'Moldar Rochas (transmutação)'),
(125, 'Muralha de Fogo (evocação)'),
(126, 'Olho Arcano (adivinhação)'),
(127, 'Pele de Pedra (abjuração)'),
(128, 'Porta Dimensional (conjuração)'),
(129, 'Santuário Particular de Mordenkainen (abjuração)'),
(130, 'Tempestade de Gelo (evocação)'),
(131, 'Tentáculos Negros de Evard (conjuração)'),
(132, 'Terreno Alucinógeno (ilusão)'),
(133, 'Âncora Planar (abjuração)'),
(134, 'Animar Objetos (transmutação)'),
(135, 'Círculo de Teletransporte (conjuração)'),
(136, 'Cone de Frio (evocação)'),
(137, 'Conhecimento Lendário (adivinhação)'),
(138, 'Conjurar Elemental (conjuração)'),
(139, 'Contato Extraplanar (adivinhação, ritual)'),
(140, 'Criação (ilusão)'),
(141, 'Criar Passagem (transmutação)'),
(142, 'Despistar (ilusão)'),
(143, 'Dominar Pessoa (encantamento)'),
(144, 'Imobilizar Monstro (encantamento)'),
(145, 'Ligação Telepática de Rary (adivinhação, ritual)'),
(146, 'Mão de Bigby (evocação)'),
(147, 'Missão (encantamento)'),
(148, 'Modificar Memória (encantamento)'),
(149, 'Muralha de Energia (evocação)'),
(150, 'Muralha de Pedra (evocação)'),
(151, 'Névoa Mortal (conjuração)'),
(152, 'Similaridade (ilusão)'),
(153, 'Sonho (ilusão)'),
(154, 'Telecinésia (transmutação)'),
(155, 'Vidência (adivinhação)'),
(156, 'Ataque Visual (necromancia)'),
(157, 'Carne para Pedra (transmutação)'),
(158, 'Círculo da Morte (necromancia)'),
(159, 'Contingência (evocação)'),
(160, 'Corrente de Relâmpagos (evocação)'),
(161, 'Criar Mortos-Vivos (necromancia)'),
(162, 'Dança Irresistível de Otto (encantamento)'),
(163, 'Desintegrar (transmutação)'),
(164, 'Esfera Congelante de Otiluke (evocação)'),
(165, 'Globo de Invulnerabilidade (abjuração)'),
(166, 'Ilusão Programada (ilusão)'),
(167, 'Invocação Instantânea de Drawmij (conjuração, ritual)'),
(168, 'Mover Terra (transmutação)'),
(169, 'Muralha de Gelo (evocação)'),
(170, 'Portal Arcano (conjuração)'),
(171, 'Proteger Fortaleza (abjuração)'),
(172, 'Raio Solar (evocação)'),
(173, 'Recipiente Arcano (necromancia)'),
(174, 'Sugestão em Massa (encantamento)'),
(175, 'Visão da Verdade (adivinhação)'),
(176, 'Bola de Fogo Controlável (evocação)'),
(177, 'Dedo da Morte (necromancia)'),
(178, 'Espada de Mordenkainen (evocação)'),
(179, 'Inverter a Gravidade (transmutação)'),
(180, 'Isolamento (transmutação)'),
(181, 'Forma Etérea (transmutação)'),
(182, 'Mansão Magnifica de Mordenkainen (conjuração)'),
(183, 'Miragem (ilusão)'),
(184, 'Prisão de Energia (evocação)'),
(185, 'Projetar Imagem (ilusão)'),
(186, 'Rajada Prismática (evocação)'),
(187, 'Símbolo (abjuração)'),
(188, 'Simulacro (ilusão)'),
(189, 'Teletransporte (conjuração)'),
(190, 'Viagem Planar (conjuração)'),
(191, 'Antipatia/Simpatia (encantamento)'),
(192, 'Campo Antimagia (abjuração)'),
(193, 'Clone (necromancia)'),
(194, 'Controlar o Clima (transmutação)'),
(195, 'Dominar Monstro (encantamento)'),
(196, 'Enfraquecer o Intelecto (encantamento)'),
(197, 'Explosão Solar (evocação)'),
(198, 'Labirinto (conjuração)'),
(199, 'Limpar a Mente (abjuração)'),
(200, 'Nuvem Incendiária (conjuração)'),
(201, 'Palavra de Poder Atordoar (encantamento)'),
(202, 'Semiplano (conjuração)'),
(203, 'Telepatia (evocação)'),
(204, 'Alterar Forma (transmutação)'),
(205, 'Aprisionamento (abjuração)'),
(206, 'Chuva de Meteoros (evocação)'),
(207, 'Desejo (conjuração)'),
(208, 'Encarnação Fantasmagórica (ilusão)'),
(209, 'Metamorfose Verdadeira (transmutação)'),
(210, 'Muralha Prismática (abjuração)'),
(211, 'Palavra de Poder Matar (encantamento)'),
(212, 'Parar o Tempo (transmutação)'),
(213, 'Portal (conjuração)'),
(214, 'Projeção Astral (necromancia)'),
(215, 'Sexto Sentido (adivinhação)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_paladino`
--

CREATE TABLE `magias_paladino` (
  `magias_paladino_cod` int(11) NOT NULL,
  `magias_paladino_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_paladino`
--

INSERT INTO `magias_paladino` (`magias_paladino_cod`, `magias_paladino_nome`) VALUES
(1, 'Auxílio Divino (evocação)'),
(2, 'Bênção (encantamento)'),
(3, 'Comando (encantamento)'),
(4, 'Curar Ferimentos (evocação)'),
(5, 'Destruição Colérica (evocação)'),
(6, 'Destruição Lancinante (evocação)'),
(7, 'Destruição Trovejante (evocação)'),
(8, 'Detectar o Bem e Mal (adivinhação)'),
(9, 'Detectar Magia (adivinhação, ritual)'),
(10, 'Detectar Veneno e Doença (adivinhação, ritual)'),
(11, 'Duelo Compelido (encantamento)'),
(12, 'Escudo da Fé (abjuração)'),
(13, 'Heroísmo (encantamento)'),
(14, 'Proteção contra o Bem e Mal (abjuração)'),
(15, 'Purificar Alimentos (transmutação, ritual)'),
(16, 'Ajuda (abjuração)'),
(17, 'Arma Mágica (transmutação)'),
(18, 'Convocar Montaria (conjuração)'),
(19, 'Localizar Objeto (adivinhação)'),
(20, 'Marca da Punição (evocação)'),
(21, 'Proteção contra Veneno (abjuração)'),
(22, 'Restauração Menor (abjuração)'),
(23, 'Zona da Verdade (encantamento)'),
(24, 'Arma Elemental (transmutação)'),
(25, 'Aura de Vitalidade (evocação)'),
(26, 'Círculo Mágico (abjuração)'),
(27, 'Criar Alimentos (conjuração)'),
(28, 'Destruição Cegante (evocação)'),
(29, 'Dissipar Magia (abjuração)'),
(30, 'Luz do Dia (evocação)'),
(31, 'Manto do Cruzado (evocação)'),
(32, 'Remover Maldição (abjuração)'),
(33, 'Revivificar (necromancia)'),
(34, 'Aura de Pureza (abjuração)'),
(35, 'Aura de Vida (abjuração)'),
(36, 'Banimento (abjuração)'),
(37, 'Destruição Estonteante (evocação)'),
(38, 'Localizar Criatura (adivinhação)'),
(39, 'Proteção contra a Morte (abjuração)'),
(40, 'Círculo de Poder (abjuração)'),
(41, 'Destruição Banidora (abjuração)'),
(42, 'Dissipar o Bem e Mal (abjuração)'),
(43, 'Missão (encantamento)'),
(44, 'Onda Destrutiva (evocação)'),
(45, 'Reviver os Mortos (necromancia)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `magias_patrulheiro`
--

CREATE TABLE `magias_patrulheiro` (
  `magias_patrulheiro_cod` int(11) NOT NULL,
  `magias_patrulheiro_nome` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `magias_patrulheiro`
--

INSERT INTO `magias_patrulheiro` (`magias_patrulheiro_cod`, `magias_patrulheiro_nome`) VALUES
(1, 'Alarme (abjuração, ritual)'),
(2, 'Amizade Animal (encantamento)'),
(3, 'Bom Fruto (transmutação)'),
(4, 'Curar Ferimentos (evocação)'),
(5, 'Detectar Magia (adivinhação, ritual)'),
(6, 'Detectar Veneno e Doença (adivinhação, ritual)'),
(7, 'Falar com Animais (adivinhação, ritual)'),
(8, 'Golpe Constritor (conjuração)'),
(9, 'Marca do Caçador (adivinhação)'),
(10, 'Névoa Obscurecente (conjuração)'),
(11, 'Passos Longos (transmutação)'),
(12, 'Salto (transmutação)'),
(13, 'Saraivada de Espinhos (conjuração)'),
(14, 'Cordão de Flechas (transmutação)'),
(15, 'Crescer Espinhos (transmutação)'),
(16, 'Encontrar Armadilhas (adivinhação)'),
(17, 'Localizar Animais ou Plantas (adivinhação, ritual)'),
(18, 'Localizar Objeto (adivinhação)'),
(19, 'Mensageiro Animal (encantamento, ritual)'),
(20, 'Passos sem Pegadas (abjuração)'),
(21, 'Pele de Árvore (transmutação)'),
(22, 'Proteção contra Veneno (abjuração)'),
(23, 'Restauração Menor (abjuração)'),
(24, 'Sentido Bestial (adivinhação, ritual)'),
(25, 'Silêncio (ilusão, ritual)'),
(26, 'Visão no Escuro (transmutação)'),
(27, 'Ampliar Plantas (transmutação)'),
(28, 'Andar na Água (transmutação, ritual)'),
(29, 'Conjurar Animais (conjuração)'),
(30, 'Conjurar Rajada (conjuração)'),
(31, 'Dificultar Detecção (abjuração)'),
(32, 'Falar com Plantas (transmutação)'),
(33, 'Flecha Relampejante (transmutação)'),
(34, 'Luz do Dia (evocação)'),
(35, 'Muralha de Vento (evocação)'),
(36, 'Proteção contra Energia (abjuração)'),
(37, 'Respirar na Água (transmutação, ritual)'),
(38, 'Conjurar Seres da Floresta (conjuração)'),
(39, 'Localizar Criatura (adivinhação)'),
(40, 'Movimentação Livre (abjuração)'),
(41, 'Pele de Pedra (abjuração)'),
(42, 'Vinha Esmagadora (conjuração)'),
(43, 'Aljava Veloz (transmutação)'),
(44, 'Caminhar em Árvores (conjuração)'),
(45, 'Comunhão com a Natureza (adivinhação, ritual)'),
(46, 'Conjurar Saraivada (conjuração)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagem`
--

CREATE TABLE `personagem` (
  `id` int(11) NOT NULL,
  `perso` varchar(600) NOT NULL,
  `nome` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `personagem`
--

INSERT INTO `personagem` (`id`, `perso`, `nome`) VALUES
(70, '27735|Anão|Anão da Colina|0|0|0|0|Bárbaro|Caminho do Furioso|0|0|0|0|0|0|0|0|0|0|0|0|4|Nobre|+2|   2.700/6.500|Leal/Neutro|08|08|10|24|09|08| -1| -1|  0| +7| -1| -1|Um machado grande.\r\n					Dois machados de mão.\r\n					Um pacote de aventureiro e quatro azagaias.\r\n					|7.5M|37|4D12', 1),
(71, '72535|Anão|Anão da Montanha|0|0|0|0|Bárbaro|Caminho do Furioso|0|0|0|0|0|0|0|0|0|0|0|0|4|Marinheiro|+2|   2.700/6.500|Neutro/Neutro|10|08|10|24|08|08|  0| -1|  0| +7| -1| -1|Um machado grande.\r\n					Dois machados de mão.\r\n					Um pacote de aventureiro e quatro azagaias.\r\n					|7.5M|33|4D12', 1),
(72, '41863123|Humano|0|0|0|Humano Comum|0|Mago|0|0|0|0|0|0|0|0|0|Escola de Transmutação|0|0|0|20|Criminoso|+6|355.000/355.000|Caótico/Neutro|10|09|09|09|24|09|  0| -1| -1| -1| +7| -1|Um bordão.\r\n					Uma bolsa de componentes.\r\n					Um pacote de estudioso.\r\n					Um grimório.\r\n					|9M|62|20D6', 1),
(73, '4726|Humano|0|0|0|Humano Variante|0|Mago|0|0|0|0|0|0|0|0|0|Escola de Transmutação|0|0|0|20|Herói do Povo|+6|355.000/355.000|Caótico/Neutro|09|09|09|24|10|09| -1| -1| -1| +7|  0| -1|Um bordão.\r\n					Uma bolsa de componentes.\r\n					Um pacote de estudioso.\r\n					Um grimório.\r\n					|9M|62|20D6', 1),
(74, '13248|Humano|0|0|0|Humano|0|Paladino|0|0|0|0|0|0|0|0|0|0|0|Juramento dos Anciões|0|13|Herói do Povo|+5|120.000/140.000|Leal/Neutro|15|09|12|15|15|09| +2| -1| +1| +2| +2| -1|Uma arma marcial e um escudo.\r\n					Cinco azagaias.\r\n					Um pacote de sacerdote.\r\n					Cota de malha e um símbolo sagrado.\r\n					|9M|95|13D10', 1),
(75, '428678|Meio-Elfo|0|0|0|0|0|Mago|0|0|0|0|0|0|0|0|0|Escola de Transmutação|0|0|0|10|Marinheiro|+4| 64.000/85.000|Neutro/Neutro|10|08|08|15|15|15|  0| -1| -1| +2| +2| +2|Um bordão.\r\n					Uma bolsa de componentes.\r\n					Um pacote de estudioso.\r\n					Um grimório.\r\n					|9M|32|10D6', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `prof_classe`
--

CREATE TABLE `prof_classe` (
  `prof_classe_cod` int(11) NOT NULL,
  `prof_classe_nome` varchar(30) DEFAULT NULL,
  `prof_classe_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `prof_classe`
--

INSERT INTO `prof_classe` (`prof_classe_cod`, `prof_classe_nome`, `prof_classe_desc`) VALUES
(1, 'Bárbaro', 'Armaduras: Armaduras leves, armaduras médias e escudos\r\n\r\nArmas: Armas simples, armas marciais \r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Força, Constituição\r\n\r\nPerícias: Escolha duas dentre Adestrar Animais, Atletismo, Intimidação, Natureza, Percepção e Sobrevivência'),
(2, 'Bardo', 'Armaduras: Armaduras leves\r\n\r\nArmas: Armas simples, bestas de mão, espadas longas, rapieiras, espadas curtas\r\n\r\nFerramentas: Três instrumentos musicais, à sua escolha\r\n\r\nTestes de Resistência: Destreza, Carisma\r\n\r\nPerícias: Escolha três quaisquer'),
(3, 'Bruxo', 'Armaduras: Armaduras leves\r\n\r\nArmas: Armas simples\r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Sabedoria, Carisma \r\n\r\nPerícias: Escolha duas dentre Arcanismo, Enganação, História, Intimidação, Investigação, Natureza e Religião'),
(4, 'Clérigo', 'Armaduras: Armaduras leves, armaduras médias, escudos\r\n\r\nArmas: Todas as armas simples\r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Sabedoria, Carisma\r\n\r\nPerícias: Escolha duas dentre História, Intuição, Medicina, Persuasão e Religião'),
(5, 'Druida', 'Armaduras: Armaduras leves, armaduras médias, escudos (druidas não irão vestir armaduras ou usar escudos feitos de metal)\r\n\r\nArmas: Clavas, adagas, dardos, azagaias, maças, bordões, cimitarras, foices, fundas e lanças.\r\n\r\nFerramentas: Kit de herbalismo\r\n\r\nTestes de Resistência: Inteligência, Sabedoria\r\n\r\nPerícias: Escolha duas dentre Arcanismo, Adestrar Animais, Intuição, Medicina, Natureza, Percepção, Religião e Sobrevivência'),
(6, 'Feiticeiro', 'Armaduras: Nenhuma\r\n\r\nArmas: Adagas, dardos, fundas, bordões e bestas leves\r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Constituição, Carisma\r\n\r\nPerícias: Escolha duas dentre Arcanismo, Enganação, Intuição, Intimidação, Persuasão e Religião'),
(7, 'Guerreiro', 'Armaduras: Todas as armaduras, escudos \r\n\r\nArmas: Armas simples, armas marciais\r\n\r\nFerramentas: nenhum\r\n\r\nTestes de Resistência: Força, Constituição\r\n\r\nPerícias: Escolha duas dentre Acrobacia, Adestrar Animais, Atletismo, História, Intuição, Intimidação, Percepção e Sobrevivência'),
(8, 'Ladino', 'Armaduras: Armaduras leves\r\n\r\nArmas: Armas simples, bestas de mão, espadas longas, rapieiras, espadas curtas\r\n\r\nFerramentas: Ferramentas de ladrão\r\n\r\nTestes de Resistência: Destreza, Inteligência\r\n\r\nPerícias: Escolha quatro dentre Acrobacia, Atletismo, Atuação, Enganação, Furtividade, Intimidação, Intuição, Investigação, Percepção, Persuasão e Prestidigitação'),
(9, 'Mago', 'Armaduras: Nenhuma\r\n\r\nArmas: Adagas, dardos, fundas, bordões, bestas leves\r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Inteligência, Sabedoria\r\n\r\nPerícias: Escolha duas dentre Arcanismo, História, Intuição, Investigação, Medicina e Religião'),
(10, 'Monge', 'Armaduras: Nenhuma\r\n\r\nArmas: Armas simples, espadas curtas\r\n\r\nFerramentas: Escolha um tipo de ferramenta de artesão ou um instrumento musical\r\n\r\nTestes de Resistência: Força, Destreza\r\n\r\nPerícias: Escolha duas dentre Acrobacia, Atletismo, Furtividade, História, Intuição e Religião'),
(11, 'Paladino', 'Armaduras: Todas as armaduras, escudos\r\n\r\nArmas: Armas simples, armas marciais\r\n\r\nFerramentas: Nenhum\r\n\r\nTestes de Resistência: Sabedoria, Carisma\r\n\r\nPerícias: Escolha duas dentre Atletismo, Intuição, Intimidação, Medicina, Persuasão e Religião'),
(12, 'Patrulheiro', 'Armaduras: Armaduras leves, armaduras médias, escudos\r\n\r\nArmas: Armas simples, armas marciais\r\n\r\nFerramentas: Nenhuma\r\n\r\nTestes de Resistência: Força, Destreza\r\n\r\nPerícias: Escolha três dentre Adestrar Animais, Atletismo, Furtividade, Intuição, Investigação, Natureza, Percepção e Sobrevivência');

-- --------------------------------------------------------

--
-- Estrutura da tabela `raca_inc`
--

CREATE TABLE `raca_inc` (
  `raca_inc_cod` int(11) DEFAULT NULL,
  `raca_inc_nome` varchar(60) DEFAULT NULL,
  `raca_inc_for` int(11) DEFAULT NULL,
  `raca_inc_des` int(11) DEFAULT NULL,
  `raca_inc_con` int(11) DEFAULT NULL,
  `raca_inc_int` int(11) DEFAULT NULL,
  `raca_inc_sab` int(11) DEFAULT NULL,
  `raca_inc_car` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `raca_inc`
--

INSERT INTO `raca_inc` (`raca_inc_cod`, `raca_inc_nome`, `raca_inc_for`, `raca_inc_des`, `raca_inc_con`, `raca_inc_int`, `raca_inc_sab`, `raca_inc_car`) VALUES
(1, 'Anão', 0, 0, 2, 0, 0, 0),
(2, 'Anão da Colina', 0, 0, 2, 0, 1, 0),
(3, 'Anão da Montanha', 2, 0, 2, 0, 0, 0),
(4, 'Elfo', 0, 2, 0, 0, 0, 0),
(5, 'Alto Elfo', 0, 2, 0, 1, 0, 0),
(6, 'Elfo da Floresta', 0, 2, 0, 0, 1, 0),
(7, 'Elfo Negro (Drow)', 0, 2, 0, 0, 0, 1),
(8, 'Halfling', 0, 2, 0, 0, 0, 0),
(9, 'Halfling Pés Leves', 0, 2, 0, 0, 0, 1),
(10, 'Halfling Robusto', 0, 2, 1, 0, 0, 0),
(11, 'Humano', 1, 1, 1, 1, 1, 1),
(12, 'Humano Variante', 0, 0, 0, 0, 0, 0),
(13, 'Draconato', 2, 0, 0, 0, 0, 1),
(14, 'Gnomo', 0, 0, 0, 2, 0, 0),
(15, 'Gnomo da Floresta', 0, 1, 0, 2, 0, 0),
(16, 'Gnomo das Rochas', 0, 0, 1, 2, 0, 0),
(17, 'Meio-Elfo', 0, 0, 0, 0, 0, 2),
(18, 'Meio-Orc', 2, 0, 1, 0, 0, 0),
(19, 'Tiefling', 0, 0, 0, 1, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `talento`
--

CREATE TABLE `talento` (
  `talento_cod` int(11) NOT NULL,
  `talento_nome` varchar(30) NOT NULL,
  `talento_desc` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `talento`
--

INSERT INTO `talento` (`talento_cod`, `talento_nome`, `talento_desc`) VALUES
(1, 'Adepto Elemental', 'Pré-requisito: Capacidade de conjurar pelo menos uma magia\r\n\r\nQuando você ganha esse talento, escolha um dos tipos de dano a seguir: ácido, elétrico, fogo, frio ou trovão.\r\nAs magias que você conjurar ignoram resistência a dano do tipo escolhido. Além disso, quando você rola o dano para uma magia que você conjurar que causar dano desse tipo, você pode tratar qualquer 1 num dado de dano como um 2.\r\nVocê pode escolher esse talento diversas vezes. A cada vez que o fizer, você deve escolher um tipo diferente de dano.'),
(2, 'Adepto Marcial', 'Você tem treinamento marcial que permite a você realizar manobras de combate especiais. Você ganha os seguintes benefícios:\r\n- Você aprende duas manobras, à sua escolha, das que estão disponíveis ao arquétipo Mestre de Batalha na classe guerreiro. Se a manobra que você usar obrigar um alvo a realizar um teste de resistência, a CD do teste de resistência será igual a 8 + seu bônus de proficiência + seu modificador de Força ou Destreza (à sua escolha).\r\n- Se você já tiver dados de superioridade, você ganha um adicional; do contrário, você terá um dado de superioridade, que é um d6. Esse dado é usado para abastecer suas manobras. Um dado de superioridade é gasto quando você o usa. Você recupera seus dados de superioridade gastos quando termina um descanso curto ou longo.'),
(3, 'Alerta', 'Sempre a espera de perigo, você ganha os seguintes benefícios:\r\n- Você recebe +5 de bônus em iniciativa.\r\n- Você não pode ser surpreso enquanto estiver consciente.\r\n- Outras criaturas não ganham vantagem nas jogadas de ataque contra você por estarem escondidas de você.'),
(4, 'Ambidestro', 'Você dominou o estilo de luta com duas armas, ganhando os seguintes benefícios:\r\n- Você ganha +1 de bônus na CA enquanto estiver empunhando uma arma corpo-a-corpo em cada mão.\r\n- Você pode usar combater com duas armas mesmo que a arma de uma mão que você está empunhando não seja leve.\r\n- Você pode sacar ou guardar duas armas de uma mão quando você, normalmente, seria capaz de sacar ou guardar apenas uma.'),
(5, 'Atacante Bestial', 'Uma vez por turno, quando você rolar o dano para um ataque corpo-a-corpo com arma, você pode jogar novamente o dado de dano da arma e usar qualquer dos valores.'),
(6, 'Atirador Aguçado', 'Você dominou o uso de armas à distância e pode realizar tiros que seriam impossíveis para outros. Você ganha os seguintes benefícios:\r\n- Atacar um alvo além da distância normal não impõem desvantagem nas suas jogadas de ataque com armas à distância.\r\n- Seus ataques com armas à distância ignoram meia-cobertura e três-quartos de cobertura.\r\n- Antes de realizar um ataque com uma arma à distância na qual você seja proficiente, você pode escolher sofrer  5 de penalidade na jogada de ataque. Se o ataque atingir, você adiciona +10 no dano do ataque.'),
(7, 'Atirador de Magia', 'Pré-requisito: Capacidade de conjurar pelo menos uma magia\r\n\r\nVocê aprendeu técnicas para aprimorar seus ataques com certos tipos de magia, ganhando os seguintes benefícios:\r\n- Quando você conjura uma magia que requer que você realize uma jogada de ataque, o alcance da magia é dobrada.\r\n- Seus ataques à distância com magia ignoram meia-cobertura ou três-quartos de cobertura.\r\n- Você aprende um truque que requer uma jogada de ataque. Escolha o truque da lista de magias do bardo, bruxo, clérigo, druida, feiticeiro ou mago. Sua habilidade de conjuração para esse truque depende da lista de magia a qual você escolheu o truque: Carisma para bardo, bruxo ou feiticeiro; Sabedoria para clérigo ou druida; ou Inteligência para mago.'),
(8, 'Atleta', 'Você passou por extenso treinamento físico para ganhar os seguintes benefícios:\r\n- Aumente seu valor de Força ou Destreza em 1, até o máximo de 20.\r\n- Quando você estiver caído, se levantar requer apenas 1,5 metro do seu deslocamento.\r\n- Escalar não custa movimento adicional a você.\r\n- Você pode realizar um salto em distância correndo ou um salto em altura correndo se movendo apenas um passo de ajuste de 1,5 metro, ao invés de 3 metros.'),
(9, 'Ator', 'Perito em mimica e dramaturgia, você recebe os seguintes benefícios:\r\n- Aumente seu valor de Carisma em 1, até o máximo de 20.\r\n- Você tem vantagem em testes de Carisma (Atuação) e Carisma (Enganação) quando você estiver tentando se passar por uma pessoa diferente.\r\n- Você pode imitar a articulação de outra pessoa ou os sons feitos por outras criaturas. Você deve ter ouvido a pessoa falando ou ouvido a criatura fazendo o som por, pelo menos, 1 minuto. Um sucesso num teste de Sabedoria (Intuição) resistido pelo seu teste de Carisma (Enganação) permite que um ouvinte\r\ndetermine que o efeito é falso.'),
(10, 'Combatente Montado', 'Você é um oponente perigoso de se enfrentar quando está montado. Enquanto estiver montado e não estiver incapacitado, você ganha os seguintes benefícios:\r\n- Você tem vantagem nas jogadas de ataque corpo-a-corpo contra qualquer criatura desmontada que seja menor que a sua montaria.\r\n- Você pode forçar que um ataque direcionado a sua montaria seja direcionado a você, em seu lugar.\r\n- Se sua montaria for alvo de um efeito que permita a ela realizar um teste de resistência de Destreza para reduzir o dano à metade, ao invés disso, ela não sofre qualquer dano se for bem sucedida no teste de resistência, e apenas metade se falhar.'),
(11, 'Conjurador de Guerra', 'Pré-requisito: Capacidade de conjurar pelo menos uma magia\r\n\r\nVocê praticou a conjuração de magias no meio do combate, aprendendo técnicas que lhe concedem os seguintes benefícios:\r\n- Você tem vantagem em testes de resistência de Constituição para manter sua concentração em uma magia quando você sofrer dano.\r\n- Você pode realizar os componentes somáticos de uma magia mesmo quando está com armas ou um escudo em uma ou ambas as mãos.\r\n- Quando o movimento de uma criatura hostil provocar um ataque de oportunidade para você, você pode usar sua reação para conjurar uma magia na criatura, ao invés de realizar o ataque de oportunidade. A magia deve ter um tempo de conjuração de 1 ação e deve ter\r\napenas uma criatura como alvo.'),
(12, 'Conjurador de Ritual', 'Pré-requisito: Inteligência ou Sabedoria 13 ou maior\r\n\r\nVocê aprendeu um número de magias que você pode conjurar como rituais. Essas magias são escritas em um livro de rituais, o qual deve estar em suas mãos enquanto você conjura uma dessas magias.\r\nQuando você escolhe esse talento, você adquire um livro de rituais que contem duas magias de 1° nível, à sua escolha. Escolha uma das seguintes classes: bardo, bruxo, clérigo, druida, feiticeiro ou mago. Você deve escolher suas magias da lista de magias dessa classe e as magias escolhidas devem ter o descritor ritual. A classe que você escolheu também determina a habilidade de conjuração dessas magias: Carisma para bardo, bruxo ou feiticeiro; Sabedoria para clérigo ou druida; ou Inteligência para mago.\r\nSe você encontrar uma magia na forma escrita, como a contida em um pergaminho de magia ou o grimório de um mago, você é capaz de adicioná-la ao seu livro de rituais. A magia deve estar na lista de magias da classe escolhida, o nível da magia não pode ser maior que metade do seu nível (arredondado para cima) e deve conter o descritor ritual. O processo para copiar a magia no seu livro de rituais leva 2 horas por nível da magia e custa 50 po por nível. O custo representa os componentes materiais que você gasta para experimentar a magia até dominá-la, bem como as finas tintas utilizadas para escrevê-la.'),
(13, 'Curandeiro', 'Você é um cirurgião capacitado, permitindo que você trate de ferimentos rapidamente, trazendo seus aliados de volta à luta. Você adquire os seguintes benefícios:\r\n- Quando você usar um kit de primeiros socorros para estabilizar uma criatura morrendo, a criatura recupera 1 ponto de vida, ao invés disso.\r\n- Com uma ação, você pode gastar um uso do kit de primeiros-socorros para tratar de uma criatura e restaurar 1d6 + 4 pontos de vida mais uma quantidade de pontos de vida adicionais igual ao número total de Dados de Vida da criatura. A criatura não pode recuperar pontos de vida através desse talento novamente até ter terminado um descanso curto ou longo.'),
(14, 'Duelista Defensivo', 'Pré-requisito: Destreza 13 ou maior\r\n\r\nQuando você estiver empunhando uma arma de acuidade com a qual você seja proficiente e outra criatura atingir você com um ataque corpo-a-corpo, você pode usar sua reação para adicionar seu bônus de proficiência a sua CA para esse ataque, potencialmente fazendo o ataque errar.'),
(15, 'Especialista em Besta', 'Graças a sua pratica extensiva com bestas, você ganha os seguintes benefícios:\r\n- Você ignora a qualidade de recarga de bestas nas quais você é proficiente.\r\n- Estar a 1,5 metro de uma criatura hostil não impõem desvantagem nas suas jogadas de ataque à distância.\r\n- Quando você usa a ação de Ataque e ataca com uma arma de uma mão, você pode usar sua ação bônus para atacar com uma besta de mão carregada que você esteja empunhando.'),
(16, 'Especialista em Briga', 'Acostumado a brigas de bar usando qualquer coisa como armas, e na falta, os punhos, você ganha os seguintes benefícios:\r\n- Aumente o valor de Força ou Constituição em 1, até o máximo de 20.\r\n- Seus ataques desarmados causam 1d4 de dano.\r\n- Quando você atinge uma criatura com um ataque desarmado ou com uma arma improvisada, no seu turno, você pode usar uma ação bônus para tentar agarrar o alvo.'),
(17, 'Explorador de Cavernas', 'Alerta às armadilhas escondidas e portas secretas encontradas em muitas masmorras, você ganha os seguintes benefícios:\r\n- Você tem vantagem em testes de Sabedoria (Percepção) e de Inteligência (Investigação) feitos para detectar a presença de portas secretas.\r\n- Você tem vantagem em testes de resistência feitos para evitar ou resistir a armadilhas.\r\n- Você tem resistência ao dano causado por armadilhas.\r\n- Você pode procurar armadilhas enquanto viaja a um ritmo normal, ao invés de metade do ritmo.'),
(18, 'Imobilizador', 'Pré-requisito: Força 13 ou maior\r\n\r\nVocê desenvolveu a perícia necessária para se prender a alguém em um combate engajado. Você recebe os seguintes benefícios:\r\n- Você tem vantagem nas jogadas de ataque contra uma criatura agarrada.\r\n- Você pode usar sua ação para tentar imobilizar uma criatura agarrada por você. Para tanto, realize outro teste de agarrar. Se você for bem sucedido, você e a criatura estarão ambos impedidos até o agarre terminar.'),
(19, 'Iniciado em Magia', 'Escolha uma classe: bardo, bruxo, clérigo, druida, feiticeiro ou mago. Você aprende dois truques da lista de magias da classe escolhida.\r\nAlém disso, escolha uma magia de 1° nível da mesma lista. Você aprende essa magia e pode conjura-la com o menor nível possível. Uma vez que a conjure, você precisa terminar um descanso longo para poder conjura-la novamente. Essa restrição aplica-se apenas à magia adquirida através desse talento.\r\nSua habilidade de conjuração depende da classe que você escolher: Carisma para bardo, bruxo ou feiticeiro; Sabedoria para clérigo ou druida; ou Inteligência para mago.'),
(20, 'Investida Poderosa', 'Quando você usa a ação de Disparada, você pode usar sua ação bônus para realizar um ataque corpo-a-corpo com arma ou para empurrar uma criatura.\r\nSe você se mover, pelo menos, 3 metros em linha reta, imediatamente antes de realizar essa ação bônus, você pode tanto ganhar +5 de bônus na jogada de dano do ataque (se você escolher realizar um ataque corpo-a corpo e atingir) ou empurrar o alvo até 3 metros de você (se você escolher empurrar e for bem sucedido).'),
(21, 'Líder Inspirador', 'Pré-requisito: Carisma 13 ou maior\r\n\r\nVocê pode gastar 10 minutos inspirando seus companheiros, suportando a vontade deles de lutar. Quando fizer isso, escolha até seis criaturas amigáveis (que pode incluir você) a até 9 metros de você que possam ver ou ouvir você e possam te compreender. Cada criatura ganha pontos de vida temporários igual ao seu nível + seu modificador de Carisma. Uma criatura não pode ganhar pontos de vida temporários desse talento novamente até terminar um descanso curto ou longo.'),
(22, 'Maestria em Arma de Haste', 'Você consegue manter seus inimigos afastados utilizando armas de haste. Você ganha os seguintes benefícios:\r\n- Quando você realiza a ação de Ataque e ataca com uma glaive, alabarda ou bordão, você pode usar uma ação bônus para realizar um ataque corpo-a-corpo com a outra extremidade da arma. Esse ataque usa o mesmo modificador de habilidade do ataque primário. O dado de dano da arma para esse ataque é um d4 e o ataque causa dano de concussão.\r\n- Enquanto você estiver empunhando uma glaive, alabarda, lança longa ou bastão, as outras criaturas provocam um ataque de oportunidade a você quando entrarem no seu alcance.'),
(23, 'Maestria em Armadura Média', 'Pré-requisito: Proficiência em armadura média\r\n\r\nVocê praticou seus movimentos usando armaduras pesadas para ganhar os seguintes benefícios:\r\n- Vestir uma armadura média não lhe impõe desvantagem em testes de Destreza (Furtividade).\r\n- Quando você estiver vestindo uma armadura média, você pode adicionar 3, ao invés de 2, à sua CA, se você tiver Destreza 16 ou maior.'),
(24, 'Maestria em Armadura Pesada', 'Pré-requisito: Proficiência em armadura pesada\r\n\r\nVocê pode usar sua armadura para defletir ataques potencialmente fatais a outros. Você ganha os seguintes benefícios:\r\n- Aumente seu valor de Força em 1, até o máximo de 20.\r\n- Quando você estiver vestindo uma armadura pesada, dano de concussão, cortante e perfurante que você receba de ataques não-mágicos será reduzido em 3.'),
(25, 'Matador de Conjuradores', 'Você praticou técnicas úteis em combate corpo-a-corpo contra conjuradores, ganhando os seguintes benefícios:\r\n- Quando uma criatura a até 1,5 metro de você conjurar uma magia, você pode usar sua reação para realizar um ataque corpo-a corpo contra ela.\r\n- Quando você causa dano em uma criatura que está se concentrando em uma magia, a criatura terá desvantagem no teste de resistência que ela fizer para manter a concentração.\r\n- Você tem vantagem em testes de resistência contra magias conjuradas por criaturas a até 1,5 metro de você.'),
(26, 'Mente Afiada', 'Você tem uma mente que pode cronometrar o tempo e memorizar direção e detalhes com precisão absurda. Você ganha os seguintes benefícios:\r\n- Aumente seu valor de Inteligência em 1, até o máximo de 20.\r\n- Você sempre sabe qual a direção do norte.\r\n- Você sempre sabe o número de horas restantes para o próximo nascer ou pôr do sol.\r\n- Você pode relembrar, com precisão, qualquer coisa que você tenha visto ou ouvido no último mês.'),
(27, 'Mestre de Armas', 'Você tem praticado extensamente com uma variedade de armas, ganhando os seguintes benefícios:\r\n- Aumente o valor de Força ou Destreza em 1, até o máximo de 20.\r\n- Você ganha proficiência com quatro armas simples ou marciais, à sua escolha.'),
(28, 'Mestre de Armas Grandes', 'Você aprendeu a usar o peso em sua vantagem, deixando o balanço potencializar seus golpes. Você recebe os seguintes benefícios:\r\n- No seu turno, quando você atingir um acerto crítico com uma arma corpo-a-corpo ou reduzir os pontos de vida de uma criatura a 0, você pode realizar um ataque corpo-a-corpo com arma, com uma ação bônus.\r\n- Antes de você realizar um ataque corpo-a-corpo com uma arma pesada na qual você seja proficiente, você pode escolher sofrer –5 de penalidade em sua jogada de ataque. Se o ataque atingir, você adiciona +10 ao dano do ataque.'),
(29, 'Mestre de Escudo', 'Você não usa escudos apenas para proteção, mas também de forma ofensiva. Você ganha os seguintes benefícios enquanto estiver empunhando um escudo:\r\n- Se você realizar a ação de Ataque no seu turno, você pode usar uma ação bônus para tentar empurrar uma criatura, a até 1,5 metro de você, com seu escudo.\r\n- Se você não estiver incapacitado, você pode adicionar seu bônus de CA do escudo a qualquer teste de resistência de Destreza que você fizer contra uma magia ou outro efeito nocivo que tenha você como alvo.\r\n- Se você for alvo de um efeito que permita realizar um teste de resistência de Destreza para sofrer apenas metade do dano, você pode usar sua reação para não sofrer dano se passar no teste de resistência, interpondo seu escudo entre você e a fonte do efeito.'),
(30, 'Mobilidade', 'Você é excepcionalmente rápido e ágil. Você ganha os seguintes benefícios:\r\n- Seu deslocamento aumenta em 3 metros.\r\n- Quando você usa a ação de Disparada, mover-se através de terreno difícil não lhe custa qualquer movimento adicional neste turno.\r\n- Quando você realiza um ataque corpo-a-corpo contra uma criatura, você não provoca ataques de oportunidade para essa criatura pelo resto do turno, independentemente de ter atingido ou não.'),
(31, 'Observador', 'Rápido em perceber os detalhes do ambiente, você ganha os seguintes benefícios:\r\n- Aumente seu valor de Inteligência ou Sabedoria em 1, até o máximo de 20.\r\n- Se você puder ver a boca de uma criatura enquanto ela fala um idioma que você compreende, você pode interpretar o que ela está dizendo ao ler os seus lábios.\r\n- Você tem +5 de bônus nos seus valores passivos de Sabedoria (Percepção) e Inteligência (Investigação).'),
(32, 'Perito', 'Você ganha proficiência em qualquer combinação de três perícias ou ferramentas, à sua escolha.'),
(33, 'Poliglota', 'Você estudou línguas e códigos, ganhando os seguintes benefícios:\r\n- Aumente seu valor de Inteligência em 1, até o máximo de 20.\r\n- Você aprende três idiomas, à sua escolha.\r\n- Você é capaz de criar criptogramas escritos. Outros não podem decifrar um código criado por você a não ser que você os ensine, elas sejam bem sucedidas num teste de inteligência (CD igual ao seu valor de Inteligência + seu bônus de proficiência) ou usem mágica para decifrá-lo.'),
(34, 'Proteção Leve', 'Você treinou até dominar o uso de armaduras leves, ganhando os seguintes benefícios:\r\n- Aumente seu valor de Força ou Destreza em 1, até o máximo de 20.\r\n- Você ganha proficiência com armadura leves.'),
(35, 'Proteção Moderada', 'Pré-requisito: Proficiência em armadura leve\r\n\r\nVocê treinou até dominar o uso de armaduras médias e escudos, ganhando os seguintes benefícios:\r\n- Aumente seu valor de Força ou Destreza em 1, até o máximo de 20.\r\n- Você ganha proficiência com armadura média e escudos.'),
(36, 'Proteção Pesada', 'Pré-requisito: Proficiência em armadura média\r\n\r\nVocê treinou até dominar o uso de armaduras pesadas, ganhando os seguintes benefícios:\r\n- Aumente seu valor de Força em 1, até o máximo de 20.\r\n- Você ganha proficiência com armadura pesada.'),
(37, 'Resiliente', 'Escolha um valor de habilidade. Você ganha os seguintes benefícios:\r\n- Aumente o valor de habilidade escolhido em 1, até o máximo de 20.\r\n- Você ganha proficiência em testes de resistência usando a habilidade escolhida.'),
(38, 'Resistente', 'Duro e resistente, você ganha os seguintes benefícios:\r\n- Aumente seu valor de Constituição em 1, até o máximo de 20.\r\n- Quando você rolar um Dado de Vida para recuperar pontos de vida, o valor mínimo de pontos de vida que você recupera dessa rolagem será igual a duas vezes seu modificador de Constituição (mínimo de 2).'),
(39, 'Robusto', 'Seu máximo de pontos de vida aumenta em um valor igual a duas vezes seu nível quando você adquire esse talento. Toda vez que você ganhar um nível, após isso, seu máximo de pontos de vida aumenta em 2 pontos de vida adicionais.'),
(40, 'Sentinela', 'Você domina técnicas para obter vantagem a cada vez que qualquer inimigo baixar a guarda, ganhando os seguintes benefícios:\r\n- Quando você atinge uma criatura com um ataque de oportunidade, o deslocamento da criatura se torna 0 pelo resto do turno.\r\n- As criaturas provocam ataques de oportunidade de você mesmo se realizarem a ação de Desengajar antes de saírem do seu alcance.\r\n- Quando uma criatura a até 1,5 metro de você realizar um ataque contra um alvo diferente de você (e o alvo não possuir esse talento), você pode usar sua reação para realizar um ataque corpo-a-corpo com arma contra a criatura atacante.'),
(41, 'Sorrateiro', 'Pré-requisito: Destreza 13 ou maior\r\n\r\nVocê é especialista em espreitar através das sombras. Você ganha os seguintes benefícios:\r\n- Você pode tentar se esconder quando estiver levemente obscurecido para a criatura de quem você está tentando se esconder.\r\n- Quando você estiver escondido de uma criatura e errar um ataque à distância contra ela, realizar esse ataque não revelará sua posição.\r\n- Penumbra não impõem desvantagem nos seus testes de Sabedoria (Percepção) relacionados a visão.'),
(42, 'Sortudo', 'Você tem uma sorte inexplicável que parece surgir nos momentos exatos.\r\nVocê tem 3 pontos de sorte. A qualquer momento que você realizar uma jogada de ataque, teste de habilidade ou teste de resistência, você pode gastar um ponto de sorte para rolar um d20 adicional. Você pode escolher gastar um dos seus pontos de sorte depois de rolar o dado, mas antes de saber o resultado da jogada. Você escolhe qual dos d20s irá usar para a jogada de ataque, teste de habilidade ou teste de resistência.\r\nVocê também pode gastar um ponto de sorte quando uma jogada de ataque for feita contra você. Role um d20, e então escolha se o ataque irá usar a jogada do atacante ou a sua.\r\nSe mais de uma criatura gastar um ponto de sorte para influenciar uma mesma jogada, os pontos se cancelam mutuamente; nenhum dado adicional é rolado.\r\nVocê recupera seus pontos de sorte gastos após terminar um descanso longo.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `fichas` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `fichas`) VALUES
(1, 'Seu arrombado', '@eu', '$2y$10$a3lt8TfjjbQeyoEJuGs/b.L5tt0S2M6rebjFuj8/QpbmsbGNwi65O', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `antecedente`
--
ALTER TABLE `antecedente`
  ADD PRIMARY KEY (`ante_cod`);

--
-- Indexes for table `dado_vida`
--
ALTER TABLE `dado_vida`
  ADD PRIMARY KEY (`dado_vida_cod`);

--
-- Indexes for table `deslocamento`
--
ALTER TABLE `deslocamento`
  ADD PRIMARY KEY (`desl_cod`);

--
-- Indexes for table `habilidade_classe`
--
ALTER TABLE `habilidade_classe`
  ADD PRIMARY KEY (`hab_class_cod`);

--
-- Indexes for table `hab_rac`
--
ALTER TABLE `hab_rac`
  ADD PRIMARY KEY (`hab_rac_cod`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magias_bardo`
--
ALTER TABLE `magias_bardo`
  ADD PRIMARY KEY (`magias_bardo_cod`);

--
-- Indexes for table `magias_bruxo`
--
ALTER TABLE `magias_bruxo`
  ADD PRIMARY KEY (`magias_bruxo_cod`);

--
-- Indexes for table `magias_clerigo`
--
ALTER TABLE `magias_clerigo`
  ADD PRIMARY KEY (`magias_clerigo_cod`);

--
-- Indexes for table `magias_druida`
--
ALTER TABLE `magias_druida`
  ADD PRIMARY KEY (`magias_druida_cod`);

--
-- Indexes for table `magias_feiticeiro`
--
ALTER TABLE `magias_feiticeiro`
  ADD PRIMARY KEY (`magias_feiticeiro_cod`);

--
-- Indexes for table `magias_mago`
--
ALTER TABLE `magias_mago`
  ADD PRIMARY KEY (`magias_mago_cod`);

--
-- Indexes for table `magias_paladino`
--
ALTER TABLE `magias_paladino`
  ADD PRIMARY KEY (`magias_paladino_cod`);

--
-- Indexes for table `magias_patrulheiro`
--
ALTER TABLE `magias_patrulheiro`
  ADD PRIMARY KEY (`magias_patrulheiro_cod`);

--
-- Indexes for table `personagem`
--
ALTER TABLE `personagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nome` (`nome`);

--
-- Indexes for table `prof_classe`
--
ALTER TABLE `prof_classe`
  ADD PRIMARY KEY (`prof_classe_cod`);

--
-- Indexes for table `talento`
--
ALTER TABLE `talento`
  ADD PRIMARY KEY (`talento_cod`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personagem`
--
ALTER TABLE `personagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `personagem`
--
ALTER TABLE `personagem`
  ADD CONSTRAINT `personagem_ibfk_1` FOREIGN KEY (`nome`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
