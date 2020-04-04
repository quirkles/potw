import { createCipheriv, createDecipheriv } from 'crypto';

import { ENCRYPTION_KEY, ENCRYPTION_IV } from './secrets';


const algorithm = 'aes-256-cbc';
let key = Buffer.alloc(32);

key = Buffer.concat([Buffer.from(ENCRYPTION_KEY)], key.length);


export const encrypt = (string) => {
  const cipher = createCipheriv(algorithm, key, ENCRYPTION_IV);
  let encrypted = cipher.update(string, 'utf8', 'hex');
  encrypted += cipher.final('hex');
  return encrypted;
};

export const decrypt = (string) => {
  const decipher = createDecipheriv(algorithm, key, ENCRYPTION_IV);
  let decrypted = decipher.update(string, 'hex', 'utf8');
  decrypted += decipher.final('utf8');
  return decrypted;
};
