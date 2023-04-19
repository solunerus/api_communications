// import 'dart:convert';
// import 'dart:typed_data';

// import 'package:crypto/crypto.dart';

// 
// class PaymentModel implements AbstractModel<PaymentModel> {
//   PaymentModel({
//     required this.mpOrden,
//     required this.mpReference,
//     required this.mpAmount,
//     required this.mpCustomerName,
//   }) {
//     /// Genera la firma de seguridad
//     const key =
//         '#4IAI5q5+#%p8Z4Q0)9!nOy3JQvZVSy%6-l()i2Z&+-n!sT!rOb&O5g)vJ350E\$!7gpt4v(yfQ0+M9%!Ckd541bxVaFR5s8Za1GD5=Bo-Kv6-!6+2uJQD+!1%w365Wi)';

//     /// Genera hMac
//     final hmac = Hmac(sha256, utf8.encode(key));

//     /// Genera el mensaje a cifrar
//     final message = mpOrden + mpReference + mpAmount.toString();

//     /// Genera el cifrado
//     final digest = hmac.convert(utf8.encode(message));

//     /// Genera el valor cifrado
//     _mpSignature = digest.toString();

//     /// Asigna los valores fijos
//     /// ID del cliente-organización
//     _mpAccount = 12322;

//     /// 1 - Multipagos
//     _mpProduct = 1;

//     /// Divisiones (ej. Sucursales, áreas, etc.)
//     _mpNodo = '0';

//     /// Clasificación de los cobros o pagos
//     _mpConcept = '1';

//     /// Moneda
//     _mpCurrency = 1;

//     /// URL de respuesta exitosa
//     _mpUrlSuccess = 'https://www.oromapas.gob.mx/pago-exitoso/';

//     /// URL de respuesta fallida
//     _mpUrlFail = 'https://www.oromapas.gob.mx/pago-error/';
//   }

//   /// ID del cliente-organización
//   late final int _mpAccount;

//   /// 1 - Multipagos
//   late final int _mpProduct;

//   /// Identificador de transacción, Es el idCuenta
//   final String mpOrden;

//   /// Identificador de transacción, es el período de facturación
//   /// En formato [yyyyMM]. Ejemplo: 202302
//   final String mpReference;

//   /// Según necesidades del cliente. Divisiones (ej. Sucursales, áreas, etc.)
//   late final String _mpNodo;

//   /// Clasificación de los cobros o pagos
//   late final String _mpConcept;

//   /// Es el pago que se realiza (ej. 90.50, 90.00)
//   final double mpAmount;

//   /// Es el nombre del cliente (o razón social)
//   final String mpCustomerName;

//   /// Es el tipo de moneda:
//   /// 1 - Pesos MXN
//   /// 2 - Dólares USD
//   late final int _mpCurrency;

//   /// Valor cifrado utilizado para seguridad. Se verifica que
//   /// los parámetros enviados no hayan sido alterados. El valor
//   /// a cifrar es la concatenación de los parámetros en el
//   /// siguiente orden:
//   /// [mpOrden] + [mpReference] + [mpAmount]
//   ///
//   /// ej PHP:
//   /// ```php
//   /// $signature = hash_hmac(
//   ///   'sha256',
//   ///   $cuenta.$referencia.$saldo,
//   ///   '#4IAI5q5+#%p8Z4Q0)9!nOy3JQvZVSy%6-l()i2Z&+-n!sT!rOb&O5g)vJ350E$!7gpt4v(yfQ0+M9%!Ckd541bxVaFR5s8Za1GD5=Bo-Kv6-!6+2uJQD+!1%w365Wi)'
//   /// );
//   /// ```
//   late final String _mpSignature;

//   /// URL de redirección en caso de éxito
//   late final String _mpUrlSuccess;

//   /// URL de redirección en caso de fracaso
//   late final String _mpUrlFail;

//   @override
//   copyWith({
//     String? mpOrden,
//     String? mpReference,
//     double? mpAmount,
//     String? mpCustomerName,
//   }) =>
//       PaymentModel(
//         mpOrden: mpOrden ?? this.mpOrden,
//         mpReference: mpReference ?? this.mpReference,
//         mpAmount: mpAmount ?? this.mpAmount,
//         mpCustomerName: mpCustomerName ?? this.mpCustomerName,
//       );

//   @override
//   Map<String, dynamic> toJson() => {
//         'mp_account': _mpAccount,
//         'mp_product': _mpProduct,
//         'mp_orden': mpOrden,
//         'mp_reference': mpReference,
//         'mp_nodo': _mpNodo,
//         'mp_concept': _mpConcept,
//         'mp_amount': mpAmount,
//         'mp_customername': mpCustomerName,
//         'mp_currency': _mpCurrency,
//         'mp_signature': _mpSignature,
//         'mp_urlsuccess': _mpUrlSuccess,
//         'mp_urlfail': _mpUrlFail,
//       };

//   static Uint8List postBodyBytes(Map<String, dynamic> json) {
//     final jsonString = jsonEncode(json);
//     final byteData =
//         ByteData.view(Uint8List.fromList(utf8.encode(jsonString)).buffer);
//     return byteData.buffer.asUint8List();
//   }
// }
