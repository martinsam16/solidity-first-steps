## Extensions
Los diferentes tipos de tokens que podemos implementar en un contrato inteligente pueden extender sus funcionalidades, dependiendo la necesidad, heredando una serie de contratos que OpenZeppelin ofrece para cambiar su comportamiento.

https://github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/token

ERCXXX/extensions/..

Los más interesantes:
- Burneable: Permite la quema de tokens para controlar la emisión de los mismos.
- Pausable: Permite pausar el contrato y que no pueda continuar operando con normalidad.

## Estándar ERC777
OpenZeppelin implementa un cuarto tipo de token que hasta el momento no hemos nombrado. El estándar ERC777 propuesto en el EIP777, propone una extensión del estándar ERC20.

El mismo permite la creación de tokens fungibles, a lo igual que el estándar ERC20, con el agregado de utilizar hooks para que el contrato ejecute una acción con cada transferencia de tokens.

Esto permite al contrato reaccionar ante eventos, hacer validaciones, notificar a los usuarios, entre otros beneficios.

El estándar ERC777, también implementa el ERC20. Esto los vuelve completamente compatibles. Los tokens emitidos con el estándar ERC777, pueden utilizarse como si fueran ERC20.