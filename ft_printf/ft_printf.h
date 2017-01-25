/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dburtnja <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/19 14:02:03 by dburtnja          #+#    #+#             */
/*   Updated: 2017/01/20 22:21:11 by dburtnja         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include <stdlib.h>
# include <unistd.h>

typedef struct		s_flag
{
	int				pl;
	int				min;
	int				hesh;
	int				space;
	int				nul;
}					t_flag;

typedef	struct		s_arg
{
	struct s_arg	*next;
	int				mod;
	void			*data;
	t_flag			flag;
	int				width;
	int				precision;
	int				size;
	int				type;
}					t_arg;

int					ft_printf(char *str, ...);
int					lstlen(t_arg *head);
t_arg				*read_str(char *str, va_list arg);
int					colect_lst(t_arg **head, t_arg *lst);
t_arg				*new_lst(void *data, int f);
int					ft_print(t_arg *head);
t_arg				*check_type(char **str, va_list arg);
int					find_c(char c, char *str, int p);
int					check_width(char *str, int *i);
void				check_flags(char *str, int *i, t_flag *flag);
int					check_precision(char *str, int *i);
int					check_size(char *str, int *i);
int					find_type(char *str, int *type);
void				check_nbr(char *str, int *i, va_list arg, int *nbr);
int					read_arg(t_arg *head, va_list ptr);
void				mod_str(t_arg *head, va_list ptr);
char				*cpy_and_put_char(char *str, t_arg *head);
char				*put_char_and_cpy(char *str, t_arg *head);
void				ft_modlst(t_arg *head, va_list arg);
void				mod_char(t_arg *head, va_list ptr);
void				mod_m_flag(char *str, t_arg *head);

char				*ft_strsub(char const *s, unsigned int start, size_t len);
int					ft_lentoc(char *buf, char c);
int					ft_putstr(char const *s);
char				*ft_strdup(const char *s);
char				*ft_strjoin(char const *s1, char const *s2);
size_t				ft_strlen(const char *s);
char				*ft_strnew(size_t size);
void				*ft_memalloc(size_t size);
char				*ft_strcat(char *dest, const char *src);
void				ft_bzero(void *s, size_t n);
void				ft_putnbr(int n);
void				ft_putchar(char c);
int					ft_atoi_mod(char *buf, int *i);
char				*ft_strstr(const char *big, const char *little);
void				ft_strdel(char **as);
void				ft_memdel(void **ap);
char				*ft_strncpy(char *dest, const char *str, size_t n);

#endif
