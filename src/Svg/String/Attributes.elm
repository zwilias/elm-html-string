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
    VirtualDom.Types.Attribute "accent-height"


{-| -}
accelerate : String -> Attribute msg
accelerate =
    VirtualDom.Types.Attribute "accelerate"


{-| -}
accumulate : String -> Attribute msg
accumulate =
    VirtualDom.Types.Attribute "accumulate"


{-| -}
additive : String -> Attribute msg
additive =
    VirtualDom.Types.Attribute "additive"


{-| -}
alphabetic : String -> Attribute msg
alphabetic =
    VirtualDom.Types.Attribute "alphabetic"


{-| -}
allowReorder : String -> Attribute msg
allowReorder =
    VirtualDom.Types.Attribute "allowReorder"


{-| -}
amplitude : String -> Attribute msg
amplitude =
    VirtualDom.Types.Attribute "amplitude"


{-| -}
arabicForm : String -> Attribute msg
arabicForm =
    VirtualDom.Types.Attribute "arabic-form"


{-| -}
ascent : String -> Attribute msg
ascent =
    VirtualDom.Types.Attribute "ascent"


{-| -}
attributeName : String -> Attribute msg
attributeName =
    VirtualDom.Types.Attribute "attributeName"


{-| -}
attributeType : String -> Attribute msg
attributeType =
    VirtualDom.Types.Attribute "attributeType"


{-| -}
autoReverse : String -> Attribute msg
autoReverse =
    VirtualDom.Types.Attribute "autoReverse"


{-| -}
azimuth : String -> Attribute msg
azimuth =
    VirtualDom.Types.Attribute "azimuth"


{-| -}
baseFrequency : String -> Attribute msg
baseFrequency =
    VirtualDom.Types.Attribute "baseFrequency"


{-| -}
baseProfile : String -> Attribute msg
baseProfile =
    VirtualDom.Types.Attribute "baseProfile"


{-| -}
bbox : String -> Attribute msg
bbox =
    VirtualDom.Types.Attribute "bbox"


{-| -}
begin : String -> Attribute msg
begin =
    VirtualDom.Types.Attribute "begin"


{-| -}
bias : String -> Attribute msg
bias =
    VirtualDom.Types.Attribute "bias"


{-| -}
by : String -> Attribute msg
by value =
    VirtualDom.Types.Attribute "by" value


{-| -}
calcMode : String -> Attribute msg
calcMode =
    VirtualDom.Types.Attribute "calcMode"


{-| -}
capHeight : String -> Attribute msg
capHeight =
    VirtualDom.Types.Attribute "cap-height"


{-| -}
class : String -> Attribute msg
class =
    VirtualDom.Types.Attribute "class"


{-| -}
clipPathUnits : String -> Attribute msg
clipPathUnits =
    VirtualDom.Types.Attribute "clipPathUnits"


{-| -}
contentScriptType : String -> Attribute msg
contentScriptType =
    VirtualDom.Types.Attribute "contentScriptType"


{-| -}
contentStyleType : String -> Attribute msg
contentStyleType =
    VirtualDom.Types.Attribute "contentStyleType"


{-| -}
cx : String -> Attribute msg
cx =
    VirtualDom.Types.Attribute "cx"


{-| -}
cy : String -> Attribute msg
cy =
    VirtualDom.Types.Attribute "cy"


{-| -}
d : String -> Attribute msg
d =
    VirtualDom.Types.Attribute "d"


{-| -}
decelerate : String -> Attribute msg
decelerate =
    VirtualDom.Types.Attribute "decelerate"


{-| -}
descent : String -> Attribute msg
descent =
    VirtualDom.Types.Attribute "descent"


{-| -}
diffuseConstant : String -> Attribute msg
diffuseConstant =
    VirtualDom.Types.Attribute "diffuseConstant"


{-| -}
divisor : String -> Attribute msg
divisor =
    VirtualDom.Types.Attribute "divisor"


{-| -}
dur : String -> Attribute msg
dur =
    VirtualDom.Types.Attribute "dur"


{-| -}
dx : String -> Attribute msg
dx =
    VirtualDom.Types.Attribute "dx"


{-| -}
dy : String -> Attribute msg
dy =
    VirtualDom.Types.Attribute "dy"


{-| -}
edgeMode : String -> Attribute msg
edgeMode =
    VirtualDom.Types.Attribute "edgeMode"


{-| -}
elevation : String -> Attribute msg
elevation =
    VirtualDom.Types.Attribute "elevation"


{-| -}
end : String -> Attribute msg
end =
    VirtualDom.Types.Attribute "end"


{-| -}
exponent : String -> Attribute msg
exponent =
    VirtualDom.Types.Attribute "exponent"


{-| -}
externalResourcesRequired : String -> Attribute msg
externalResourcesRequired =
    VirtualDom.Types.Attribute "externalResourcesRequired"


{-| -}
filterRes : String -> Attribute msg
filterRes =
    VirtualDom.Types.Attribute "filterRes"


{-| -}
filterUnits : String -> Attribute msg
filterUnits =
    VirtualDom.Types.Attribute "filterUnits"


{-| -}
format : String -> Attribute msg
format =
    VirtualDom.Types.Attribute "format"


{-| -}
from : String -> Attribute msg
from value =
    VirtualDom.Types.Attribute "from" value


{-| -}
fx : String -> Attribute msg
fx =
    VirtualDom.Types.Attribute "fx"


{-| -}
fy : String -> Attribute msg
fy =
    VirtualDom.Types.Attribute "fy"


{-| -}
g1 : String -> Attribute msg
g1 =
    VirtualDom.Types.Attribute "g1"


{-| -}
g2 : String -> Attribute msg
g2 =
    VirtualDom.Types.Attribute "g2"


{-| -}
glyphName : String -> Attribute msg
glyphName =
    VirtualDom.Types.Attribute "glyph-name"


{-| -}
glyphRef : String -> Attribute msg
glyphRef =
    VirtualDom.Types.Attribute "glyphRef"


{-| -}
gradientTransform : String -> Attribute msg
gradientTransform =
    VirtualDom.Types.Attribute "gradientTransform"


{-| -}
gradientUnits : String -> Attribute msg
gradientUnits =
    VirtualDom.Types.Attribute "gradientUnits"


{-| -}
hanging : String -> Attribute msg
hanging =
    VirtualDom.Types.Attribute "hanging"


{-| -}
height : String -> Attribute msg
height =
    VirtualDom.Types.Attribute "height"


{-| -}
horizAdvX : String -> Attribute msg
horizAdvX =
    VirtualDom.Types.Attribute "horiz-adv-x"


{-| -}
horizOriginX : String -> Attribute msg
horizOriginX =
    VirtualDom.Types.Attribute "horiz-origin-x"


{-| -}
horizOriginY : String -> Attribute msg
horizOriginY =
    VirtualDom.Types.Attribute "horiz-origin-y"


{-| -}
id : String -> Attribute msg
id =
    VirtualDom.Types.Attribute "id"


{-| -}
ideographic : String -> Attribute msg
ideographic =
    VirtualDom.Types.Attribute "ideographic"


{-| -}
in_ : String -> Attribute msg
in_ =
    VirtualDom.Types.Attribute "in"


{-| -}
in2 : String -> Attribute msg
in2 =
    VirtualDom.Types.Attribute "in2"


{-| -}
intercept : String -> Attribute msg
intercept =
    VirtualDom.Types.Attribute "intercept"


{-| -}
k : String -> Attribute msg
k =
    VirtualDom.Types.Attribute "k"


{-| -}
k1 : String -> Attribute msg
k1 =
    VirtualDom.Types.Attribute "k1"


{-| -}
k2 : String -> Attribute msg
k2 =
    VirtualDom.Types.Attribute "k2"


{-| -}
k3 : String -> Attribute msg
k3 =
    VirtualDom.Types.Attribute "k3"


{-| -}
k4 : String -> Attribute msg
k4 =
    VirtualDom.Types.Attribute "k4"


{-| -}
kernelMatrix : String -> Attribute msg
kernelMatrix =
    VirtualDom.Types.Attribute "kernelMatrix"


{-| -}
kernelUnitLength : String -> Attribute msg
kernelUnitLength =
    VirtualDom.Types.Attribute "kernelUnitLength"


{-| -}
keyPoints : String -> Attribute msg
keyPoints =
    VirtualDom.Types.Attribute "keyPoints"


{-| -}
keySplines : String -> Attribute msg
keySplines =
    VirtualDom.Types.Attribute "keySplines"


{-| -}
keyTimes : String -> Attribute msg
keyTimes =
    VirtualDom.Types.Attribute "keyTimes"


{-| -}
lang : String -> Attribute msg
lang =
    VirtualDom.Types.Attribute "lang"


{-| -}
lengthAdjust : String -> Attribute msg
lengthAdjust =
    VirtualDom.Types.Attribute "lengthAdjust"


{-| -}
limitingConeAngle : String -> Attribute msg
limitingConeAngle =
    VirtualDom.Types.Attribute "limitingConeAngle"


{-| -}
local : String -> Attribute msg
local =
    VirtualDom.Types.Attribute "local"


{-| -}
markerHeight : String -> Attribute msg
markerHeight =
    VirtualDom.Types.Attribute "markerHeight"


{-| -}
markerUnits : String -> Attribute msg
markerUnits =
    VirtualDom.Types.Attribute "markerUnits"


{-| -}
markerWidth : String -> Attribute msg
markerWidth =
    VirtualDom.Types.Attribute "markerWidth"


{-| -}
maskContentUnits : String -> Attribute msg
maskContentUnits =
    VirtualDom.Types.Attribute "maskContentUnits"


{-| -}
maskUnits : String -> Attribute msg
maskUnits =
    VirtualDom.Types.Attribute "maskUnits"


{-| -}
mathematical : String -> Attribute msg
mathematical =
    VirtualDom.Types.Attribute "mathematical"


{-| -}
max : String -> Attribute msg
max =
    VirtualDom.Types.Attribute "max"


{-| -}
media : String -> Attribute msg
media =
    VirtualDom.Types.Attribute "media"


{-| -}
method : String -> Attribute msg
method =
    VirtualDom.Types.Attribute "method"


{-| -}
min : String -> Attribute msg
min =
    VirtualDom.Types.Attribute "min"


{-| -}
mode : String -> Attribute msg
mode =
    VirtualDom.Types.Attribute "mode"


{-| -}
name : String -> Attribute msg
name =
    VirtualDom.Types.Attribute "name"


{-| -}
numOctaves : String -> Attribute msg
numOctaves =
    VirtualDom.Types.Attribute "numOctaves"


{-| -}
offset : String -> Attribute msg
offset =
    VirtualDom.Types.Attribute "offset"


{-| -}
operator : String -> Attribute msg
operator =
    VirtualDom.Types.Attribute "operator"


{-| -}
order : String -> Attribute msg
order =
    VirtualDom.Types.Attribute "order"


{-| -}
orient : String -> Attribute msg
orient =
    VirtualDom.Types.Attribute "orient"


{-| -}
orientation : String -> Attribute msg
orientation =
    VirtualDom.Types.Attribute "orientation"


{-| -}
origin : String -> Attribute msg
origin =
    VirtualDom.Types.Attribute "origin"


{-| -}
overlinePosition : String -> Attribute msg
overlinePosition =
    VirtualDom.Types.Attribute "overline-position"


{-| -}
overlineThickness : String -> Attribute msg
overlineThickness =
    VirtualDom.Types.Attribute "overline-thickness"


{-| -}
panose1 : String -> Attribute msg
panose1 =
    VirtualDom.Types.Attribute "panose-1"


{-| -}
path : String -> Attribute msg
path =
    VirtualDom.Types.Attribute "path"


{-| -}
pathLength : String -> Attribute msg
pathLength =
    VirtualDom.Types.Attribute "pathLength"


{-| -}
patternContentUnits : String -> Attribute msg
patternContentUnits =
    VirtualDom.Types.Attribute "patternContentUnits"


{-| -}
patternTransform : String -> Attribute msg
patternTransform =
    VirtualDom.Types.Attribute "patternTransform"


{-| -}
patternUnits : String -> Attribute msg
patternUnits =
    VirtualDom.Types.Attribute "patternUnits"


{-| -}
pointOrder : String -> Attribute msg
pointOrder =
    VirtualDom.Types.Attribute "point-order"


{-| -}
points : String -> Attribute msg
points =
    VirtualDom.Types.Attribute "points"


{-| -}
pointsAtX : String -> Attribute msg
pointsAtX =
    VirtualDom.Types.Attribute "pointsAtX"


{-| -}
pointsAtY : String -> Attribute msg
pointsAtY =
    VirtualDom.Types.Attribute "pointsAtY"


{-| -}
pointsAtZ : String -> Attribute msg
pointsAtZ =
    VirtualDom.Types.Attribute "pointsAtZ"


{-| -}
preserveAlpha : String -> Attribute msg
preserveAlpha =
    VirtualDom.Types.Attribute "preserveAlpha"


{-| -}
preserveAspectRatio : String -> Attribute msg
preserveAspectRatio =
    VirtualDom.Types.Attribute "preserveAspectRatio"


{-| -}
primitiveUnits : String -> Attribute msg
primitiveUnits =
    VirtualDom.Types.Attribute "primitiveUnits"


{-| -}
r : String -> Attribute msg
r =
    VirtualDom.Types.Attribute "r"


{-| -}
radius : String -> Attribute msg
radius =
    VirtualDom.Types.Attribute "radius"


{-| -}
refX : String -> Attribute msg
refX =
    VirtualDom.Types.Attribute "refX"


{-| -}
refY : String -> Attribute msg
refY =
    VirtualDom.Types.Attribute "refY"


{-| -}
renderingIntent : String -> Attribute msg
renderingIntent =
    VirtualDom.Types.Attribute "rendering-intent"


{-| -}
repeatCount : String -> Attribute msg
repeatCount =
    VirtualDom.Types.Attribute "repeatCount"


{-| -}
repeatDur : String -> Attribute msg
repeatDur =
    VirtualDom.Types.Attribute "repeatDur"


{-| -}
requiredExtensions : String -> Attribute msg
requiredExtensions =
    VirtualDom.Types.Attribute "requiredExtensions"


{-| -}
requiredFeatures : String -> Attribute msg
requiredFeatures =
    VirtualDom.Types.Attribute "requiredFeatures"


{-| -}
restart : String -> Attribute msg
restart =
    VirtualDom.Types.Attribute "restart"


{-| -}
result : String -> Attribute msg
result =
    VirtualDom.Types.Attribute "result"


{-| -}
rotate : String -> Attribute msg
rotate =
    VirtualDom.Types.Attribute "rotate"


{-| -}
rx : String -> Attribute msg
rx =
    VirtualDom.Types.Attribute "rx"


{-| -}
ry : String -> Attribute msg
ry =
    VirtualDom.Types.Attribute "ry"


{-| -}
scale : String -> Attribute msg
scale =
    VirtualDom.Types.Attribute "scale"


{-| -}
seed : String -> Attribute msg
seed =
    VirtualDom.Types.Attribute "seed"


{-| -}
slope : String -> Attribute msg
slope =
    VirtualDom.Types.Attribute "slope"


{-| -}
spacing : String -> Attribute msg
spacing =
    VirtualDom.Types.Attribute "spacing"


{-| -}
specularConstant : String -> Attribute msg
specularConstant =
    VirtualDom.Types.Attribute "specularConstant"


{-| -}
specularExponent : String -> Attribute msg
specularExponent =
    VirtualDom.Types.Attribute "specularExponent"


{-| -}
speed : String -> Attribute msg
speed =
    VirtualDom.Types.Attribute "speed"


{-| -}
spreadMethod : String -> Attribute msg
spreadMethod =
    VirtualDom.Types.Attribute "spreadMethod"


{-| -}
startOffset : String -> Attribute msg
startOffset =
    VirtualDom.Types.Attribute "startOffset"


{-| -}
stdDeviation : String -> Attribute msg
stdDeviation =
    VirtualDom.Types.Attribute "stdDeviation"


{-| -}
stemh : String -> Attribute msg
stemh =
    VirtualDom.Types.Attribute "stemh"


{-| -}
stemv : String -> Attribute msg
stemv =
    VirtualDom.Types.Attribute "stemv"


{-| -}
stitchTiles : String -> Attribute msg
stitchTiles =
    VirtualDom.Types.Attribute "stitchTiles"


{-| -}
strikethroughPosition : String -> Attribute msg
strikethroughPosition =
    VirtualDom.Types.Attribute "strikethrough-position"


{-| -}
strikethroughThickness : String -> Attribute msg
strikethroughThickness =
    VirtualDom.Types.Attribute "strikethrough-thickness"


{-| -}
string : String -> Attribute msg
string =
    VirtualDom.Types.Attribute "string"


{-| -}
style : String -> Attribute msg
style =
    VirtualDom.Types.Attribute "style"


{-| -}
surfaceScale : String -> Attribute msg
surfaceScale =
    VirtualDom.Types.Attribute "surfaceScale"


{-| -}
systemLanguage : String -> Attribute msg
systemLanguage =
    VirtualDom.Types.Attribute "systemLanguage"


{-| -}
tableValues : String -> Attribute msg
tableValues =
    VirtualDom.Types.Attribute "tableValues"


{-| -}
target : String -> Attribute msg
target =
    VirtualDom.Types.Attribute "target"


{-| -}
targetX : String -> Attribute msg
targetX =
    VirtualDom.Types.Attribute "targetX"


{-| -}
targetY : String -> Attribute msg
targetY =
    VirtualDom.Types.Attribute "targetY"


{-| -}
textLength : String -> Attribute msg
textLength =
    VirtualDom.Types.Attribute "textLength"


{-| -}
title : String -> Attribute msg
title =
    VirtualDom.Types.Attribute "title"


{-| -}
to : String -> Attribute msg
to value =
    VirtualDom.Types.Attribute "to" value


{-| -}
transform : String -> Attribute msg
transform =
    VirtualDom.Types.Attribute "transform"


{-| -}
type_ : String -> Attribute msg
type_ =
    VirtualDom.Types.Attribute "type"


{-| -}
u1 : String -> Attribute msg
u1 =
    VirtualDom.Types.Attribute "u1"


{-| -}
u2 : String -> Attribute msg
u2 =
    VirtualDom.Types.Attribute "u2"


{-| -}
underlinePosition : String -> Attribute msg
underlinePosition =
    VirtualDom.Types.Attribute "underline-position"


{-| -}
underlineThickness : String -> Attribute msg
underlineThickness =
    VirtualDom.Types.Attribute "underline-thickness"


{-| -}
unicode : String -> Attribute msg
unicode =
    VirtualDom.Types.Attribute "unicode"


{-| -}
unicodeRange : String -> Attribute msg
unicodeRange =
    VirtualDom.Types.Attribute "unicode-range"


{-| -}
unitsPerEm : String -> Attribute msg
unitsPerEm =
    VirtualDom.Types.Attribute "units-per-em"


{-| -}
vAlphabetic : String -> Attribute msg
vAlphabetic =
    VirtualDom.Types.Attribute "v-alphabetic"


{-| -}
vHanging : String -> Attribute msg
vHanging =
    VirtualDom.Types.Attribute "v-hanging"


{-| -}
vIdeographic : String -> Attribute msg
vIdeographic =
    VirtualDom.Types.Attribute "v-ideographic"


{-| -}
vMathematical : String -> Attribute msg
vMathematical =
    VirtualDom.Types.Attribute "v-mathematical"


{-| -}
values : String -> Attribute msg
values value =
    VirtualDom.Types.Attribute "values" value


{-| -}
version : String -> Attribute msg
version =
    VirtualDom.Types.Attribute "version"


{-| -}
vertAdvY : String -> Attribute msg
vertAdvY =
    VirtualDom.Types.Attribute "vert-adv-y"


{-| -}
vertOriginX : String -> Attribute msg
vertOriginX =
    VirtualDom.Types.Attribute "vert-origin-x"


{-| -}
vertOriginY : String -> Attribute msg
vertOriginY =
    VirtualDom.Types.Attribute "vert-origin-y"


{-| -}
viewBox : String -> Attribute msg
viewBox =
    VirtualDom.Types.Attribute "viewBox"


{-| -}
viewTarget : String -> Attribute msg
viewTarget =
    VirtualDom.Types.Attribute "viewTarget"


{-| -}
width : String -> Attribute msg
width =
    VirtualDom.Types.Attribute "width"


{-| -}
widths : String -> Attribute msg
widths =
    VirtualDom.Types.Attribute "widths"


{-| -}
x : String -> Attribute msg
x =
    VirtualDom.Types.Attribute "x"


{-| -}
xHeight : String -> Attribute msg
xHeight =
    VirtualDom.Types.Attribute "x-height"


{-| -}
x1 : String -> Attribute msg
x1 =
    VirtualDom.Types.Attribute "x1"


{-| -}
x2 : String -> Attribute msg
x2 =
    VirtualDom.Types.Attribute "x2"


{-| -}
xChannelSelector : String -> Attribute msg
xChannelSelector =
    VirtualDom.Types.Attribute "xChannelSelector"


{-| -}
xlinkActuate : String -> Attribute msg
xlinkActuate =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-| -}
xlinkArcrole : String -> Attribute msg
xlinkArcrole =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-| -}
xlinkHref : String -> Attribute msg
xlinkHref value =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:href" value


{-| -}
xlinkRole : String -> Attribute msg
xlinkRole =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-| -}
xlinkShow : String -> Attribute msg
xlinkShow =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-| -}
xlinkTitle : String -> Attribute msg
xlinkTitle =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-| -}
xlinkType : String -> Attribute msg
xlinkType =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-| -}
xmlBase : String -> Attribute msg
xmlBase =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-| -}
xmlLang : String -> Attribute msg
xmlLang =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-| -}
xmlSpace : String -> Attribute msg
xmlSpace =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-| -}
y : String -> Attribute msg
y =
    VirtualDom.Types.Attribute "y"


{-| -}
y1 : String -> Attribute msg
y1 =
    VirtualDom.Types.Attribute "y1"


{-| -}
y2 : String -> Attribute msg
y2 =
    VirtualDom.Types.Attribute "y2"


{-| -}
yChannelSelector : String -> Attribute msg
yChannelSelector =
    VirtualDom.Types.Attribute "yChannelSelector"


{-| -}
z : String -> Attribute msg
z =
    VirtualDom.Types.Attribute "z"


{-| -}
zoomAndPan : String -> Attribute msg
zoomAndPan =
    VirtualDom.Types.Attribute "zoomAndPan"



-- PRESENTATION ATTRIBUTES


{-| -}
alignmentBaseline : String -> Attribute msg
alignmentBaseline =
    VirtualDom.Types.Attribute "alignment-baseline"


{-| -}
baselineShift : String -> Attribute msg
baselineShift =
    VirtualDom.Types.Attribute "baseline-shift"


{-| -}
clipPath : String -> Attribute msg
clipPath =
    VirtualDom.Types.Attribute "clip-path"


{-| -}
clipRule : String -> Attribute msg
clipRule =
    VirtualDom.Types.Attribute "clip-rule"


{-| -}
clip : String -> Attribute msg
clip =
    VirtualDom.Types.Attribute "clip"


{-| -}
colorInterpolationFilters : String -> Attribute msg
colorInterpolationFilters =
    VirtualDom.Types.Attribute "color-interpolation-filters"


{-| -}
colorInterpolation : String -> Attribute msg
colorInterpolation =
    VirtualDom.Types.Attribute "color-interpolation"


{-| -}
colorProfile : String -> Attribute msg
colorProfile =
    VirtualDom.Types.Attribute "color-profile"


{-| -}
colorRendering : String -> Attribute msg
colorRendering =
    VirtualDom.Types.Attribute "color-rendering"


{-| -}
color : String -> Attribute msg
color =
    VirtualDom.Types.Attribute "color"


{-| -}
cursor : String -> Attribute msg
cursor =
    VirtualDom.Types.Attribute "cursor"


{-| -}
direction : String -> Attribute msg
direction =
    VirtualDom.Types.Attribute "direction"


{-| -}
display : String -> Attribute msg
display =
    VirtualDom.Types.Attribute "display"


{-| -}
dominantBaseline : String -> Attribute msg
dominantBaseline =
    VirtualDom.Types.Attribute "dominant-baseline"


{-| -}
enableBackground : String -> Attribute msg
enableBackground =
    VirtualDom.Types.Attribute "enable-background"


{-| -}
fillOpacity : String -> Attribute msg
fillOpacity =
    VirtualDom.Types.Attribute "fill-opacity"


{-| -}
fillRule : String -> Attribute msg
fillRule =
    VirtualDom.Types.Attribute "fill-rule"


{-| -}
fill : String -> Attribute msg
fill =
    VirtualDom.Types.Attribute "fill"


{-| -}
filter : String -> Attribute msg
filter =
    VirtualDom.Types.Attribute "filter"


{-| -}
floodColor : String -> Attribute msg
floodColor =
    VirtualDom.Types.Attribute "flood-color"


{-| -}
floodOpacity : String -> Attribute msg
floodOpacity =
    VirtualDom.Types.Attribute "flood-opacity"


{-| -}
fontFamily : String -> Attribute msg
fontFamily =
    VirtualDom.Types.Attribute "font-family"


{-| -}
fontSizeAdjust : String -> Attribute msg
fontSizeAdjust =
    VirtualDom.Types.Attribute "font-size-adjust"


{-| -}
fontSize : String -> Attribute msg
fontSize =
    VirtualDom.Types.Attribute "font-size"


{-| -}
fontStretch : String -> Attribute msg
fontStretch =
    VirtualDom.Types.Attribute "font-stretch"


{-| -}
fontStyle : String -> Attribute msg
fontStyle =
    VirtualDom.Types.Attribute "font-style"


{-| -}
fontVariant : String -> Attribute msg
fontVariant =
    VirtualDom.Types.Attribute "font-variant"


{-| -}
fontWeight : String -> Attribute msg
fontWeight =
    VirtualDom.Types.Attribute "font-weight"


{-| -}
glyphOrientationHorizontal : String -> Attribute msg
glyphOrientationHorizontal =
    VirtualDom.Types.Attribute "glyph-orientation-horizontal"


{-| -}
glyphOrientationVertical : String -> Attribute msg
glyphOrientationVertical =
    VirtualDom.Types.Attribute "glyph-orientation-vertical"


{-| -}
imageRendering : String -> Attribute msg
imageRendering =
    VirtualDom.Types.Attribute "image-rendering"


{-| -}
kerning : String -> Attribute msg
kerning =
    VirtualDom.Types.Attribute "kerning"


{-| -}
letterSpacing : String -> Attribute msg
letterSpacing =
    VirtualDom.Types.Attribute "letter-spacing"


{-| -}
lightingColor : String -> Attribute msg
lightingColor =
    VirtualDom.Types.Attribute "lighting-color"


{-| -}
markerEnd : String -> Attribute msg
markerEnd =
    VirtualDom.Types.Attribute "marker-end"


{-| -}
markerMid : String -> Attribute msg
markerMid =
    VirtualDom.Types.Attribute "marker-mid"


{-| -}
markerStart : String -> Attribute msg
markerStart =
    VirtualDom.Types.Attribute "marker-start"


{-| -}
mask : String -> Attribute msg
mask =
    VirtualDom.Types.Attribute "mask"


{-| -}
opacity : String -> Attribute msg
opacity =
    VirtualDom.Types.Attribute "opacity"


{-| -}
overflow : String -> Attribute msg
overflow =
    VirtualDom.Types.Attribute "overflow"


{-| -}
pointerEvents : String -> Attribute msg
pointerEvents =
    VirtualDom.Types.Attribute "pointer-events"


{-| -}
shapeRendering : String -> Attribute msg
shapeRendering =
    VirtualDom.Types.Attribute "shape-rendering"


{-| -}
stopColor : String -> Attribute msg
stopColor =
    VirtualDom.Types.Attribute "stop-color"


{-| -}
stopOpacity : String -> Attribute msg
stopOpacity =
    VirtualDom.Types.Attribute "stop-opacity"


{-| -}
strokeDasharray : String -> Attribute msg
strokeDasharray =
    VirtualDom.Types.Attribute "stroke-dasharray"


{-| -}
strokeDashoffset : String -> Attribute msg
strokeDashoffset =
    VirtualDom.Types.Attribute "stroke-dashoffset"


{-| -}
strokeLinecap : String -> Attribute msg
strokeLinecap =
    VirtualDom.Types.Attribute "stroke-linecap"


{-| -}
strokeLinejoin : String -> Attribute msg
strokeLinejoin =
    VirtualDom.Types.Attribute "stroke-linejoin"


{-| -}
strokeMiterlimit : String -> Attribute msg
strokeMiterlimit =
    VirtualDom.Types.Attribute "stroke-miterlimit"


{-| -}
strokeOpacity : String -> Attribute msg
strokeOpacity =
    VirtualDom.Types.Attribute "stroke-opacity"


{-| -}
strokeWidth : String -> Attribute msg
strokeWidth =
    VirtualDom.Types.Attribute "stroke-width"


{-| -}
stroke : String -> Attribute msg
stroke =
    VirtualDom.Types.Attribute "stroke"


{-| -}
textAnchor : String -> Attribute msg
textAnchor =
    VirtualDom.Types.Attribute "text-anchor"


{-| -}
textDecoration : String -> Attribute msg
textDecoration =
    VirtualDom.Types.Attribute "text-decoration"


{-| -}
textRendering : String -> Attribute msg
textRendering =
    VirtualDom.Types.Attribute "text-rendering"


{-| -}
unicodeBidi : String -> Attribute msg
unicodeBidi =
    VirtualDom.Types.Attribute "unicode-bidi"


{-| -}
visibility : String -> Attribute msg
visibility =
    VirtualDom.Types.Attribute "visibility"


{-| -}
wordSpacing : String -> Attribute msg
wordSpacing =
    VirtualDom.Types.Attribute "word-spacing"


{-| -}
writingMode : String -> Attribute msg
writingMode =
    VirtualDom.Types.Attribute "writing-mode"
