/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dburtnja <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/29 14:41:03 by dburtnja          #+#    #+#             */
/*   Updated: 2016/12/29 20:16:00 by dburtnja         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <stdlib.h>
#include <unistd.h>

t_line	*m_l(int fd, char *buf)
{
	t_line	*new;

	new = (t_line*)malloc(sizeof(t_line));
	if (!new)
		return (NULL);
	if (!buf)
		new->buf = NULL;
	else
	{
		new->buf = buf;
		new->fd = fd;
		new->next = NULL;
	}
	return (new);
}

char	*write_line(char *str, char **line, int l, int *f)
{
	char	*new;
	char	*temp;
	char	*buf;

	new = NULL;
	if (l == (int)ft_strlen(str))
		buf = ft_strjoin(*line, str);
	else
	{
 		*f = 7777777;
		temp = ft_strsub(str, 0, l);
		buf = ft_strjoin(*line, temp);
		ft_strdel(&temp);
		new = ft_strsub(str, l + 1, (int)ft_strlen(str) - (l + 1));
		if (!new)
			*f = -1;
	}
	ft_strdel(line);
	*line = buf;
	ft_strdel(&str);
	if (*line == NULL)
		*f = -1;
	return (new);
}

int		read_file(int fd, char **str_l, char **line, int *f)
{
	char	*str;

	*line = ft_strnew(0);
	if (*line == NULL)
		*f = -1;
	if (*str_l && *f >= 0)
		*str_l = write_line(*str_l, line, ft_lentoc(*str_l, '\n'), f);
	while (*f > 0 && *f != 7777777)
	{
		str = ft_strnew(BUFF_SIZE);
		if (!str) return (-1);
		*f = read(fd, str, BUFF_SIZE);
		if (*f == -1) return (-1);
		*str_l = write_line(str, line, ft_lentoc(str, '\n'), f);
	}
	return (*f);
} 

int		get_next_line(const int fd, char **line)
{
	static t_line	*head;
	char			*buf;
	t_line			*p;
	t_line			*pn;
	int				f;

	f = 1;
	if (BUFF_SIZE < 0 || BUFF_SIZE > 65534)
		return (-1);
	p = head;
	while (p)
	{
		pn = p;
		if (p->fd == fd)
			break ;
		p = p->next;
	}
	buf = !p ? NULL : p->buf;
	f = read_file(fd, &buf, line, &f);
	if (!head && buf)
		head = m_l(fd, buf);
	else if (buf && p)
		p->buf = buf;
	else if (buf)
		pn->next = m_l(fd, buf);
	else
		return (-1);
	if (f > 0)
		return (1);
	return (f);
}
