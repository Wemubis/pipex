/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   error_open.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mle-boud <mle-boud@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/10 13:08:31 by mle-boud          #+#    #+#             */
/*   Updated: 2023/01/10 13:09:38 by mle-boud         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "pipex.h"

void	error_open(int fd)
{
	if (fd < 0)
		errors_process();
}
