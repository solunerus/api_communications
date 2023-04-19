class DatosClasificacion {
  DatosClasificacion({
    required this.areaConstruida,
    required this.areaJardin,
    required this.areaLote,
    required this.claseusuario,
    required this.diametro,
    required this.esAltoconsumidor,
    required this.esDraef,
    required this.facturarAbc,
    required this.frente,
    required this.giro,
    required this.hidrocircuito,
    required this.idCuenta,
    required this.idPadron,
    required this.materialBanqueta,
    required this.materialCalle,
    required this.materialToma,
    required this.materialmedidor,
    required this.nivelsocial,
    required this.salidasHidraulicas,
    required this.tienePozo,
    required this.tipofactible,
    required this.tipogrupo,
    required this.tipoinstalacion,
    required this.tipotoma,
    required this.tipotuberia,
    required this.ubicacionmedidor,
    required this.vigenciaSubsidio,
    required this.viviendas,
    required this.zona,
  });

  final bool esAltoconsumidor;
  final bool tienePozo;
  final bool esDraef;
  final bool facturarAbc;
  final double areaConstruida;
  final double areaJardin;
  final double areaLote;
  final double frente;
  final String idCuenta;
  final int idPadron;
  final int salidasHidraulicas;
  final int viviendas;
  final String claseusuario;
  final String diametro;
  final String giro;
  final String hidrocircuito;
  final String materialBanqueta;
  final String materialCalle;
  final String materialToma;
  final String materialmedidor;
  final String nivelsocial;
  final String tipofactible;
  final String tipogrupo;
  final String tipoinstalacion;
  final String tipotoma;
  final String tipotuberia;
  final String ubicacionmedidor;
  final String vigenciaSubsidio;
  final String zona;

  DatosClasificacion copyWith({
    double? areaConstruida,
    double? areaJardin,
    double? areaLote,
    String? claseusuario,
    String? diametro,
    bool? esAltoconsumidor,
    bool? esDraef,
    bool? facturarAbc,
    double? frente,
    String? giro,
    String? hidrocircuito,
    String? idCuenta,
    int? idPadron,
    String? materialBanqueta,
    String? materialCalle,
    String? materialToma,
    String? materialmedidor,
    String? nivelsocial,
    int? salidasHidraulicas,
    bool? tienePozo,
    String? tipofactible,
    String? tipogrupo,
    String? tipoinstalacion,
    String? tipotoma,
    String? tipotuberia,
    String? ubicacionmedidor,
    String? vigenciaSubsidio,
    int? viviendas,
    String? zona,
  }) =>
      DatosClasificacion(
        areaConstruida: areaConstruida ?? this.areaConstruida,
        areaJardin: areaJardin ?? this.areaJardin,
        areaLote: areaLote ?? this.areaLote,
        claseusuario: claseusuario ?? this.claseusuario,
        diametro: diametro ?? this.diametro,
        esAltoconsumidor: esAltoconsumidor ?? this.esAltoconsumidor,
        esDraef: esDraef ?? this.esDraef,
        facturarAbc: facturarAbc ?? this.facturarAbc,
        frente: frente ?? this.frente,
        giro: giro ?? this.giro,
        hidrocircuito: hidrocircuito ?? this.hidrocircuito,
        idCuenta: idCuenta ?? this.idCuenta,
        idPadron: idPadron ?? this.idPadron,
        materialBanqueta: materialBanqueta ?? this.materialBanqueta,
        materialCalle: materialCalle ?? this.materialCalle,
        materialToma: materialToma ?? this.materialToma,
        materialmedidor: materialmedidor ?? this.materialmedidor,
        nivelsocial: nivelsocial ?? this.nivelsocial,
        salidasHidraulicas: salidasHidraulicas ?? this.salidasHidraulicas,
        tienePozo: tienePozo ?? this.tienePozo,
        tipofactible: tipofactible ?? this.tipofactible,
        tipogrupo: tipogrupo ?? this.tipogrupo,
        tipoinstalacion: tipoinstalacion ?? this.tipoinstalacion,
        tipotoma: tipotoma ?? this.tipotoma,
        tipotuberia: tipotuberia ?? this.tipotuberia,
        ubicacionmedidor: ubicacionmedidor ?? this.ubicacionmedidor,
        vigenciaSubsidio: vigenciaSubsidio ?? this.vigenciaSubsidio,
        viviendas: viviendas ?? this.viviendas,
        zona: zona ?? this.zona,
      );

  factory DatosClasificacion.fromJson(Map<String, dynamic> json) =>
      DatosClasificacion(
        areaConstruida: json["area_construida"],
        areaJardin: json["area_jardin"],
        areaLote: json["area_lote"],
        claseusuario: json["claseusuario"],
        diametro: json["diametro"],
        esAltoconsumidor: json["es_altoconsumidor"],
        esDraef: json["es_draef"],
        facturarAbc: json["facturar_abc"],
        frente: json["frente"],
        giro: json["giro"],
        hidrocircuito: json["hidrocircuito"],
        idCuenta: json["id_cuenta"].toString(),
        idPadron: json["id_padron"],
        materialBanqueta: json["material_banqueta"],
        materialCalle: json["material_calle"],
        materialToma: json["material_toma"],
        materialmedidor: json["materialmedidor"],
        nivelsocial: json["nivelsocial"],
        salidasHidraulicas: json["salidas_hidraulicas"],
        tienePozo: json["tiene_pozo"],
        tipofactible: json["tipofactible"],
        tipogrupo: json["tipogrupo"],
        tipoinstalacion: json["tipoinstalacion"],
        tipotoma: json["tipotoma"],
        tipotuberia: json["tipotuberia"],
        ubicacionmedidor: json["ubicacionmedidor"],
        vigenciaSubsidio: json["vigencia_subsidio"],
        viviendas: json["viviendas"],
        zona: json["zona"],
      );

  Map<String, dynamic> get toJson => {
        "area_construida": areaConstruida,
        "area_jardin": areaJardin,
        "area_lote": areaLote,
        "claseusuario": claseusuario,
        "diametro": diametro,
        "es_altoconsumidor": esAltoconsumidor,
        "es_draef": esDraef,
        "facturar_abc": facturarAbc,
        "frente": frente,
        "giro": giro,
        "hidrocircuito": hidrocircuito,
        "id_cuenta": idCuenta,
        "id_padron": idPadron,
        "material_banqueta": materialBanqueta,
        "material_calle": materialCalle,
        "material_toma": materialToma,
        "materialmedidor": materialmedidor,
        "nivelsocial": nivelsocial,
        "salidas_hidraulicas": salidasHidraulicas,
        "tiene_pozo": tienePozo,
        "tipofactible": tipofactible,
        "tipogrupo": tipogrupo,
        "tipoinstalacion": tipoinstalacion,
        "tipotoma": tipotoma,
        "tipotuberia": tipotuberia,
        "ubicacionmedidor": ubicacionmedidor,
        "vigencia_subsidio": vigenciaSubsidio,
        "viviendas": viviendas,
        "zona": zona,
      };

  factory DatosClasificacion.getDefault() => DatosClasificacion(
        areaConstruida: 0,
        areaJardin: 0,
        areaLote: 0,
        claseusuario: "",
        diametro: '',
        esAltoconsumidor: false,
        esDraef: false,
        facturarAbc: false,
        frente: 0,
        giro: "",
        hidrocircuito: "",
        idCuenta: '',
        idPadron: 0,
        materialBanqueta: "",
        materialCalle: "",
        materialToma: "",
        materialmedidor: "",
        nivelsocial: "",
        salidasHidraulicas: 0,
        tienePozo: false,
        tipofactible: "",
        tipogrupo: "",
        tipoinstalacion: "",
        tipotoma: "",
        tipotuberia: "",
        ubicacionmedidor: "",
        vigenciaSubsidio: "",
        viviendas: 0,
        zona: "",
      );
}
