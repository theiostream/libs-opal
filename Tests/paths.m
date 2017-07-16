#ifdef __APPLE__
#include <ApplicationServices/ApplicationServices.h>
#else
#include <CoreGraphics/CoreGraphics.h>
#endif
#define pi 3.14159265358979323846

void draw(CGContextRef ctx, CGRect r)
{
  CGAffineTransform matrix0 = CGAffineTransformMakeTranslation(150, 0);
  
  CGMutablePathRef path = CGPathCreateMutable();

  CGPathAddArc(path, &matrix0, 100, 100, 25, 0, 2 * pi, YES);
  CGPathAddArc(path, &matrix0, 200, 200, 50, 0, 0.8 * pi, NO);
  CGPathAddArc(path, &matrix0, 300, 300, 50, 1.7 * pi, 1 * pi, NO);

  CGPathMoveToPoint(path, &matrix0, 300, 50);
  CGPathAddRoundedRect(path, &matrix0, CGRectMake(100, 300, 100, 100), 10, 10);

  CGPathMoveToPoint(path, &matrix0, 300, 100);
  CGPathAddCurveToPoint(path, &matrix0, 300, 600, 350, 100, 350, 150);
  CGPathAddCurveToPoint(path, &matrix0, 400, 200, 400, 200, 450, 150);

  CGPathRef path2 = CGPathCreateWithRect(CGRectMake(200, 50, 100, 50), NULL);
  
  CGAffineTransform matrix = CGAffineTransformMakeTranslation(600, 30);
  CGMutablePathRef path3 = CGPathCreateMutableCopyByTransformingPath(path2, &matrix);
  CGPathAddArcToPoint(path3, NULL, 600, 100, 100, 300, 100);
  
  CGContextAddPath(ctx, (CGPathRef)path);
  CGContextAddPath(ctx, path2);
  CGContextAddPath(ctx, path3);

  NSLog(@"GetBoundingBox: %@", NSStringFromRect(CGPathGetBoundingBox(path)));
  NSLog(@"GetPathBoundingBox: %@", NSStringFromRect(CGPathGetPathBoundingBox(path)));

  NSLog(@"ContainsPoint: %d", CGPathContainsPoint(path, NULL, CGPointMake(300, 300), 0));

  CGContextStrokePath(ctx);
}

