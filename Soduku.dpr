program Soduku;

uses
  Forms,
  main in 'main.pas' {SodukuForm},
  SodukuFrame in 'SodukuFrame.pas' {FrameSoduku: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSodukuForm, SodukuForm);
  Application.Run;
end.
