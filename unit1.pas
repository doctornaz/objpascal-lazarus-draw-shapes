unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;
type

  { TMain }

  TMain = class(TForm)
    Pintar: TButton;
    Skeleton: TImage;
    Pentagrama: TButton;
    Salir: TButton;
    procedure PentagramaClick(Sender: TObject);
    procedure PintarClick(Sender: TObject);
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
  Canvas.Font.Size:= 20;

  Canvas.Ellipse(Width DIV 2 -200 , Height DIV 2 - 200, Width DIV 2 + 200, Height DIV 2 + 200);

  Canvas.MoveTo(Width DIV 2, Height DIV 2 +200);
  Sleep(500);
  Canvas.LineTo(Width DIV 2 + 120, Height DIV 2 - 160);
  Sleep(500);
  Canvas.LineTo(Width DIV 2 - 185, Height DIV 2 + 70);
  Sleep(500);
  Canvas.LineTo(Width DIV 2 + 185, Height DIV 2 + 70);
  Sleep(500);
  Canvas.LineTo(Width DIV 2 - 120, Height DIV 2 - 160);
  Sleep(500);
  Canvas.LineTo(Width DIV 2, Height DIV 2 +200);
  Sleep(500);
  Canvas.TextOut(Width DIV 2 -45, Height DIV 2, 'Spooky');

  Pintar.Enabled:= true;
end;

procedure TMain.PintarClick(Sender: TObject);
begin
  Canvas.Brush.Color:= $660066;
  Canvas.FloodFill(Width DIV 2, Height DIV 2 +100, clRED, fsBorder);
  Sleep(500);
  Canvas.Brush.Color:= $00FF00;
  Canvas.FloodFill(Width DIV 2 +100, Height DIV 2 -140, clRED, fsBorder);
  Sleep(500);
  Canvas.Brush.Color:= $00FFFF;
  Canvas.FloodFill(Width DIV 2 -80, Height DIV 2 +40, clRED, fsBorder);
  Sleep(500);
  Canvas.Brush.Color:= $FF66FF;
  Canvas.FloodFill(Width DIV 2 +80, Height DIV 2 +40, clRED, fsBorder);
  Sleep(500);
  Canvas.Brush.Color:= $FFFF00;
  Canvas.FloodFill(Width DIV 2 -100, Height DIV 2 -140, clRED, fsBorder);
end;

end.

