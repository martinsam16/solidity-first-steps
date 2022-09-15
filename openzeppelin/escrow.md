Sin duda, uno de los casos de uso más frecuentes en un contrato inteligente es el denominado como “Escrow”, realizar transferencias entre dos partes de manera segura.

## Depositos en garantía
El término Escrow seguramente es poco conocido. En pocas palabras, se trata de un intermediario entre dos partes para la transferencia de un bien o valor de forma segura.

No se trata de algo nuevo de Blockchain. En las finanzas tradicionales y el mundo legal, los agentes Escrow son profesionales que actúan para dar garantías de intercambio de una propiedad, un automóvil o dinero entre dos partes.

La revolución de Blockchain logra que ese intermediario, que no deja de ser una persona o una empresa, desaparezca y ocupe su lugar un contrato inteligente. Evitando así la burocracia de tener que ponerse en contacto y acordar con una tercera parte.

Escrow garantiza que Alice y Bob puedan intercambiar criptomonedas u otros bienes. El contrato inteligente retendrá las cripto o una garantía hasta que ambas partes obtengan lo que les pertenece.

## Implementación de un Escrow
OpenZeppelin implementa tres contratos para resolver de forma rápida y segura este tipo de caso de uso.

### Escrow.sol
Escrow.sol es el contrato base para implementar la lógica de intercambio de criptomonedas o tokens entre dos partes. El contrato en sí tiene poca utilidad en el mundo real, ya que por lo general habrá algún tipo de condición y confirmación previa a la entrega del valor a cada parte involucrada.

Importante mencionar que Escrow.sol hereda de Ownable.sol. Por lo tanto, el mismo tendrá un dueño. Aunque siempre puedes desarrollar tu propio contrato con su propia lógica si no deseas que el mismo tenga un owner y este sea diferente.

### ConditionalEscrow.sol
ConditionalEscrow.sol Es una extensión de Escrow.sol que le agrega la posibilidad de implementar un condicionante dependiendo nuestra regla de negocios para confirmar la operación y liberar las criptomonedas.

### RefundEscrow.sol
RefundEscrow.sol hereda de los dos anteriores con la diferencia de que múltiples cuentas pueden depositar valor y este ser retirado por una sola. Pocos casos de uso tienen sentido en el mundo real. Que solo una cuenta se quede con el depósito de muchas podría tratarse de algún tipo de donación o causas benéficas.

## Caso real de Escrow
Si Alice y Bob quieren intercambiar crypto por dinero Fiat, Alice depositará las crypto en el contrato inteligente y el mismo las retendrá hasta que Bob haga la transferencia correspondiente de forma off-chain. Si Alice recibió lo suyo, ella misma dará la orden de liberar las crypto hacia la cuenta de Bob.

En ningún momento el contrato inteligente le permite a Alice volver a enviar las crypto a su propia cuenta. En este caso, el owner del contrato puede intervenir para solucionar la situación.

Un buen ejemplo de la vida real de Escrow es el P2P de Binance. Si has realizado compras o ventas de criptomonedas a través de esta plataforma o similar, comprenderás cómo es que un contrato inteligente retiene valor hasta su posterior liberación luego de una confirmación.

## Conclusión
Escrow es un sencillo y muy utilizado caso de uso que te invito a explorar para el intercambio de valor de forma segura entre dos partes. Lo maravilloso de Blockchain está en eliminar esos intermediarios tan molestos.


-- 
Tenemos 3 implementaciones de escrow:

Básica:
- Escrow (sólo admite depósitos y retiros)

Variantes de la básica:
 - ConditionalEscrow (los retiros se pueden hacer siempre y cuando se cumpla cierta condición) - extiende de Escrow
- RefundEscrow (todos los depósitos van a una sola cuenta, caso de uso: causa benéfica) - extiende de ConditionalEscrow