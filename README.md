# AB2L GenZ Law — Sistema de Verificação de Embaixadores
## Tudo gratuito. Deploy em ~15 minutos.

---

## PASSO 1 — Criar conta no Supabase (banco de dados)

1. Acesse https://supabase.com e crie uma conta gratuita
2. Clique em **New Project** — escolha um nome (ex: ab2l-genzlaw)
3. Aguarde o projeto criar (~2 min)
4. Vá em **Settings → API** e copie:
   - `Project URL` → vai substituir `COLE_AQUI_SUA_SUPABASE_URL`
   - `anon public key` → vai substituir `COLE_AQUI_SUA_SUPABASE_ANON_KEY`

---

## PASSO 2 — Criar o banco de dados

1. No Supabase, clique em **SQL Editor**
2. Cole todo o conteúdo do arquivo `supabase-schema.sql`
3. Clique em **Run** — isso cria a tabela e insere os 6 embaixadores atuais

---

## PASSO 3 — Criar usuário admin

1. No Supabase, vá em **Authentication → Users**
2. Clique em **Add User → Create New User**
3. Use o email e senha que a coordenação vai usar para acessar o painel admin

---

## PASSO 4 — Configurar os arquivos

Abra os dois arquivos e substitua as variáveis:

**`public/index.html`** e **`admin/index.html`** — procure por:
```
const SUPABASE_URL = 'COLE_AQUI_SUA_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'COLE_AQUI_SUA_SUPABASE_ANON_KEY';
```
Substitua pelos valores do Passo 1.

---

## PASSO 5 — Deploy no Vercel (hospedagem gratuita)

1. Acesse https://vercel.com e crie uma conta gratuita (pode usar GitHub)
2. Clique em **Add New → Project**
3. Arraste a pasta `ab2l-verificacao` ou conecte ao GitHub
4. Clique em **Deploy**
5. Seu site ficará disponível em: `https://ab2l-verificacao.vercel.app`

---

## ESTRUTURA DOS ARQUIVOS

```
ab2l-verificacao/
├── public/
│   └── index.html        ← Página pública de verificação
├── admin/
│   └── index.html        ← Painel admin (protegido por login)
└── supabase-schema.sql   ← Schema do banco de dados
```

---

## COMO USAR

### Verificação pública
- Qualquer pessoa acessa: `https://seu-site.vercel.app`
- Cola a chave exclusiva da credencial
- Sistema confirma se é um embaixador ativo

### Link direto (compartilhável)
- `https://seu-site.vercel.app?chave=A7F2·C9B4·3E81·D506`
- A página já busca automaticamente

### Painel admin
- Acesse: `https://seu-site.vercel.app/admin`
- Login com email e senha do Passo 3
- Adicione, ative ou desative embaixadores

---

## EMBAIXADORES JÁ CADASTRADOS

| Nome                    | Chave                 | Edição |
|-------------------------|-----------------------|--------|
| Felipe Sampaio do Amaral| A7F2·C9B4·3E81·D506  | #007   |
| Nayara Vieira           | B3F7·A1E9·5C82·D304  | #042   |
| Carol Rachid            | F1C4·7B2E·A903·E651  | #089   |
| Maria Eduarda Ferraz    | 9D3A·C8F1·2E47·B506  | #017   |
| Laryssa Sambrano        | E5B2·3A9C·7F14·D208  | #063   |
| Stephanie Cativo        | 2C8E·F4B7·1A53·9D60  | #031   |

---

## CUSTO TOTAL: R$ 0,00

- Supabase free tier: até 500MB de banco, 50.000 requisições/mês
- Vercel free tier: hospedagem ilimitada para sites estáticos
