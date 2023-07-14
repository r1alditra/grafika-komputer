unit Unit1;

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
  Canvas.MoveTo(50, 300);
  Canvas.LineTo(250, 100);
  Canvas.LineTo(450, 300);
  Canvas.LineTo(50, 300);
  Canvas.MoveTo(350, 300);
  Canvas.LineTo(550, 100);
  Canvas.LineTo(750, 300);
  Canvas.LineTo(350, 300);
  Canvas.MoveTo(400, 250);
  Canvas.LineTo(450, 200);
  Canvas.MoveTo(400, 250);
  Canvas.LineTo(350, 200);
  Canvas.Arc(350, 150, 450, 250, 450, 200, 350, 200);
  Canvas.MoveTo(350, 300);
  Canvas.LineTo(250, 400);
  Canvas.MoveTo(450, 300);
  Canvas.LineTo(350, 400);

end.

