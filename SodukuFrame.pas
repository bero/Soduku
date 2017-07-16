unit SodukuFrame;

interface

uses
  Classes,
  Controls,
  ExtCtrls,
  Forms,
  StdCtrls;

type
  TIntArray = array of Integer;

  TStore = class
    fStores: TIntArray;
  public
    constructor Create;
  end;

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
    fStore: array of array of TStore;
    procedure DeleteX(var A: TIntArray; const Index: Cardinal);
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;
    function GetValue(aRow, aCol: Integer): Integer;
    procedure SetValue(aRow, aCol: Integer; aValue: Integer);
    function GetString(aRow, aCol: Integer): String;
    procedure SetString(aRow, aCol: Integer; const aValue: String);
    procedure InitStores;
    procedure FillStores;
  end;

implementation

{$R *.dfm}

uses
  SysUtils;

procedure TFrameSoduku.AfterConstruction;
var
  i, j: Integer;
begin
  inherited;
  SetLength(fArray, 3);
  SetLength(fArray[0], 3);
  SetLength(fArray[1], 3);
  SetLength(fArray[2], 3);

  SetLength(fStore, 3);
  SetLength(fStore[0], 3);
  SetLength(fStore[1], 3);
  SetLength(fStore[2], 3);

  for i := 0 to 2 do
    for j := 0 to 2 do
      fStore[i, j] := TStore.Create;

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

procedure TFrameSoduku.BeforeDestruction;
var
  i, j: Integer;
begin
  for i := 2 downto 0 do
    for j := 2 downto 0 do
      fStore[i, j].Free;
  
  inherited;
end;

procedure TFrameSoduku.DeleteX(var A: TIntArray; const Index: Cardinal);
var
  ALength: Cardinal;
  TailElements: Cardinal;
begin
  ALength := Length(A);
  Assert(ALength > 0);
  Assert(Index < ALength);
  TailElements := ALength - Index;

  if TailElements > 0 then
    Move(A[Index + 1], A[Index], SizeOf(Integer) * TailElements);

  SetLength(A, ALength - 1);
end;

procedure TFrameSoduku.FillStores;
var
  i, j, k: Integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      for k := 0 to 8 do
        fStore[i, j].fStores[k] := k + 1;
end;

function TFrameSoduku.GetString(aRow, aCol: Integer): String;
begin
  Result := fArray[aRow, aCol].Text;
end;

function TFrameSoduku.GetValue(aRow, aCol: Integer): Integer;
var
  vText: string;
begin
  vText := fArray[aRow, aCol].Text;
  if vText <> '' then
    Result := StrToInt(vText)
  else
    Result := -1;
end;

procedure TFrameSoduku.InitStores;
var
  i, j, k, vValue: Integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
    begin
      vValue := GetValue(i, j);
      if vValue > -1 then
        for k := 0 to High(fStore[i, j].fStores) do
          if fStore[i, j].fStores[k] = vValue then
            DeleteX(fStore[i, j].fStores, k);
    end;
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

constructor TStore.Create;
var
  i: Integer;
begin
  inherited;
  SetLength(fStores, 9);

  for i := 0 to 8 do
    fStores[i] := i + 1;
end;

end.
