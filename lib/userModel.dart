// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.cliente,
    required this.cif,
    required this.nombre,
    required this.telefono,
    required this.web,
    required this.clasificacion,
    required this.sector,
    required this.descripcionSector,
    required this.situacion,
    required this.notas,
    required this.actividad,
    required this.descripcionActividad,
    required this.contacto,
    required this.telefono1,
    required this.emailContacto,
    required this.contacto2,
    required this.telefono2,
    required this.emailContacto2,
    required this.direccion,
    required this.direccionComp,
    required this.poblacion,
    required this.potenCompra1,
    required this.gestor,
    required this.representante,
    required this.nombreRepresentante,
    required this.clientNumber,
  });

  dynamic cliente;
  dynamic cif;
  dynamic nombre;
  dynamic telefono;
  dynamic web;
  dynamic clasificacion;
  dynamic sector;
  dynamic descripcionSector;
  dynamic situacion;
  dynamic notas;
  dynamic actividad;
  dynamic descripcionActividad;
  dynamic contacto;
  dynamic telefono1;
  dynamic emailContacto;
  dynamic contacto2;
  dynamic telefono2;
  dynamic emailContacto2;
  dynamic direccion;
  dynamic direccionComp;
  dynamic poblacion;
  dynamic potenCompra1;
  dynamic gestor;
  dynamic representante;
  dynamic nombreRepresentante;
  dynamic clientNumber;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        cliente: json["cliente"],
        cif: json["cif"],
        nombre: json["nombre"],
        telefono: json["telefono"],
        web: json["web"],
        clasificacion: json["clasificacion"],
        sector: json["sector"],
        descripcionSector: json["descripcion_sector"],
        situacion: json["situacion"],
        notas: json["notas"],
        actividad: json["actividad"],
        descripcionActividad: json["descripcion_actividad"],
        contacto: json["contacto"],
        telefono1: json["telefono_1"],
        emailContacto: json["email_contacto"],
        contacto2: json["contacto_2"],
        telefono2: json["telefono_2"],
        emailContacto2: json["email_contacto_2"],
        direccion: json["direccion"],
        direccionComp: json["direccion_comp"],
        poblacion: json["poblacion"],
        potenCompra1: json["poten_compra1"],
        gestor: json["gestor"],
        representante: json["representante"],
        nombreRepresentante: json["nombre_representante"],
        clientNumber: json["client_number"],
      );

  Map<String, dynamic> toJson() => {
        "cliente": cliente,
        "cif": cif,
        "nombre": nombre,
        "telefono": telefono,
        "web": web,
        "clasificacion": clasificacion,
        "sector": sector,
        "descripcion_sector": descripcionSector,
        "situacion": situacion,
        "notas": notas,
        "actividad": actividad,
        "descripcion_actividad": descripcionActividad,
        "contacto": contacto,
        "telefono_1": telefono1,
        "email_contacto": emailContacto,
        "contacto_2": contacto2,
        "telefono_2": telefono2,
        "email_contacto_2": emailContacto2,
        "direccion": direccion,
        "direccion_comp": direccionComp,
        "poblacion": poblacion,
        "poten_compra1": potenCompra1,
        "gestor": gestor,
        "representante": representante,
        "nombre_representante": nombreRepresentante,
        "client_number": clientNumber,
      };
}
