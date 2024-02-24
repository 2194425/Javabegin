size(500,500);

int tafel= 3;

for(int i=1; i<=10; i++){
int resultaat= tafel* i;
String regel= tafel +" x"+i+"=" + resultaat;
text(regel, 50,50 + i*25);
}
