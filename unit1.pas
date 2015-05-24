unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Menus;
type

  { TMain }

  TMain = class(TForm)
    Copa: TMenuItem;
    copa_Dibujar: TMenuItem;
    pollo_Dibujar: TMenuItem;
    Esqueleto: TImage;
    Principal: TMainMenu;
    penta_Dibujar: TMenuItem;
    penta_Pintar: TMenuItem;
    Pollo: TMenuItem;
    Salir: TMenuItem;
    Pentagrama: TMenuItem;
    procedure copa_DibujarClick(Sender: TObject);
    procedure pollo_DibujarClick(Sender: TObject);
    procedure penta_PintarClick(Sender: TObject);
    procedure SalirClick(Sender: TObject);
    procedure penta_DibujarClick(Sender: TObject);
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

procedure TMain.penta_DibujarClick(Sender: TObject);
begin
     Canvas.Brush.Color:= clBLACK;
     Canvas.Pen.Color := clRED;
     Canvas.Pen.Width:= 3;
     Canvas.Font.Color := clRED;
     Canvas.Font.Size:= 20;
     Canvas.Clear;

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

     penta_Pintar.Enabled:= true;
end;

procedure TMain.penta_PintarClick(Sender: TObject);
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

procedure TMain.pollo_DibujarClick(Sender: TObject);
begin
  penta_Pintar.Enabled:= false;
  Canvas.Brush.Color:= clYELLOW;
  Canvas.Pen.Color := clBLACK;
  Canvas.Pen.Width:= 3;
  Canvas.Font.Color := clRED;
  Canvas.Clear;

  Canvas.Ellipse(Width DIV 2 -140, Height DIV 2 -140, Width DIV 2 - 40, Height DIV 2 - 40);  //Cabeza
  Canvas.MoveTo(Width DIV 2 -130, Height DIV 2 -60);
  Canvas.LineTo(Width DIV 2 -150, Height DIV 2 -40);
  Canvas.LineTo(Width DIV 2 -120, Height DIV 2 -50); //Pico
  Canvas.Ellipse(Width DIV 2 -130, Height DIV 2 -80, Width DIV 2 - 120, Height DIV 2 -70); //Ojo


  Canvas.Ellipse(Width DIV 2 -80 , Height DIV 2 -80, Width DIV 2 +80, Height DIV 2 +80); //Cuerpo
  Canvas.Arc(Width DIV 2 -40, Height DIV 2 -20,
             Width DIV 2 +40, Height DIV 2 +20,
             Width DIV 2 -40, Height DIV 2 -20,
             Width DIV 2 +40, Height DIV 2 +20);

  Canvas.MoveTo(Width DIV 2 +76, Height DIV 2 +20); //Cola
  Canvas.LineTo(Width DIV 2 +115, Height DIV 2 +30);
  Canvas.LineTo(Width DIV 2 +100, Height DIV 2);
  Canvas.LineTo(Width DIV 2 +115, Height DIV 2 -30);
  Canvas.LineTo(Width DIV 2 +76, Height DIV 2 -20);
  Canvas.FloodFill(Width DIV 2 +90, Height DIV 2, clBLACK, fsBorder);

  Canvas.MoveTo(Width DIV 2 -40, Height DIV 2 +70);  //Pata Izq
  Canvas.LineTo(Width DIV 2 -40, Height DIV 2 +120);
  Canvas.MoveTo(Width DIV 2 -30, Height DIV 2 +120);
  Canvas.LineTo(Width DIV 2 -40, Height DIV 2 +100);
  Canvas.LineTo(Width DIV 2 -50, Height DIV 2 +120);
  Canvas.MoveTo(Width DIV 2 +40, Height DIV 2 +70);
  Canvas.LineTo(Width DIV 2 +40, Height DIV 2 +120);

  Canvas.MoveTo(Width DIV 2 +40, Height DIV 2 +70); //Pata Derecha
  Canvas.LineTo(Width DIV 2 +40, Height DIV 2 +120);
  Canvas.MoveTo(Width DIV 2 +30, Height DIV 2 +120);
  Canvas.LineTo(Width DIV 2 +40, Height DIV 2 +100);
  Canvas.LineTo(Width DIV 2 +50, Height DIV 2 +120);
  Canvas.MoveTo(Width DIV 2 -40, Height DIV 2 +70);
  Canvas.LineTo(Width DIV 2 -40, Height DIV 2 +120);

  Canvas.Brush.Color:= clRED;  //Pico
  Canvas.FloodFill(Width DIV 2 -130, Height DIV 2 -50, clBLACK, fsBorder);
end;

procedure TMain.copa_DibujarClick(Sender: TObject);
begin
  Canvas.Pen.Width:= 3;
  Canvas.Clear;

  Canvas.Ellipse(Width DIV 2 -100 , Height DIV 2 -200, Width DIV 2 + 100, Height DIV 2 -120);

  Canvas.Arc(Width DIV 2 -100, Height DIV 2 -100,
             Width DIV 2 +100, Height DIV 2 +100,
             Width DIV 2 -100, Height DIV 2 -10,
             Width DIV 2 +100, Height DIV 2 -10);

  Canvas.MoveTo(Width DIV 2 -100 , Height DIV 2 -160);
  Canvas.LineTo(Width DIV 2 -100 , Height DIV 2 +10);
  Canvas.MoveTo(Width DIV 2 +99 , Height DIV 2 -160);
  Canvas.LineTo(Width DIV 2 +99 , Height DIV 2 +10);

  Canvas.Ellipse(Width DIV 2 -50 , Height DIV 2 +120, Width DIV 2 +50, Height DIV 2 +160);

  Canvas.MoveTo(Width DIV 2 , Height DIV 2 +100);
  Canvas.LineTo(Width DIV 2, Height DIV 2 +140);

end;

end.
