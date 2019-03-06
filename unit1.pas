unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    convertir: TButton;
    euro: TFloatSpinEdit;
    dollar: TFloatSpinEdit;
    ed: TRadioButton;
    de: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure convertirClick(Sender: TObject);
    procedure euroChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.convertirClick(Sender: TObject);
begin
  IF ed.Checked=True THEN
  begin
    dollar.Value:=(euro.Value * 1.15);
  end
  else
  begin
    euro.Value:=(dollar.Value * 0.87);
  end;
end;

procedure TForm1.euroChange(Sender: TObject);
begin

end;

end.

