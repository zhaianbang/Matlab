%%%% Matlab�ַ���ת��Ϊ���ʽ�����ַ�ʽ
%%������ĺ������ʽΪ����
s='x^2+y^2';
%(1)subs�滻
f=sym(s);
g=findsym(f);%%Ҳ����ֱ�Ӷ��� syms x y ;
subs(f,findsym(f),{1,2});

%(2)��������inline
f=inline(s);
f(1,2)

%(3)eval����evaluate
f=eval(['@(x,y)',s]);
f(2,3)
%%���s��sym��ʽ������Ҫת��Ϊ�ַ�����ʽchar(s)
f=eval(['@(x,y)',char(s)]);
f(2,3)
