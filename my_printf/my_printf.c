#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <unistd.h>

/**
* _putchar - Prints a character to stdout
* @c: Character to print
*
* Return: No of characters printed (1)
*/
int _putchar(char c)
{
    return (write(STDOUT_FILENO, &c, 1));
}

/**
* print_string - Prints a string
* @str: String to print
*
* Return: No of characters printed
*/
int print_string(const char *str)
{
    int i = 0;

    if (str == NULL)
        return write(STDOUT_FILENO, "(null)", 6);
    while (str[i])
    {
        _putchar(str[i]);
        i++;
    }
    return (i);
}

/**
* _strlen - Checks for the length of a string
* @str: String to count
*
* Return: Length of str
*/
int _strlen(const char *str)
{
    int i = 0;

    while (str[i])
    {
        i++;
    }
    return (i);
}

/**
* print_num - Prints a number to stdout
* @num: Number to print
*
* Return: Number of characters printed
*/
int print_num(int num)
{
    int rem[33], i = 0, len = 0;

    if (num < 0)
    {
        _putchar('-');
        num = -num;
        i++;
    }

    if (num > 9)
    {
        // print_num(num / 10);
        // i++;

        // Extract digits
        while (num != 0)
        {
            rem[len] = num % 10;
            num = num / 10;
            len++;
        }
        //Reverse and print digits
        while (len > 0)
        {
            _putchar(rem[len - 1] + '0');
            i++;
            len--;
        }
    }
    else
    {
        _putchar(num % 10 + '0');
        i = 1;
    }
    return (i);
}

/**
* print_hexa - Converts and prints decimal in base16(hexadecimal)
* @num: Number to convert
*
* Return: Number of characters printed
*/
int print_hexa(int num)
{
    int i = 0, len = 0, rem, hexa[32];

    while (num != 0)
    {
        rem = num % 16;
        if (rem < 10)
            hexa[i] = rem + 48;
        else
            hexa[i] = rem + 55;
        num /= 16;
        i++;
    }
    while (i - 1 >= 0)
    {
        _putchar(hexa[i - 1]);
        i--;
        len++;
    }

    return (len);
}

/**
* print_octal - Converts and prints decimal in base8(octal)
* @num: Number to convert
*
* Return: Number of characters printed
*/
int print_octal(int num)
{
    int i = 0, len = 0, oct[8], octal = 0;

    while (num != 0)
    {
        oct[i] = num % 8;
        num /= 8;
        i++;
    }
    i -= 1;
    while (i >= 0)
    {
        octal = oct[i];
        print_num(octal);
        i--;
        len++;
    }

    return (len);
}

/**
* print_uint - Converts and prints the unsigned equivalent of a integer
* @num: Number to convert
*
* Return: Number of characters printed
*/
int print_uint(unsigned int num)
{
    int i = 0, len = 0;
    unsigned int unsign[33];

    while (num != 0)
    {
        unsign[len] = num % 10;
        num /= 10;
        len++;
    }

    while (len - 1 >= 0)
    {
        _putchar(unsign[len - 1] + '0');
        len--;
        i++;
    }
    return (i);
}

/**
* print_pointer - Prints the address of a given variable
* @variable: Given variable
*
* Return: Number of characters printed
*/
int print_pointer(void *variable)
{
    void *ptr = variable;
    int i = 0, len = 0;
    unsigned long rem, hexa[64], pointer;

    if (ptr == NULL)
        return print_string("(null)");

    pointer = (unsigned long)ptr;
    while (pointer != 0)
    {
        rem = pointer % 16;
        if (rem < 10)
            hexa[i] = rem + 48;
        else
            hexa[i] = rem + 87; // Convert to lowercase ('a' - 10)
        pointer /= 16, i++;
    }

    len += print_string("0x");
    while (i - 1 >= 0)
    {
        _putchar(hexa[i - 1]), i--, len++;
    }

    return (len);
}

int my_printf(char *restrict format, ...)
{
    va_list args;
    int i = 0, j, length = 0;

    va_start(args, format);
    while (format[i])
    {
        if (format[i] == '%')
        {
            j = i + 1;
            if (format[j] == 'd' || format[j] == 'i')
                length += print_num(va_arg(args, int));
            else if (format[j] == 's')
                length += print_string(va_arg(args, char *));
            else if (format[j] == 'c')
                length += _putchar(va_arg(args, int));
            else if (format[j] == 'x')
                length += print_hexa(va_arg(args, int));
            else if (format[j] == 'p')
                length += print_pointer(va_arg(args, void *));
            else if (format[j] == 'o')
                length += print_octal(va_arg(args, int));
            else if (format[j] == 'u')
                length += print_uint(va_arg(args, unsigned int));
            else
                length += _putchar(format[i]);
            i++;
        }
        else 
            length += _putchar(format[i]);
        i++;
    }
    return (length);
}
