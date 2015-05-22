unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;
type

  { TMain }

  TMain = class(TForm)
    Skeleton: TImage;
    Pentagrama: TButton;
    Salir: TButton;
    procedure PentagramaClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
  private

    { private declarations }
  public
    { public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.lfm}

{ TMain }



procedure TMain.SalirClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMain.PentagramaClick(Sender: TObject);
begin
  Canvas.Brush.Color:= clBLACK;
  Canvas.Pen.Color := clRED;
  Canvas.Pen.Width:= 3;
  Canvas.Font.Color := clRED;

  Canvas.Ellipse(Width DIV 2 -200 , Height DIV 2 - 200, Width DIV 2 + 200, Height DIV 2 + 200);

  Canvas.MoveTo(Width DIV 2, Height DIV 2 -200);
  Canvas.LineTo(Width DIV 2 - 120, Height DIV 2 + 160);
  Canvas.LineTo(Width DIV 2 + 185, Height DIV 2 - 70);
  Canvas.LineTo(Width DIV 2 - 185, Height DIV 2 - 70);
  Canvas.LineTo(Width DIV 2 + 120, Height DIV 2 + 160);
  Canvas.LineTo(Width DIV 2, Height DIV 2 -200);

  Canvas.TextOut(Width DIV 2 -20, Height DIV 2 - 20, 'Spooky');
end;

end.

