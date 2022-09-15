Si algo caracteriza a Blockchain es la criptografía. Mucha información se encripta de forma simétrica o asimétrica para realizar transferencias y tener privacidad en la información. OpenZeppelin implementa una librería para trabajar con información encriptada.

Encriptación de información
La librería ECDSA de OpenZeppelin te servirá para hacer validaciones de hashes y verificar información encriptada.

No se trata de un caso de uso frecuente, pero podemos encontrarnos con escenarios donde una función reciba información encriptada y debamos validar el emisor de la misma haciendo alguna comparación de hashes.

Caso contrario, podemos tener la necesidad de encriptar la información dentro del contrato para enviarla a algún receptor o almacenarla en este formato.

Nota
Cuando trabajes con hashes en Solidity, tal vez te llame la atención la palabra Keccak. Keccak se trata de un poderoso algoritmo de encriptación asimétrico. Ideal para encriptar contraseñas o realizar validaciones de datos.

Más allá de la necesidad que tengamos en nuestro contrato de manipular información encriptada. Recuerda que todo en Blockchain es público, de alguna u otra manera, tanto los datos como el código fuente del contrato. Te aconsejo estudiar bien la situación y tal vez trabajar con procesamiento off-chain cuando debas manipular información sensible.

https://docs.openzeppelin.com/contracts/4.x/utilities#cryptography

https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/cryptography/ECDSA.sol