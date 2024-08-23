org 100h 
jmp start
msg:db "addition of two 8-bit numbers is:", 0Dh,0Ah,24h
start: mov dx,msg
       mov ah,09h
       int 21h

num1 db 24h
num2 db 29h
mov al,num1
add al,num2
mov bl,al
AND al,0F0h
shr al, 4
add al,30h
cmp al,39h
jle first_bit
add al,7h
first_bit: mov dl,al
           mov ah,02h
           int 21h
mov al,bl
and al,0Fh
add al,30h
cmp al,39h
jle second_bit
add al,7h
second_bit: mov dl,al
            mov ah,02h
            int 21h  
ret
