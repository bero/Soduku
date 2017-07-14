unit SodukuFrame;

interface

uses
  Classes,
  Controls,
  ExtCtrls,
  Forms,
  StdCtrls;

type
  TFrameSoduku = class(TFrame)
    pnlSoduku: TGridPanel;
    txt11: TEdit;
    txt12: TEdit;
    txt13: TEdit;
    txt21: TEdit;
    txt22: TEdit;
    txt23: TEdit;
    txt31: TEdit;
    txt32: TEdit;
    txt33: TEdit;
    procedure txtChange(Sender: TObject);
  private
    fArray: array of array of TEdit;
  public
    procedure AfterConstruction; override;
    function GetValue(aRow, aCol: Integer): Integer;
    procedure SetValue(aRow, aCol: Integer; aValue: Integer);
    function GetString(aRow, aCol: Integer): String;
    procedure SetString(aRow, aCol: Integer; const aValue: String);
  end;

implementation

{$R *.dfm}

uses
  SysUtils;

procedure TFrameSoduku.AfterConstruction;
begin
  inherited;
  SetLength(fArray, 3);
  SetLength(fArray[0], 3);
  SetLength(fArray[1], 3);
  SetLength(fArray[2], 3);

  fArray[0,0] := txt11;
  fArray[0,1] := txt12;
  fArray[0,2] := txt13;
  fArray[1,0] := txt21;
  fArray[1,1] := txt22;
  fArray[1,2] := txt23;
  fArray[2,0] := txt31;
  fArray[2,1] := txt32;
  fArray[2,2] := txt33;
end;

function TFrameSoduku.GetString(aRow, aCol: Integer): String;
begin
  Result := fArray[aRow, aCol].Text;
end;

function TFrameSoduku.GetValue(aRow, aCol: Integer): Integer;
begin
  Result := StrToInt(fArray[aRow, aCol].Text);
end;

procedure TFrameSoduku.SetString(aRow, aCol: Integer; const aValue: String);
begin
  fArray[aRow, aCol].Text := aValue;
end;

procedure TFrameSoduku.SetValue(aRow, aCol, aValue: Integer);
begin
  fArray[aRow, aCol].Text := IntToStr(aValue);
end;

procedure TFrameSoduku.txtChange(Sender: TObject);
var
  vValue: String;
  vDummy: Integer;
begin
  exit;
  vValue := TEdit(Sender).Text;
  if (vValue <> '') then
  begin
    if TryStrToInt(vValue, vDummy) then
    begin
      if (vDummy < 1) or (vDummy > 9) then
        TEdit(Sender).Text := '';
    end
    else
      TEdit(Sender).Text := '';
  end;
end;

end.
