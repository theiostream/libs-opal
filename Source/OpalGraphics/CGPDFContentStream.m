/** <title>CGPDFContentStream</title>
 
 <abstract>C Interface to graphics drawing library</abstract>
 
 Copyright <copy>(C) 2010 Free Software Foundation, Inc.</copy>

 Author: Eric Wasylishen
 Date: June 2010
  
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

#import <Foundation/NSObject.h>
#include "CoreGraphics/CGPDFContentStream.h"

CGPDFContentStreamRef CGPDFContentStreamCreateWithPage(CGPDFPageRef page)
{
    return nil;
}

CGPDFContentStreamRef CGPDFContentStreamCreateWithStream(
  CGPDFStreamRef stream,
  CGPDFDictionaryRef streamResources,
  CGPDFContentStreamRef parent)
{
  return nil;
}

CGPDFObjectRef CGPDFContentStreamGetResource(
  CGPDFContentStreamRef stream,
  const char *category,
  const char *name)
{
  return nil;
}

CFArrayRef CGPDFContentStreamGetStreams(CGPDFContentStreamRef stream)
{
  return nil;
}

CGPDFContentStreamRef CGPDFContentStreamRetain(CGPDFContentStreamRef stream)
{
  return nil;
}

void CGPDFContentStreamRelease(CGPDFContentStreamRef stream)
{
  
}