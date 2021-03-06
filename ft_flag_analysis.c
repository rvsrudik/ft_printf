/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_flag_analysis.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vrudenko <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/19 14:27:34 by vrudenko          #+#    #+#             */
/*   Updated: 2017/01/19 14:35:50 by vrudenko         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

static char	*ft_find_percent(char *line)
{
	char	*tmp;
	char	*tmp2;
	int		i;

	i = 0;
	while (line != NULL && line[i] != '\0')
	{
		if (line[i] == '%')
		{
			tmp = ft_strnew_bchar(i, '?');
			tmp = ft_strncpy(tmp, line, i);
			tmp2 = ft_strjoin(g_toprint, tmp);
			g_toprint = tmp2;
			line[i] = '\0';
			ft_putstr(line);
			return (&line[i + 1]);
		}
		i++;
	}
	tmp2 = ft_strjoin(g_toprint, line);
	ft_putstr(line);
	g_toprint = tmp2;
	return (0);
}

static void	ft_for_norm1(int *i, int *j)
{
	*j = 0;
	*i = 0;
}

static void	ft_for_norm2(int *i, int *j)
{
	*j = 0;
	(*i)++;
}

static char	*ft_determ_type(char *line, t_printf *params)
{
	char	*types;
	int		i;
	int		j;
	char	*flags;

	types = "sSpdDioOuUxXcC%";
	ft_for_norm1(&i, &j);
	while (line != NULL && line[i] != '\0')
	{
		while (types[j] != '\0')
		{
			if (line[i] == types[j])
			{
				params->type = line[i];
				flags = ft_strnew_bchar(i, '?');
				params->flags = ft_strncpy(flags, line, i);
				if (line[i] == '%')
					g_flag = 1;
				return (&line[i + 1]);
			}
			j++;
		}
		ft_for_norm2(&i, &j);
	}
	return (0);
}

int			ft_flag_analysis(char *line, void **arguments)
{
	int			i;
	char		*tmp;
	t_printf	*params;

	i = 0;
	g_flag = 0;
	tmp = ft_strnew(ft_strlen(line));
	tmp = ft_strcpy(tmp, line);
	g_toprint = ft_strnew(0);
	params = (t_printf*)malloc(sizeof(*params));
	ft_reset_params(params);
	while (tmp)
	{
		g_flag = 0;
		params->data = arguments;
		tmp = ft_find_percent(tmp);
		tmp = ft_determ_type(tmp, params);
		ft_write_argument(params);
		if (!g_flag)
			arguments++;
	}
	g_return_value = g_return_value + ft_strlen(g_toprint);
	return (g_return_value);
}
