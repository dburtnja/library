
#include "ft_printf.h"

char	*cpy_and_put_char(char *str, t_arg *head)
{
	size_t	len;
	size_t	i;
	char	*ret;

	ret = ft_strnew(find_size_str(ft_strlen(str), head, &len));
	i = 0;
	add_hesh(ret, &i, head->flag.hesh);
	while (i < len)
	{
		ret[i] = *str;
		str++;
		i++;
	}
	while (head->width > 0 && i < (size_t)head->width)
	{
		ret[i] = ' ';
		i++;
	}
	return (ret);
}

char	*put_char_and_cpy(char *str, t_arg *head)
{
	size_t	len;
	size_t	w;
	size_t	i;
	char	*ret;

	w = find_size_str(ft_strlen(str), head, &len);
	ret = ft_strnew(w);
	i = 0;
	while (i < w - len)
	{
		ret[i] = ' ';
		i++;
	}
	add_hesh(ret, &i, head->flag.hesh);
	while (i < w)
	{
		ret[i] = *str;
		i++;
		str++;
	}
	return (ret);
}

void	mod_m_flag(char *str, t_arg *head)
{
	if (head->flag.min == 1)
		head->data = cpy_and_put_char(str, head);
	else
		head->data = put_char_and_cpy(str, head);
}
