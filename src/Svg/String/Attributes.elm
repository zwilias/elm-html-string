module Svg.String.Attributes exposing
    ( accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
    , amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
    , azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
    , capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
    , d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
    , elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
    , format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
    , gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
    , ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
    , kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
    , limitingConeAngle, local, markerHeight, markerUnits, markerWidth
    , maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
    , name, numOctaves, offset, operator, order, orient, orientation, origin
    , overlinePosition, overlineThickness, panose1, path, pathLength
    , patternContentUnits, patternTransform, patternUnits, pointOrder, points
    , pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
    , primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
    , repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
    , rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
    , speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
    , strikethroughPosition, strikethroughThickness, string, style, surfaceScale
    , systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
    , transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
    , unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
    , values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
    , width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
    , xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
    , xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan
    , alignmentBaseline, baselineShift, clipPath, clipRule, clip
    , colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
    , color, cursor, direction, display, dominantBaseline, enableBackground
    , fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
    , fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
    , glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
    , kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
    , mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
    , stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
    , strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
    , textAnchor, textDecoration, textRendering, unicodeBidi, visibility
    , wordSpacing, writingMode
    )

{-|


# Regular attributes

@docs accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
@docs amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
@docs azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
@docs capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
@docs d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
@docs elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
@docs format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
@docs gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
@docs ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
@docs kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
@docs limitingConeAngle, local, markerHeight, markerUnits, markerWidth
@docs maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
@docs name, numOctaves, offset, operator, order, orient, orientation, origin
@docs overlinePosition, overlineThickness, panose1, path, pathLength
@docs patternContentUnits, patternTransform, patternUnits, pointOrder, points
@docs pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
@docs primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
@docs repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
@docs rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
@docs speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
@docs strikethroughPosition, strikethroughThickness, string, style, surfaceScale
@docs systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
@docs transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
@docs unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
@docs values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
@docs width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
@docs xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
@docs xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan


# Presentation attributes

@docs alignmentBaseline, baselineShift, clipPath, clipRule, clip
@docs colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
@docs color, cursor, direction, display, dominantBaseline, enableBackground
@docs fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
@docs fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
@docs glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
@docs kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
@docs mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
@docs stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
@docs strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
@docs textAnchor, textDecoration, textRendering, unicodeBidi, visibility
@docs wordSpacing, writingMode

-}

import Svg.String exposing (Attribute)
import VirtualDom.Types



-- REGULAR ATTRIBUTES


{-| -}
accentHeight : String -> Attribute msg
accentHeight =
    VirtualDom.Types.Attribute False "accent-height"


{-| -}
accelerate : String -> Attribute msg
accelerate =
    VirtualDom.Types.Attribute False "accelerate"


{-| -}
accumulate : String -> Attribute msg
accumulate =
    VirtualDom.Types.Attribute False "accumulate"


{-| -}
additive : String -> Attribute msg
additive =
    VirtualDom.Types.Attribute False "additive"


{-| -}
alphabetic : String -> Attribute msg
alphabetic =
    VirtualDom.Types.Attribute False "alphabetic"


{-| -}
allowReorder : String -> Attribute msg
allowReorder =
    VirtualDom.Types.Attribute False "allowReorder"


{-| -}
amplitude : String -> Attribute msg
amplitude =
    VirtualDom.Types.Attribute False "amplitude"


{-| -}
arabicForm : String -> Attribute msg
arabicForm =
    VirtualDom.Types.Attribute False "arabic-form"


{-| -}
ascent : String -> Attribute msg
ascent =
    VirtualDom.Types.Attribute False "ascent"


{-| -}
attributeName : String -> Attribute msg
attributeName =
    VirtualDom.Types.Attribute False "attributeName"


{-| -}
attributeType : String -> Attribute msg
attributeType =
    VirtualDom.Types.Attribute False "attributeType"


{-| -}
autoReverse : String -> Attribute msg
autoReverse =
    VirtualDom.Types.Attribute False "autoReverse"


{-| -}
azimuth : String -> Attribute msg
azimuth =
    VirtualDom.Types.Attribute False "azimuth"


{-| -}
baseFrequency : String -> Attribute msg
baseFrequency =
    VirtualDom.Types.Attribute False "baseFrequency"


{-| -}
baseProfile : String -> Attribute msg
baseProfile =
    VirtualDom.Types.Attribute False "baseProfile"


{-| -}
bbox : String -> Attribute msg
bbox =
    VirtualDom.Types.Attribute False "bbox"


{-| -}
begin : String -> Attribute msg
begin =
    VirtualDom.Types.Attribute False "begin"


{-| -}
bias : String -> Attribute msg
bias =
    VirtualDom.Types.Attribute False "bias"


{-| -}
by : String -> Attribute msg
by value =
    VirtualDom.Types.Attribute False "by" value


{-| -}
calcMode : String -> Attribute msg
calcMode =
    VirtualDom.Types.Attribute False "calcMode"


{-| -}
capHeight : String -> Attribute msg
capHeight =
    VirtualDom.Types.Attribute False "cap-height"


{-| -}
class : String -> Attribute msg
class =
    VirtualDom.Types.Attribute False "class"


{-| -}
clipPathUnits : String -> Attribute msg
clipPathUnits =
    VirtualDom.Types.Attribute False "clipPathUnits"


{-| -}
contentScriptType : String -> Attribute msg
contentScriptType =
    VirtualDom.Types.Attribute False "contentScriptType"


{-| -}
contentStyleType : String -> Attribute msg
contentStyleType =
    VirtualDom.Types.Attribute False "contentStyleType"


{-| -}
cx : String -> Attribute msg
cx =
    VirtualDom.Types.Attribute False "cx"


{-| -}
cy : String -> Attribute msg
cy =
    VirtualDom.Types.Attribute False "cy"


{-| -}
d : String -> Attribute msg
d =
    VirtualDom.Types.Attribute False "d"


{-| -}
decelerate : String -> Attribute msg
decelerate =
    VirtualDom.Types.Attribute False "decelerate"


{-| -}
descent : String -> Attribute msg
descent =
    VirtualDom.Types.Attribute False "descent"


{-| -}
diffuseConstant : String -> Attribute msg
diffuseConstant =
    VirtualDom.Types.Attribute False "diffuseConstant"


{-| -}
divisor : String -> Attribute msg
divisor =
    VirtualDom.Types.Attribute False "divisor"


{-| -}
dur : String -> Attribute msg
dur =
    VirtualDom.Types.Attribute False "dur"


{-| -}
dx : String -> Attribute msg
dx =
    VirtualDom.Types.Attribute False "dx"


{-| -}
dy : String -> Attribute msg
dy =
    VirtualDom.Types.Attribute False "dy"


{-| -}
edgeMode : String -> Attribute msg
edgeMode =
    VirtualDom.Types.Attribute False "edgeMode"


{-| -}
elevation : String -> Attribute msg
elevation =
    VirtualDom.Types.Attribute False "elevation"


{-| -}
end : String -> Attribute msg
end =
    VirtualDom.Types.Attribute False "end"


{-| -}
exponent : String -> Attribute msg
exponent =
    VirtualDom.Types.Attribute False "exponent"


{-| -}
externalResourcesRequired : String -> Attribute msg
externalResourcesRequired =
    VirtualDom.Types.Attribute False "externalResourcesRequired"


{-| -}
filterRes : String -> Attribute msg
filterRes =
    VirtualDom.Types.Attribute False "filterRes"


{-| -}
filterUnits : String -> Attribute msg
filterUnits =
    VirtualDom.Types.Attribute False "filterUnits"


{-| -}
format : String -> Attribute msg
format =
    VirtualDom.Types.Attribute False "format"


{-| -}
from : String -> Attribute msg
from value =
    VirtualDom.Types.Attribute False "from" value


{-| -}
fx : String -> Attribute msg
fx =
    VirtualDom.Types.Attribute False "fx"


{-| -}
fy : String -> Attribute msg
fy =
    VirtualDom.Types.Attribute False "fy"


{-| -}
g1 : String -> Attribute msg
g1 =
    VirtualDom.Types.Attribute False "g1"


{-| -}
g2 : String -> Attribute msg
g2 =
    VirtualDom.Types.Attribute False "g2"


{-| -}
glyphName : String -> Attribute msg
glyphName =
    VirtualDom.Types.Attribute False "glyph-name"


{-| -}
glyphRef : String -> Attribute msg
glyphRef =
    VirtualDom.Types.Attribute False "glyphRef"


{-| -}
gradientTransform : String -> Attribute msg
gradientTransform =
    VirtualDom.Types.Attribute False "gradientTransform"


{-| -}
gradientUnits : String -> Attribute msg
gradientUnits =
    VirtualDom.Types.Attribute False "gradientUnits"


{-| -}
hanging : String -> Attribute msg
hanging =
    VirtualDom.Types.Attribute False "hanging"


{-| -}
height : String -> Attribute msg
height =
    VirtualDom.Types.Attribute False "height"


{-| -}
horizAdvX : String -> Attribute msg
horizAdvX =
    VirtualDom.Types.Attribute False "horiz-adv-x"


{-| -}
horizOriginX : String -> Attribute msg
horizOriginX =
    VirtualDom.Types.Attribute False "horiz-origin-x"


{-| -}
horizOriginY : String -> Attribute msg
horizOriginY =
    VirtualDom.Types.Attribute False "horiz-origin-y"


{-| -}
id : String -> Attribute msg
id =
    VirtualDom.Types.Attribute False "id"


{-| -}
ideographic : String -> Attribute msg
ideographic =
    VirtualDom.Types.Attribute False "ideographic"


{-| -}
in_ : String -> Attribute msg
in_ =
    VirtualDom.Types.Attribute False "in"


{-| -}
in2 : String -> Attribute msg
in2 =
    VirtualDom.Types.Attribute False "in2"


{-| -}
intercept : String -> Attribute msg
intercept =
    VirtualDom.Types.Attribute False "intercept"


{-| -}
k : String -> Attribute msg
k =
    VirtualDom.Types.Attribute False "k"


{-| -}
k1 : String -> Attribute msg
k1 =
    VirtualDom.Types.Attribute False "k1"


{-| -}
k2 : String -> Attribute msg
k2 =
    VirtualDom.Types.Attribute False "k2"


{-| -}
k3 : String -> Attribute msg
k3 =
    VirtualDom.Types.Attribute False "k3"


{-| -}
k4 : String -> Attribute msg
k4 =
    VirtualDom.Types.Attribute False "k4"


{-| -}
kernelMatrix : String -> Attribute msg
kernelMatrix =
    VirtualDom.Types.Attribute False "kernelMatrix"


{-| -}
kernelUnitLength : String -> Attribute msg
kernelUnitLength =
    VirtualDom.Types.Attribute False "kernelUnitLength"


{-| -}
keyPoints : String -> Attribute msg
keyPoints =
    VirtualDom.Types.Attribute False "keyPoints"


{-| -}
keySplines : String -> Attribute msg
keySplines =
    VirtualDom.Types.Attribute False "keySplines"


{-| -}
keyTimes : String -> Attribute msg
keyTimes =
    VirtualDom.Types.Attribute False "keyTimes"


{-| -}
lang : String -> Attribute msg
lang =
    VirtualDom.Types.Attribute False "lang"


{-| -}
lengthAdjust : String -> Attribute msg
lengthAdjust =
    VirtualDom.Types.Attribute False "lengthAdjust"


{-| -}
limitingConeAngle : String -> Attribute msg
limitingConeAngle =
    VirtualDom.Types.Attribute False "limitingConeAngle"


{-| -}
local : String -> Attribute msg
local =
    VirtualDom.Types.Attribute False "local"


{-| -}
markerHeight : String -> Attribute msg
markerHeight =
    VirtualDom.Types.Attribute False "markerHeight"


{-| -}
markerUnits : String -> Attribute msg
markerUnits =
    VirtualDom.Types.Attribute False "markerUnits"


{-| -}
markerWidth : String -> Attribute msg
markerWidth =
    VirtualDom.Types.Attribute False "markerWidth"


{-| -}
maskContentUnits : String -> Attribute msg
maskContentUnits =
    VirtualDom.Types.Attribute False "maskContentUnits"


{-| -}
maskUnits : String -> Attribute msg
maskUnits =
    VirtualDom.Types.Attribute False "maskUnits"


{-| -}
mathematical : String -> Attribute msg
mathematical =
    VirtualDom.Types.Attribute False "mathematical"


{-| -}
max : String -> Attribute msg
max =
    VirtualDom.Types.Attribute False "max"


{-| -}
media : String -> Attribute msg
media =
    VirtualDom.Types.Attribute False "media"


{-| -}
method : String -> Attribute msg
method =
    VirtualDom.Types.Attribute False "method"


{-| -}
min : String -> Attribute msg
min =
    VirtualDom.Types.Attribute False "min"


{-| -}
mode : String -> Attribute msg
mode =
    VirtualDom.Types.Attribute False "mode"


{-| -}
name : String -> Attribute msg
name =
    VirtualDom.Types.Attribute False "name"


{-| -}
numOctaves : String -> Attribute msg
numOctaves =
    VirtualDom.Types.Attribute False "numOctaves"


{-| -}
offset : String -> Attribute msg
offset =
    VirtualDom.Types.Attribute False "offset"


{-| -}
operator : String -> Attribute msg
operator =
    VirtualDom.Types.Attribute False "operator"


{-| -}
order : String -> Attribute msg
order =
    VirtualDom.Types.Attribute False "order"


{-| -}
orient : String -> Attribute msg
orient =
    VirtualDom.Types.Attribute False "orient"


{-| -}
orientation : String -> Attribute msg
orientation =
    VirtualDom.Types.Attribute False "orientation"


{-| -}
origin : String -> Attribute msg
origin =
    VirtualDom.Types.Attribute False "origin"


{-| -}
overlinePosition : String -> Attribute msg
overlinePosition =
    VirtualDom.Types.Attribute False "overline-position"


{-| -}
overlineThickness : String -> Attribute msg
overlineThickness =
    VirtualDom.Types.Attribute False "overline-thickness"


{-| -}
panose1 : String -> Attribute msg
panose1 =
    VirtualDom.Types.Attribute False "panose-1"


{-| -}
path : String -> Attribute msg
path =
    VirtualDom.Types.Attribute False "path"


{-| -}
pathLength : String -> Attribute msg
pathLength =
    VirtualDom.Types.Attribute False "pathLength"


{-| -}
patternContentUnits : String -> Attribute msg
patternContentUnits =
    VirtualDom.Types.Attribute False "patternContentUnits"


{-| -}
patternTransform : String -> Attribute msg
patternTransform =
    VirtualDom.Types.Attribute False "patternTransform"


{-| -}
patternUnits : String -> Attribute msg
patternUnits =
    VirtualDom.Types.Attribute False "patternUnits"


{-| -}
pointOrder : String -> Attribute msg
pointOrder =
    VirtualDom.Types.Attribute False "point-order"


{-| -}
points : String -> Attribute msg
points =
    VirtualDom.Types.Attribute False "points"


{-| -}
pointsAtX : String -> Attribute msg
pointsAtX =
    VirtualDom.Types.Attribute False "pointsAtX"


{-| -}
pointsAtY : String -> Attribute msg
pointsAtY =
    VirtualDom.Types.Attribute False "pointsAtY"


{-| -}
pointsAtZ : String -> Attribute msg
pointsAtZ =
    VirtualDom.Types.Attribute False "pointsAtZ"


{-| -}
preserveAlpha : String -> Attribute msg
preserveAlpha =
    VirtualDom.Types.Attribute False "preserveAlpha"


{-| -}
preserveAspectRatio : String -> Attribute msg
preserveAspectRatio =
    VirtualDom.Types.Attribute False "preserveAspectRatio"


{-| -}
primitiveUnits : String -> Attribute msg
primitiveUnits =
    VirtualDom.Types.Attribute False "primitiveUnits"


{-| -}
r : String -> Attribute msg
r =
    VirtualDom.Types.Attribute False "r"


{-| -}
radius : String -> Attribute msg
radius =
    VirtualDom.Types.Attribute False "radius"


{-| -}
refX : String -> Attribute msg
refX =
    VirtualDom.Types.Attribute False "refX"


{-| -}
refY : String -> Attribute msg
refY =
    VirtualDom.Types.Attribute False "refY"


{-| -}
renderingIntent : String -> Attribute msg
renderingIntent =
    VirtualDom.Types.Attribute False "rendering-intent"


{-| -}
repeatCount : String -> Attribute msg
repeatCount =
    VirtualDom.Types.Attribute False "repeatCount"


{-| -}
repeatDur : String -> Attribute msg
repeatDur =
    VirtualDom.Types.Attribute False "repeatDur"


{-| -}
requiredExtensions : String -> Attribute msg
requiredExtensions =
    VirtualDom.Types.Attribute False "requiredExtensions"


{-| -}
requiredFeatures : String -> Attribute msg
requiredFeatures =
    VirtualDom.Types.Attribute False "requiredFeatures"


{-| -}
restart : String -> Attribute msg
restart =
    VirtualDom.Types.Attribute False "restart"


{-| -}
result : String -> Attribute msg
result =
    VirtualDom.Types.Attribute False "result"


{-| -}
rotate : String -> Attribute msg
rotate =
    VirtualDom.Types.Attribute False "rotate"


{-| -}
rx : String -> Attribute msg
rx =
    VirtualDom.Types.Attribute False "rx"


{-| -}
ry : String -> Attribute msg
ry =
    VirtualDom.Types.Attribute False "ry"


{-| -}
scale : String -> Attribute msg
scale =
    VirtualDom.Types.Attribute False "scale"


{-| -}
seed : String -> Attribute msg
seed =
    VirtualDom.Types.Attribute False "seed"


{-| -}
slope : String -> Attribute msg
slope =
    VirtualDom.Types.Attribute False "slope"


{-| -}
spacing : String -> Attribute msg
spacing =
    VirtualDom.Types.Attribute False "spacing"


{-| -}
specularConstant : String -> Attribute msg
specularConstant =
    VirtualDom.Types.Attribute False "specularConstant"


{-| -}
specularExponent : String -> Attribute msg
specularExponent =
    VirtualDom.Types.Attribute False "specularExponent"


{-| -}
speed : String -> Attribute msg
speed =
    VirtualDom.Types.Attribute False "speed"


{-| -}
spreadMethod : String -> Attribute msg
spreadMethod =
    VirtualDom.Types.Attribute False "spreadMethod"


{-| -}
startOffset : String -> Attribute msg
startOffset =
    VirtualDom.Types.Attribute False "startOffset"


{-| -}
stdDeviation : String -> Attribute msg
stdDeviation =
    VirtualDom.Types.Attribute False "stdDeviation"


{-| -}
stemh : String -> Attribute msg
stemh =
    VirtualDom.Types.Attribute False "stemh"


{-| -}
stemv : String -> Attribute msg
stemv =
    VirtualDom.Types.Attribute False "stemv"


{-| -}
stitchTiles : String -> Attribute msg
stitchTiles =
    VirtualDom.Types.Attribute False "stitchTiles"


{-| -}
strikethroughPosition : String -> Attribute msg
strikethroughPosition =
    VirtualDom.Types.Attribute False "strikethrough-position"


{-| -}
strikethroughThickness : String -> Attribute msg
strikethroughThickness =
    VirtualDom.Types.Attribute False "strikethrough-thickness"


{-| -}
string : String -> Attribute msg
string =
    VirtualDom.Types.Attribute False "string"


{-| -}
style : String -> Attribute msg
style =
    VirtualDom.Types.Attribute False "style"


{-| -}
surfaceScale : String -> Attribute msg
surfaceScale =
    VirtualDom.Types.Attribute False "surfaceScale"


{-| -}
systemLanguage : String -> Attribute msg
systemLanguage =
    VirtualDom.Types.Attribute False "systemLanguage"


{-| -}
tableValues : String -> Attribute msg
tableValues =
    VirtualDom.Types.Attribute False "tableValues"


{-| -}
target : String -> Attribute msg
target =
    VirtualDom.Types.Attribute False "target"


{-| -}
targetX : String -> Attribute msg
targetX =
    VirtualDom.Types.Attribute False "targetX"


{-| -}
targetY : String -> Attribute msg
targetY =
    VirtualDom.Types.Attribute False "targetY"


{-| -}
textLength : String -> Attribute msg
textLength =
    VirtualDom.Types.Attribute False "textLength"


{-| -}
title : String -> Attribute msg
title =
    VirtualDom.Types.Attribute False "title"


{-| -}
to : String -> Attribute msg
to value =
    VirtualDom.Types.Attribute False "to" value


{-| -}
transform : String -> Attribute msg
transform =
    VirtualDom.Types.Attribute False "transform"


{-| -}
type_ : String -> Attribute msg
type_ =
    VirtualDom.Types.Attribute False "type"


{-| -}
u1 : String -> Attribute msg
u1 =
    VirtualDom.Types.Attribute False "u1"


{-| -}
u2 : String -> Attribute msg
u2 =
    VirtualDom.Types.Attribute False "u2"


{-| -}
underlinePosition : String -> Attribute msg
underlinePosition =
    VirtualDom.Types.Attribute False "underline-position"


{-| -}
underlineThickness : String -> Attribute msg
underlineThickness =
    VirtualDom.Types.Attribute False "underline-thickness"


{-| -}
unicode : String -> Attribute msg
unicode =
    VirtualDom.Types.Attribute False "unicode"


{-| -}
unicodeRange : String -> Attribute msg
unicodeRange =
    VirtualDom.Types.Attribute False "unicode-range"


{-| -}
unitsPerEm : String -> Attribute msg
unitsPerEm =
    VirtualDom.Types.Attribute False "units-per-em"


{-| -}
vAlphabetic : String -> Attribute msg
vAlphabetic =
    VirtualDom.Types.Attribute False "v-alphabetic"


{-| -}
vHanging : String -> Attribute msg
vHanging =
    VirtualDom.Types.Attribute False "v-hanging"


{-| -}
vIdeographic : String -> Attribute msg
vIdeographic =
    VirtualDom.Types.Attribute False "v-ideographic"


{-| -}
vMathematical : String -> Attribute msg
vMathematical =
    VirtualDom.Types.Attribute False "v-mathematical"


{-| -}
values : String -> Attribute msg
values value =
    VirtualDom.Types.Attribute False "values" value


{-| -}
version : String -> Attribute msg
version =
    VirtualDom.Types.Attribute False "version"


{-| -}
vertAdvY : String -> Attribute msg
vertAdvY =
    VirtualDom.Types.Attribute False "vert-adv-y"


{-| -}
vertOriginX : String -> Attribute msg
vertOriginX =
    VirtualDom.Types.Attribute False "vert-origin-x"


{-| -}
vertOriginY : String -> Attribute msg
vertOriginY =
    VirtualDom.Types.Attribute False "vert-origin-y"


{-| -}
viewBox : String -> Attribute msg
viewBox =
    VirtualDom.Types.Attribute False "viewBox"


{-| -}
viewTarget : String -> Attribute msg
viewTarget =
    VirtualDom.Types.Attribute False "viewTarget"


{-| -}
width : String -> Attribute msg
width =
    VirtualDom.Types.Attribute False "width"


{-| -}
widths : String -> Attribute msg
widths =
    VirtualDom.Types.Attribute False "widths"


{-| -}
x : String -> Attribute msg
x =
    VirtualDom.Types.Attribute False "x"


{-| -}
xHeight : String -> Attribute msg
xHeight =
    VirtualDom.Types.Attribute False "x-height"


{-| -}
x1 : String -> Attribute msg
x1 =
    VirtualDom.Types.Attribute False "x1"


{-| -}
x2 : String -> Attribute msg
x2 =
    VirtualDom.Types.Attribute False "x2"


{-| -}
xChannelSelector : String -> Attribute msg
xChannelSelector =
    VirtualDom.Types.Attribute False "xChannelSelector"


{-| -}
xlinkActuate : String -> Attribute msg
xlinkActuate =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:actuate"


{-| -}
xlinkArcrole : String -> Attribute msg
xlinkArcrole =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-| -}
xlinkHref : String -> Attribute msg
xlinkHref value =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:href" value


{-| -}
xlinkRole : String -> Attribute msg
xlinkRole =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:role"


{-| -}
xlinkShow : String -> Attribute msg
xlinkShow =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:show"


{-| -}
xlinkTitle : String -> Attribute msg
xlinkTitle =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:title"


{-| -}
xlinkType : String -> Attribute msg
xlinkType =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/1999/xlink" "xlink:type"


{-| -}
xmlBase : String -> Attribute msg
xmlBase =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/XML/1998/namespace" "xml:base"


{-| -}
xmlLang : String -> Attribute msg
xmlLang =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-| -}
xmlSpace : String -> Attribute msg
xmlSpace =
    VirtualDom.Types.AttributeNS False "http://www.w3.org/XML/1998/namespace" "xml:space"


{-| -}
y : String -> Attribute msg
y =
    VirtualDom.Types.Attribute False "y"


{-| -}
y1 : String -> Attribute msg
y1 =
    VirtualDom.Types.Attribute False "y1"


{-| -}
y2 : String -> Attribute msg
y2 =
    VirtualDom.Types.Attribute False "y2"


{-| -}
yChannelSelector : String -> Attribute msg
yChannelSelector =
    VirtualDom.Types.Attribute False "yChannelSelector"


{-| -}
z : String -> Attribute msg
z =
    VirtualDom.Types.Attribute False "z"


{-| -}
zoomAndPan : String -> Attribute msg
zoomAndPan =
    VirtualDom.Types.Attribute False "zoomAndPan"



-- PRESENTATION ATTRIBUTES


{-| -}
alignmentBaseline : String -> Attribute msg
alignmentBaseline =
    VirtualDom.Types.Attribute False "alignment-baseline"


{-| -}
baselineShift : String -> Attribute msg
baselineShift =
    VirtualDom.Types.Attribute False "baseline-shift"


{-| -}
clipPath : String -> Attribute msg
clipPath =
    VirtualDom.Types.Attribute False "clip-path"


{-| -}
clipRule : String -> Attribute msg
clipRule =
    VirtualDom.Types.Attribute False "clip-rule"


{-| -}
clip : String -> Attribute msg
clip =
    VirtualDom.Types.Attribute False "clip"


{-| -}
colorInterpolationFilters : String -> Attribute msg
colorInterpolationFilters =
    VirtualDom.Types.Attribute False "color-interpolation-filters"


{-| -}
colorInterpolation : String -> Attribute msg
colorInterpolation =
    VirtualDom.Types.Attribute False "color-interpolation"


{-| -}
colorProfile : String -> Attribute msg
colorProfile =
    VirtualDom.Types.Attribute False "color-profile"


{-| -}
colorRendering : String -> Attribute msg
colorRendering =
    VirtualDom.Types.Attribute False "color-rendering"


{-| -}
color : String -> Attribute msg
color =
    VirtualDom.Types.Attribute False "color"


{-| -}
cursor : String -> Attribute msg
cursor =
    VirtualDom.Types.Attribute False "cursor"


{-| -}
direction : String -> Attribute msg
direction =
    VirtualDom.Types.Attribute False "direction"


{-| -}
display : String -> Attribute msg
display =
    VirtualDom.Types.Attribute False "display"


{-| -}
dominantBaseline : String -> Attribute msg
dominantBaseline =
    VirtualDom.Types.Attribute False "dominant-baseline"


{-| -}
enableBackground : String -> Attribute msg
enableBackground =
    VirtualDom.Types.Attribute False "enable-background"


{-| -}
fillOpacity : String -> Attribute msg
fillOpacity =
    VirtualDom.Types.Attribute False "fill-opacity"


{-| -}
fillRule : String -> Attribute msg
fillRule =
    VirtualDom.Types.Attribute False "fill-rule"


{-| -}
fill : String -> Attribute msg
fill =
    VirtualDom.Types.Attribute False "fill"


{-| -}
filter : String -> Attribute msg
filter =
    VirtualDom.Types.Attribute False "filter"


{-| -}
floodColor : String -> Attribute msg
floodColor =
    VirtualDom.Types.Attribute False "flood-color"


{-| -}
floodOpacity : String -> Attribute msg
floodOpacity =
    VirtualDom.Types.Attribute False "flood-opacity"


{-| -}
fontFamily : String -> Attribute msg
fontFamily =
    VirtualDom.Types.Attribute False "font-family"


{-| -}
fontSizeAdjust : String -> Attribute msg
fontSizeAdjust =
    VirtualDom.Types.Attribute False "font-size-adjust"


{-| -}
fontSize : String -> Attribute msg
fontSize =
    VirtualDom.Types.Attribute False "font-size"


{-| -}
fontStretch : String -> Attribute msg
fontStretch =
    VirtualDom.Types.Attribute False "font-stretch"


{-| -}
fontStyle : String -> Attribute msg
fontStyle =
    VirtualDom.Types.Attribute False "font-style"


{-| -}
fontVariant : String -> Attribute msg
fontVariant =
    VirtualDom.Types.Attribute False "font-variant"


{-| -}
fontWeight : String -> Attribute msg
fontWeight =
    VirtualDom.Types.Attribute False "font-weight"


{-| -}
glyphOrientationHorizontal : String -> Attribute msg
glyphOrientationHorizontal =
    VirtualDom.Types.Attribute False "glyph-orientation-horizontal"


{-| -}
glyphOrientationVertical : String -> Attribute msg
glyphOrientationVertical =
    VirtualDom.Types.Attribute False "glyph-orientation-vertical"


{-| -}
imageRendering : String -> Attribute msg
imageRendering =
    VirtualDom.Types.Attribute False "image-rendering"


{-| -}
kerning : String -> Attribute msg
kerning =
    VirtualDom.Types.Attribute False "kerning"


{-| -}
letterSpacing : String -> Attribute msg
letterSpacing =
    VirtualDom.Types.Attribute False "letter-spacing"


{-| -}
lightingColor : String -> Attribute msg
lightingColor =
    VirtualDom.Types.Attribute False "lighting-color"


{-| -}
markerEnd : String -> Attribute msg
markerEnd =
    VirtualDom.Types.Attribute False "marker-end"


{-| -}
markerMid : String -> Attribute msg
markerMid =
    VirtualDom.Types.Attribute False "marker-mid"


{-| -}
markerStart : String -> Attribute msg
markerStart =
    VirtualDom.Types.Attribute False "marker-start"


{-| -}
mask : String -> Attribute msg
mask =
    VirtualDom.Types.Attribute False "mask"


{-| -}
opacity : String -> Attribute msg
opacity =
    VirtualDom.Types.Attribute False "opacity"


{-| -}
overflow : String -> Attribute msg
overflow =
    VirtualDom.Types.Attribute False "overflow"


{-| -}
pointerEvents : String -> Attribute msg
pointerEvents =
    VirtualDom.Types.Attribute False "pointer-events"


{-| -}
shapeRendering : String -> Attribute msg
shapeRendering =
    VirtualDom.Types.Attribute False "shape-rendering"


{-| -}
stopColor : String -> Attribute msg
stopColor =
    VirtualDom.Types.Attribute False "stop-color"


{-| -}
stopOpacity : String -> Attribute msg
stopOpacity =
    VirtualDom.Types.Attribute False "stop-opacity"


{-| -}
strokeDasharray : String -> Attribute msg
strokeDasharray =
    VirtualDom.Types.Attribute False "stroke-dasharray"


{-| -}
strokeDashoffset : String -> Attribute msg
strokeDashoffset =
    VirtualDom.Types.Attribute False "stroke-dashoffset"


{-| -}
strokeLinecap : String -> Attribute msg
strokeLinecap =
    VirtualDom.Types.Attribute False "stroke-linecap"


{-| -}
strokeLinejoin : String -> Attribute msg
strokeLinejoin =
    VirtualDom.Types.Attribute False "stroke-linejoin"


{-| -}
strokeMiterlimit : String -> Attribute msg
strokeMiterlimit =
    VirtualDom.Types.Attribute False "stroke-miterlimit"


{-| -}
strokeOpacity : String -> Attribute msg
strokeOpacity =
    VirtualDom.Types.Attribute False "stroke-opacity"


{-| -}
strokeWidth : String -> Attribute msg
strokeWidth =
    VirtualDom.Types.Attribute False "stroke-width"


{-| -}
stroke : String -> Attribute msg
stroke =
    VirtualDom.Types.Attribute False "stroke"


{-| -}
textAnchor : String -> Attribute msg
textAnchor =
    VirtualDom.Types.Attribute False "text-anchor"


{-| -}
textDecoration : String -> Attribute msg
textDecoration =
    VirtualDom.Types.Attribute False "text-decoration"


{-| -}
textRendering : String -> Attribute msg
textRendering =
    VirtualDom.Types.Attribute False "text-rendering"


{-| -}
unicodeBidi : String -> Attribute msg
unicodeBidi =
    VirtualDom.Types.Attribute False "unicode-bidi"


{-| -}
visibility : String -> Attribute msg
visibility =
    VirtualDom.Types.Attribute False "visibility"


{-| -}
wordSpacing : String -> Attribute msg
wordSpacing =
    VirtualDom.Types.Attribute False "word-spacing"


{-| -}
writingMode : String -> Attribute msg
writingMode =
    VirtualDom.Types.Attribute False "writing-mode"
