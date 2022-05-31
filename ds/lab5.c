#include <stdio.h>
#include<ctype.h>
int stack[100], top = -1;

void push(int item)
{
    stack[++top] = item;
}

int pop()
{
    return stack[top--];
}
int main()
{
    char exp[100], *e;
    int n1, n2, n3, num;
    printf("Enter a Expression\n");
    scanf("%s", exp);
    e = exp;

    while (*e != '\0')
    {
        if (isdigit(*e))
        {
            num = *e - 48;
            push(num);
        }
        else
        {
            n1 = pop();
            n2 = pop();
            switch (*e)
            {
            case '+':
                n3 = n2 + n1;
                break;
            case '-':
                n3 = n2 - n1;
                break;
            case '*':
                n3 = n2 * n1;
                break;
            case '/':
                n3 = n2 / n1;
                break;
            case '%':
                n3 = n2 % n1;
                break;
            case '^':
                n3 = n2 ^ n1;
                break;

            default:
                break;
            }
            push(n3);
        }
        e++;
    }
    printf("The Result of Expression %s is:%d", exp, pop());
    return 0;
}
