// prisma/seed.ts

import { PrismaClient } from '@prisma/client';

// initialize Prisma Client
const prisma = new PrismaClient();

async function main() {
  // create two dummy articles
  const post1 = await prisma.acesso.upsert({
    where: { id_acesso: 1 },
    update: {},
    create: {
      id_acesso: 1,
      id_usuario: 1,
      usuario: 'Matheus',
      login: '04-01-2022',
      data_login: '2012-04-23T18:25:43.511Z',
      data_logout: '2012-04-23T18:25:43.511Z',
      sessao: 'teste-04-01-2022',
      numero_ip: 'teste-04-01-2022',
      detalhe: 'teste',
    },
  });
  console.log({ post1 });
}

// execute the main function
main()
  .catch((e) => {
    console.error(e);
    process.exit(1);
  })
  .finally(async () => {
    // close Prisma Client at the end
    await prisma.$disconnect();
  });
