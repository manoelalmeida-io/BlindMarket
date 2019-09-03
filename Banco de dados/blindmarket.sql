create database blindmarket; -- criando o banco de dados chamado "blindmarket"
use blindmarket; -- usando o banco criado chamado "blindmarket"

create table produtos( -- criando a tabela "produtos"
	idProduto int auto_increment primary key, -- criando o campo como chave primária chamada idProduto do tipo inteiro com adição automática do id começando de 1 e com intervalo de 1 
    nome varchar(150) not null, -- criando campo chamado nome do tipo varchar com entrada de até 150 caracteres e não pode estar vazio
	categoria varchar(50) not null, -- criando campo chamado categoria do tipo varchar com entrada de até 50 caracteres e não pode estar vazio
    preco decimal(5,2) not null -- criando campo chamado preco do tipo decimal para armazenamento com casas decimais e não pode estar vazio
);

create table sensores( -- tabela para saber qual sensor foi ativado para poder vincular com o produto
	idSensor int primary key auto_increment, -- coluna para pegar o id do sensor e ir incrementando a cada sensor cadastrado
	portaSensor int not null, -- porta do sensor ativo
	idProduto int not null -- relação com os produtos cadastrados
);

insert into produtos(nome, categoria, preco) values -- inserindo produtos
('Biscoito recheado trakinas de chocolate', 'Bolacha', 2.00),
('Biscoito recheado toddy de chocolate', 'Bolacha', 2.50),
('Salagadinho cheetos', 'Salgadinhos', 4.50),
('Salagadinho fandangos', 'Salgadinhos', 5.00);

select * from produtos ; -- consultado todos os dados da tabela
select * from produtos where preco > 2; -- consultado a tabela onde os dados sejam somente com o preço a cima de 2



