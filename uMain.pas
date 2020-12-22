unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    btnGravaCaracteres: TButton;
    edtCaracteres: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    memo1: TMemo;
    memo2: TMemo;
    RadioGroup1: TRadioGroup;
    memo3: TMemo;
    procedure btnGravaCaracteresClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravaCaracteresClick(Sender: TObject);
var i, j : integer;
begin
  if RadioGroup1.ItemIndex = 0 then
  begin
    for I := 0 to memo1.Lines.Count - 1 do
    begin
      memo2.Lines.Add(memo1.Lines[i] + edtCaracteres.Text);
    end;
  end
  else
  if RadioGroup1.ItemIndex = 1then
  begin
    for I := 0 to memo1.Lines.Count - 1 do
    begin
      memo3.Lines.Add(memo1.Lines[i] + memo2.Lines[i]);
    end;
  end;
  Application.ProcessMessages;
  ShowMessage('Concluído');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  RadioGroup1.ItemIndex := 0;
  edtCaracteres.Text    := '';
  edtCaracteres.Enabled := true;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex <> 0 then
  begin
    edtCaracteres.Text    := '';
    edtCaracteres.Enabled := false;
  end
  else
  begin
    edtCaracteres.Enabled := true;
  end;
end;

end.
