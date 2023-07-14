unit UTS_Rinaldi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Canvas.Pen.Color := clBlack;
Canvas.Pen.Width := 2;
Canvas.Polygon([Point(20,120), Point(20,220), Point(120,220), Point(120,320),
Point(220,320), Point(220,220), Point(320,220), Point(320,120), Point(220,120),
Point(220,20), Point(120,20), Point(120,120)]);

Canvas.Pen.Color := clBlue;
Canvas.Rectangle(40, 140, 100, 200);

Canvas.Pen.Color := clGreen;
Canvas.Ellipse(240, 140, 300, 200);

Canvas.Pen.Color := clRed;
Canvas.MoveTo(140, 240);
Canvas.LineTo(200, 300);
Canvas.MoveTo(200, 240);
Canvas.LineTo(140, 300);

Canvas.Pen.Color := clYellow;
Canvas.MoveTo(140, 100);
Canvas.LineTo(200, 100);
Canvas.LineTo(170, 40);
Canvas.LineTo(140, 100);

Canvas.Font.Size:=20;
Canvas.Font.Name := 'Tahoma';
Canvas.TextOut(100,340,'PlayStation');
Canvas.TextOut(40,380,'Nama : Muhammad Rinaldi Putra');
Canvas.TextOut(40,420,'NPM : 011220002');
end;
end.
