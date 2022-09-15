# Gobernanza
https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/governance

# UpgradeableContracts
Sabemos que todo en Blockchain es inmutable, es una de sus principales características. Sin embargo, existe una manera de que un contrato pueda actualizarse si tenemos la necesidad.

Contratos Proxy
Llegado el caso de que nuestro contrato tenga un error de lógica o simplemente queramos actualizar la misma por un cambio en la regla de negocio, OpenZeppelin ofrece una serie de contratos denominados Proxy, o Patrón Proxy, para facilitar este propósito.

Este tipo de contratos actuarán de intermediario entre las transacciones y el contrato principal de un proyecto que contiene la lógica del mismo.

Implementando un contrato Proxy
Todos los contratos que conoces de OpenZeppelin se encuentran replicados en un nuevo repositorio llamado openzeppelin-contracts-upgradeable donde se le agrega el sufijo Upgradeable a cada uno de ellos.

Es así como encontrarás el contrato ERC721.sol y el ERC721Upgradeable.sol en el otro repositorio.

image.png
Cada contrato tiene, en lugar de un constructor, una función inicializadora a la cual debes llamar desde tu contrato para crear la instancia del contrato actualizable. La misma posee la forma __{ContractName}_init.

image.png
El resto del contrato es exactamente igual al no actualizable, con la misma lógica.

Utilizar este tipo de contratos es una tarea difícil. Requiere de un sólido conocimiento del patrón Proxy para evitar caer en problemas al actualizar un contrato.

TIP
Tanto los entornos de desarrollo de contratos inteligentes de Hardhat como Truffle ofrecen pluggins para realizar estas tareas de actualización de forma más sencilla.

El patrón Proxy permite que, por ejemplo, si el día de mañana se agregan nuevas funcionalidades al estándar ERC20 o ERC721, estos contratos puedan actualizarse e incorporar esas funcionalidades.

Tú puedes implementar tus contratos actualizables siguiendo este mismo patrón creando tu contrato MyContractUpgradeable.sol. De esta forma, podrás crear contratos que puedan actualizarse en el futuro.

https://docs.openzeppelin.com/contracts/4.x/api/proxy

https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable