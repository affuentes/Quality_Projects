unit MoLibQualityProjects;

interface

uses {WinTypes, WinProcs, Messages, Classes, Controls,
  Forms, Dialogs, ExtCtrls, strutils, windows, DBClient,DBGrids,Grids,Registry,ShellAPI, }
  Graphics, DB,DBTables, Variants, ComObj, SysUtils, StdCtrls,Vcl.Buttons,
  Vcl.Forms, ShellAPI, Grids, DBGrids, WinTypes, WinProcs, Messages, Classes, Controls,
  Dialogs, ExtCtrls, strutils, windows, DBClient,Registry;


var Nuevo, Insertar, Guardar, CancelarTodo, Editar, EliminarTodo, Copiar, Pegar, Excel, Imprimir,
    Consultar, Ayuda, Salir, Cancelar, Eliminar, Buscar, Anular, Autorizar, Desautorizar:Boolean;


procedure BotonesPrendeApaga(Accion:string);

implementation




//PROCEDIMIENTO PRENDER Y APAGAR BOTONES
procedure BotonesPrendeApaga(Accion:string);
begin
  Accion:=UpperCase(Accion);
  if Accion = 'NUEVO' then
    begin//NUEVO
      Nuevo := False;
      Insertar:=False;
      Guardar := True;
      CancelarTodo :=True;
      Editar :=False;
      EliminarTodo :=False;
      Copiar :=False;
      Pegar :=False;
      Excel :=False;
      Imprimir :=False;
      Consultar :=False;
      Ayuda :=True;
      Salir :=True;
      Cancelar :=True;
      Eliminar :=False;
      Buscar :=False;
      Anular :=False;
      Autorizar :=False;
      Desautorizar :=False;
    end//NUEVO
  else
    begin
      if Accion='INSERTAR' then
        begin//INSERTAR
          Nuevo := False;
          Insertar:=False;
          Guardar := True;
          CancelarTodo :=True;
          Editar :=False;
          EliminarTodo :=False;
          Copiar :=False;
          Pegar :=False;
          Excel :=False;
          Imprimir :=False;
          Consultar :=False;
          Ayuda :=True;
          Salir :=True;
          Cancelar :=True;
          Eliminar :=False;
          Buscar :=False;
          Anular :=False;
          Autorizar :=False;
          Desautorizar :=False;
        end//INSERTAR
      else
        begin
          if Accion='GUARDAR' then
            begin//GUARDAR
              Nuevo := True;
              Insertar:=True;
              Guardar := False;
              CancelarTodo :=False;
              Editar :=True;
              EliminarTodo :=True;
              Copiar :=True;
              Pegar :=False;
              Excel :=True;
              Imprimir :=True;
              Consultar :=True;
              Ayuda :=True;
              Salir :=True;
              Cancelar :=False;
              Eliminar :=True;
              Buscar :=True;
              Anular :=True;
              Autorizar :=True;
              Desautorizar :=True;
            end//GUARDAR
          else
            begin
              if Accion='CANCELAR' then
                begin//CANCELAR
                  Nuevo := True;
                  Insertar:=True;
                  Guardar := False;
                  CancelarTodo :=False;
                  Editar :=True;
                  EliminarTodo :=True;
                  Copiar :=True;
                  Pegar :=False;
                  Excel :=True;
                  Imprimir :=True;
                  Consultar :=True;
                  Ayuda :=True;
                  Salir :=True;
                  Cancelar :=False;
                  Eliminar :=True;
                  Buscar :=True;
                  Anular :=True;
                  Autorizar :=True;
                  Desautorizar :=True;
                end//CANCELAR
              else
                begin
                  if Accion='EDITAR' then
                    begin//EDITAR
                      Nuevo:=False;
                      Insertar:=False;
                      Guardar:=True;
                      CancelarTodo:=True;
                      Editar:=False;
                      EliminarTodo:=False;
                      Copiar:=False;
                      Pegar:=False;
                      Excel:=False;
                      Imprimir:=False;
                      Consultar:=False;
                      Ayuda:=True;
                      Salir:=True;
                      Cancelar:=True;
                      Eliminar:=False;
                      Buscar:=False;
                      Anular:=False;
                      Autorizar:=False;
                      Desautorizar:=False;
                    end//EDITAR
                  else
                    begin
                      if Accion='ELIMINARTODO' then
                        begin //ELIMINARTODO
                          Nuevo := False;
                          Insertar:=False;
                          Guardar := True;
                          CancelarTodo :=True;
                          Editar :=False;
                          EliminarTodo :=False;
                          Copiar :=False;
                          Pegar :=False;
                          Excel :=False;
                          Imprimir :=False;
                          Consultar :=False;
                          Ayuda :=True;
                          Salir :=True;
                          Cancelar :=False;
                          Eliminar :=False;
                          Buscar :=False;
                          Anular :=False;
                          Autorizar :=False;
                         Desautorizar :=False;
                        end//ELIMINARTODO
                      else
                        begin
                          if Accion='CONSULTAR' then
                            begin//CONSULTAR
                              Nuevo := True;
                              Insertar:=True;
                              Guardar := False;
                              CancelarTodo :=False;
                              Editar :=True;
                              EliminarTodo :=True;
                              Copiar :=True;
                              Pegar :=False;
                              Excel :=True;
                              Imprimir :=True;
                              Consultar :=True;
                              Ayuda :=True;
                              Salir :=True;
                              Cancelar :=False;
                              Eliminar :=True;
                              Buscar :=True;
                              Anular :=True;
                              Autorizar :=True;
                              Desautorizar :=True;
                            end//CONSULTAR
                          else
                            begin
                              if Accion='ELIMINAR' then
                                begin //ELIMINAR
                                  Nuevo := False;
                                  Insertar:=False;
                                  Guardar := True;
                                  CancelarTodo :=True;
                                  Editar :=False;
                                  EliminarTodo :=False;
                                  Copiar :=False;
                                  Pegar :=False;
                                  Excel :=False;
                                  Imprimir :=False;
                                  Consultar :=False;
                                  Ayuda :=True;
                                  Salir :=True;
                                  Cancelar :=False;
                                  Eliminar :=False;
                                  Buscar :=False;
                                  Anular :=False;
                                  Autorizar :=False;
                                  Desautorizar :=False;
                                end//ELIMINAR
                              else
                                begin
                                if Accion='DATOS0' then
                                  begin //DATOS0
                                    Nuevo := True;
                                    Insertar:=True;
                                    Guardar := False;
                                    CancelarTodo :=False;
                                    Editar :=False;
                                    EliminarTodo :=False;
                                    Copiar :=False;
                                    Pegar :=False;
                                    Excel :=False;
                                    Imprimir :=False;
                                    Consultar :=True;
                                    Ayuda :=True;
                                    Salir :=True;
                                    Cancelar :=False;
                                    Eliminar :=False;
                                    Buscar :=False;
                                    Anular :=False;
                                    Autorizar :=False;
                                    Desautorizar :=False;
                                  end//DATOS0





                                                    else
                                                    raise Exception.Create('Parametro Apaga Prende botones Erroneo');



                                end;//DATOS0
                            end;//ELIMINAR
                        end;//ACTIVAR
                    end;//ELIMINARTODO
                end;//EDITAR
            end;//CANCELAR
        end;//GUARDAR
    end;//INSERTAR
end;//NUEVO




end.
