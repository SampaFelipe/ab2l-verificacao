-- AB2L GenZ Law — Schema de Verificação
-- Cole este SQL no Supabase SQL Editor e execute

create table embaixadores (
  id uuid default gen_random_uuid() primary key,
  nome text not null,
  chave text not null unique,
  edicao text not null,
  status text not null default 'ativo', -- 'ativo' | 'inativo'
  criado_em timestamptz default now()
);

-- Dados iniciais — embaixadores atuais
insert into embaixadores (nome, chave, edicao, status) values
  ('Felipe Sampaio do Amaral', 'A7F2·C9B4·3E81·D506', '#007', 'ativo'),
  ('Nayara Vieira',            'B3F7·A1E9·5C82·D304', '#042', 'ativo'),
  ('Carol Rachid',             'F1C4·7B2E·A903·E651', '#089', 'ativo'),
  ('Maria Eduarda Ferraz',     '9D3A·C8F1·2E47·B506', '#017', 'ativo'),
  ('Laryssa Sambrano',         'E5B2·3A9C·7F14·D208', '#063', 'ativo'),
  ('Stephanie Cativo',         '2C8E·F4B7·1A53·9D60', '#031', 'ativo');

-- Política de acesso público (somente leitura)
alter table embaixadores enable row level security;

create policy "leitura publica"
  on embaixadores for select
  using (true);

-- Acesso de escrita apenas para usuários autenticados (admin)
create policy "escrita autenticada"
  on embaixadores for all
  using (auth.role() = 'authenticated');
