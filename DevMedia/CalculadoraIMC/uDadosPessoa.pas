unit uDadosPessoa;

interface

uses
  System.SysUtils;

  Type
    RDadosPessoa = record
      Altura: Double;
      Peso: Double;
      Sexo: String;
      IMC: String;
  end;

  function CalcularIMC(pPeso, pAltura: Double; pSexo: String) : String;

  var
    PDadosPessoa : RdadosPessoa;

implementation

function CalcularIMC(pPeso, pAltura: Double; pSexo: String) : String;
var
  IMC: Double;
  StrIMC: String;
begin
  if pSexo = '' then
    raise Exception.Create('Informe o Sexo!');

  try

    IMC := pPeso/(pAltura*pAltura);
    if pSexo = 'F' then
    begin
      if (IMC < 19.1) then
        StrIMC := 'Abaixo do Peso'
      else
        if (IMC >= 19.1) and (IMC <= 25.8) then
          StrIMC := 'No peso normal'
        else
          if (IMC > 25.8) and (IMC <= 27.3) then
            StrIMC := 'Marginalmente acima do peso'
          else
            if (IMC > 27.3) and (IMC <= 32.3) then
              StrIMC := 'Acima do peso Ideal'
            else
              if IMC > 32.3 then
                StrIMC := 'Obeso';
    end
    else
    begin
      if pSexo = 'M' then
      begin
        if (IMC < 20.7) then
          StrIMC := 'Abaixo do Peso'
        else
          if (IMC >= 20.7) and (IMC <= 26.4) then
            StrIMC := 'No peso normal'
          else
            if (IMC > 24.4) and (IMC <= 27.8) then
              StrIMC := 'Marginalmente acima do peso'
            else
              if (IMC > 27.8) and (IMC <= 31.1) then
                StrIMC := 'Acima do peso Ideal'
              else
                if IMC > 31.1 then
                  StrIMC := 'Obeso';
      end;
    end;
    Result := StrIMC;
  except
    raise Exception.Create('Erro ao efetuar cálculo do IMC.');
  end;
end;

end.
