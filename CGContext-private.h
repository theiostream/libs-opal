/** <title>CGContext</title>

   <abstract>C Interface to graphics drawing library</abstract>

   Copyright (C) 2006 BALATON Zoltan <balaton@eik.bme.hu>

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
   
   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
   
   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
   */

#ifndef OPAL_CGContext_private_h
#define OPAL_CGContext_private_h

#include <CGContext.h>
#include <cairo.h>
#include "opal.h"

typedef struct ct_additions  ct_additions;
struct ct_additions
{
  ct_additions *next;  /* for Save/Restore */
  double alpha;
  CGColorRef fill_color;
  cairo_pattern_t *fill_cp;
  CGColorRef stroke_color;
  cairo_pattern_t *stroke_cp;
};

typedef struct CGContext
{
  struct objbase base;
  cairo_t *ct;  /* A Cairo context -- destination of this CGContext */
  ct_additions *add;  /* Additional things not in Cairo's gstate */
  struct {
    double x;
    double y;
  } txtpos;
} CGContext;

CGContextRef opal_new_CGContext(cairo_surface_t *target);

#endif
