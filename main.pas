unit main;

interface

uses
  Classes,
  Controls,
  Dialogs,
  ExtCtrls,
  Forms,
  StdCtrls,

  SodukuFrame;

type
  TSodukuForm = class(TForm)
    btnExit: TButton;
    btnLoad: TButton;
    btnSave: TButton;
    OpenDialog1: TOpenDialog;
    pnlCommands: TPanel;
    SaveDialog1: TSaveDialog;
    GridPanel1: TGridPanel;
    s11: TFrameSoduku;
    s12: TFrameSoduku;
    s13: TFrameSoduku;
    s21: TFrameSoduku;
    s22: TFrameSoduku;
    s23: TFrameSoduku;
    s31: TFrameSoduku;
    s32: TFrameSoduku;
    s33: TFrameSoduku;
    procedure btnSaveClick(Sender: TObject);
    procedure btnLoadClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
   fArray: array of array of TFrameSoduku;
   procedure InitStores;
  public
    procedure AfterConstruction; override;
  end;

var
  SodukuForm: TSodukuForm;

implementation

{$R *.dfm}

uses
  SysUtils;

procedure TSodukuForm.AfterConstruction;
begin
  inherited;
  SetLength(fArray, 3);
  SetLength(fArray[0], 3);
  SetLength(fArray[1], 3);
  SetLength(fArray[2], 3);

  fArray[0,0] := s11;
  fArray[0,1] := s12;
  fArray[0,2] := s13;
  fArray[1,0] := s21;
  fArray[1,1] := s22;
  fArray[1,2] := s23;
  fArray[2,0] := s31;
  fArray[2,1] := s32;
  fArray[2,2] := s33;
end;

procedure TSodukuForm.btnSaveClick(Sender: TObject);
var
  i, j, m, n: Integer;
  vList: TStringList;
begin
  vList := TStringList.Create;
  try
    for i := 0 to 2 do
      for j := 0 to 2 do
        for m := 0 to 2 do
          for n := 0 to 2 do
            vList.Add(fArray[i, j].GetString(m, n));

    if SaveDialog1.Execute then
      vList.SaveToFile(SaveDialog1.FileName);
  finally
    vList.Free;
  end;
end;

procedure TSodukuForm.InitStores;
var
  i, j: Integer;
begin
  for i := 0 to 2 do
    for j := 0 to 2 do
      fArray[i, j].InitStores;
end;

procedure TSodukuForm.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TSodukuForm.btnLoadClick(Sender: TObject);
const
 cnFile = 'Soduku.txt';
var
  i, j, m, n, t: Integer;
  vList: TStringList;
begin
  vList := TStringList.Create;
  try
    if FileExists(cnFile) then
      vList.LoadFromFile(cnFile)
    else if OpenDialog1.Execute then
      vList.LoadFromFile(OpenDialog1.FileName)
    else
      Exit;

    t := 0;
    for i := 0 to 2 do
      for j := 0 to 2 do
        for m := 0 to 2 do
          for n := 0 to 2 do
          begin
            fArray[i, j].SetString(m, n, vList[t]);
            inc(t);
          end;

    InitStores;
  finally
    vList.Free;
  end;
end;

end.
