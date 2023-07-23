
if [ $1 == 's' ]; then
    gcc server.c -I ../tcp -g -o  s.out -lpthread
else
    gcc client_fork.c -I ../tcp -g -o  c.out -lpthread
fi