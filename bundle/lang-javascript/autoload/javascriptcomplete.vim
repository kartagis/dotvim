" (A more up-to-date) Vim completion script
" Language:  JavaScript
" Maintainer:  Jake Eaton (1995eaton@gmail.com)
" Last Change:  2014 Jun 23
" Original Maintainer: Mikolaj Machowski ( mikmach AT wp DOT pl )

" underscore.js (http://underscorejs.org/) support
let s:underscores = ['each(', 'map(', 'reduce(', 'reduceRight(', 'find(', 'filter(', 'where(', 'findWhere(', 'reject(', 'every(', 'some(', 'contains(', 'invoke(', 'pluck(', 'max(', 'min(', 'sortBy(', 'groupBy(', 'indexBy(', 'countBy(', 'shuffle(', 'sample(', 'toArray(', 'size(', 'partition(', 'first(', 'initial(', 'last(', 'rest(', 'compact(', 'flatten(', 'without(', 'union(', 'intersection(', 'difference(', 'uniq(', 'zip(', 'unzip(', 'object(', 'indexOf(', 'lastIndexOf(', 'sortedIndex(', 'findIndex(', 'findLastIndex(', 'range(', 'bind(', 'bindAll(', 'partial(', 'memoize(', 'delay(', 'defer(', 'throttle(', 'debounce(', 'once(', 'after(', 'before(', 'wrap(', 'negate(', 'compose(', 'keys(', 'allKeys(', 'values(', 'mapObject(', 'pairs(', 'invert(', 'create(', 'functions(', 'findKey(', 'extend(', 'extendOwn(', 'pick(', 'omit(', 'defaults(', 'clone(', 'tap(', 'has(', 'matcher(', 'property(', 'propertyOf(', 'isEqual(', 'isMatch(', 'isEmpty(', 'isElement(', 'isArray(', 'isObject(', 'isArguments(', 'isFunction(', 'isString(', 'isNumber(', 'isFinite(', 'isBoolean(', 'isDate(', 'isRegExp(', 'isNaN(', 'isNull(', 'isUndefined(', 'noConflict(', 'identity(', 'constant(', 'noop(', 'times(', 'random(', 'mixin(', 'iteratee(', 'uniqueId(', 'escape(', 'unescape(', 'result(', 'now(', 'template(', 'chain(', 'value(']

" PIXI.js (http://www.pixijs.com/) support
let s:pixis = ['AbstractFilter', 'AjaxRequest', 'AlphaMaskFilter', 'AsciiFilter', 'AssetLoader', 'AtlasLoader', 'autoDetectRecommendedRenderer', 'autoDetectRenderer', 'BaseTexture', 'BitmapFontLoader', 'BitmapText', 'BlurFilter', 'BlurXFilter', 'BlurYFilter', 'CanvasBuffer', 'CanvasGraphics', 'CanvasMaskManager', 'CanvasRenderer', 'CanvasTinter', 'Circle', 'ColorMatrixFilter', 'ColorStepFilter', 'ComplexPrimitiveShader', 'ConvolutionFilter', 'CrossHatchFilter', 'DisplacementFilter', 'DisplayObject', 'DisplayObjectContainer', 'DotScreenFilter', 'Ellipse', 'Event', 'EventTarget', 'FilterBlock', 'FilterTexture', 'Graphics', 'GraphicsData', 'GrayFilter', 'ImageLoader', 'InteractionData', 'InteractionManager', 'InvertFilter', 'JsonLoader', 'Matrix', 'MovieClip', 'NoiseFilter', 'NormalMapFilter', 'PixelateFilter', 'PixiFastShader', 'PixiShader', 'Point', 'Polygon', 'PolyK', 'PrimitiveShader', 'Rectangle', 'RenderTexture', 'RGBSplitFilter', 'Rope', 'SepiaFilter', 'SmartBlurFilter', 'Spine', 'SpineLoader', 'Sprite', 'SpriteBatch', 'SpriteSheetLoader', 'Stage', 'Strip', 'StripShader', 'Text', 'Texture', 'TilingSprite', 'TiltShiftFilter', 'TiltShiftXFilter', 'TiltShiftYFilter', 'TwistFilter', 'WebGLBlendModeManager', 'WebGLFastSpriteBatch', 'WebGLFilterManager', 'WebGLGraphics', 'WebGLGraphicsData', 'WebGLMaskManager', 'WebGLRenderer', 'WebGLShaderManager', 'WebGLSpriteBatch', 'WebGLStencilManager']
let s:pixi_abstractfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_ajaxrequests = [ 'bind(', 'cancelAnimationFrame(', 'canUseNewCanvasBlendModes(', 'getNextPowerOfTwo(', 'hex2rgb(', 'requestAnimationFrame(', 'rgb2hex(' ]
let s:pixi_alphamaskfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_asciifilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'size', 'uniforms' ]
let s:pixi_assetloaders = [ '_getDataType(', 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'onAssetLoaded(', 'once(', 'removeAllListeners(', 'assetURLs', 'crossorigin', 'loadersByType' ]
let s:pixi_atlasloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'onAtlasLoaded(', 'once(', 'onError(', 'onLoaded(', 'removeAllListeners(' ]
let s:pixi_basetextures = [ 'destroy(', 'dirty(', 'emit(', 'fromCanvas(', 'fromImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'once(', 'removeAllListeners(', 'unloadFromGPU(', 'updateSourceImage(', '_dirty', '_glTextures', '_powerOf2', 'hasLoaded', 'height', 'imageUrl', 'premultipliedAlpha', 'resolution', 'scaleMode', 'source', 'width' ]
let s:pixi_bitmapfontloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'onXMLLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'texture', 'url' ]
let s:pixi_bitmaptexts = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setStyle(', 'setText(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateText(', 'updateTransform(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_pool', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'textHeight', 'textWidth', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_blurfilters = [ 'syncUniforms(', 'blur', 'blurX', 'blurY', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_blurxfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_bluryfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_canvasbuffers = [ 'clear(', 'resize(', 'canvas', 'context', 'height', 'width' ]
let s:pixi_canvasmaskmanagers = [ 'popMask(', 'pushMask(' ]
let s:pixi_canvasrenderers = [ 'destroy(', 'mapBlendModes(', 'render(', 'renderDisplayObject(', 'resize(', 'autoResize', 'CanvasMaskManager', 'clearBeforeRender', 'context', 'count', 'height', 'refresh', 'renderSession', 'resolution', 'transparent', 'type', 'view', 'width' ]
let s:pixi_canvastinters = [ 'getTintedTexture(', 'roundColor(', 'tintMethod(', 'tintPerPixel(', 'tintWithMultiply(', 'tintWithOverlay(', 'cacheStepsPerColorChannel', 'canUseMultiply', 'convertTintToImage' ]
let s:pixi_circles = [ 'clone(', 'contains(', 'getBounds(', 'radius', 'x', 'y' ]
let s:pixi_colormatrixfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'matrix', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_colorstepfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'step', 'uniforms' ]
let s:pixi_complexprimitiveshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_convolutionfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'height', 'matrix', 'padding', 'passes', 'shaders', 'uniforms', 'width' ]
let s:pixi_crosshatchfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_displacementfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'offset', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_displayobjectcontainers = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_dotscreenfilters = [ 'syncUniforms(', 'angle', 'dirty', 'fragmentSrc', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_ellipses = [ 'clone(', 'contains(', 'getBounds(', 'height', 'width', 'x', 'y' ]
let s:pixi_events = [ 'stopImmediatePropagation(', 'stopPropagation(', 'data', 'stopped', 'stoppedImmediate', 'target', 'timeStamp', 'type' ]
let s:pixi_eventtargets = [ 'emit(', 'listeners(', 'mixin(', 'off(', 'on(', 'once(', 'removeAllListeners(' ]
let s:pixi_filterblocks = [ 'renderable', 'visible' ]
let s:pixi_filtertextures = [ 'clear(', 'destroy(', 'resize(', 'frameBuffer', 'gl', 'scaleMode', 'texture' ]
let s:pixi_graphicss = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'arc(', 'beginFill(', 'bezierCurveTo(', 'clear(', 'click(', 'destroyCachedSprite(', 'drawCircle(', 'drawEllipse(', 'drawPolygon(', 'drawRect(', 'drawRoundedRect(', 'drawShape(', 'endFill(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'lineStyle(', 'lineTo(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'moveTo(', 'quadraticCurveTo(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateCachedSpriteTexture(', 'updateLocalBounds(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', '_webGL', 'alpha', 'blendMode', 'boundsPadding', 'buttonMode', 'cacheAsBitmap', 'cachedSpriteDirty', 'children', 'currentPath', 'defaultCursor', 'dirty', 'fillAlpha', 'filterArea', 'filters', 'graphicsData', 'height', 'hitArea', 'interactive', 'isMask', 'lineColor', 'lineWidth', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'tint', 'visible', 'webGLDirty', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_grayfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'gray', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_imageloaders = [ 'emit(', 'listeners(', 'load(', 'loadFramedSpriteSheet(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'frames', 'texture' ]
let s:pixi_interactiondatas = [ 'getLocalPosition(', 'global', 'originalEvent', 'target' ]
let s:pixi_interactionmanagers = [ 'collectInteractiveSprite(', 'hitTest(', 'onMouseDown(', 'onMouseMove(', 'onMouseOut(', 'onMouseUp(', 'onTouchEnd(', 'onTouchMove(', 'onTouchStart(', 'rebuildInteractiveGraph(', 'removeEvents(', 'setTarget(', 'setTargetDomElement(', 'update(', 'currentCursorStyle', 'interactionDOMElement', 'interactiveItems', 'last', 'mouse', 'mouseOut', 'mouseoverEnabled', 'onMouseDown', 'onMouseMove', 'onMouseOut', 'onMouseUp', 'onTouchEnd', 'onTouchMove', 'onTouchStart', 'pool', 'resolution', 'stage', 'tempPoint', 'touches' ]
let s:pixi_invertfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'invert', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_jsonloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onError(', 'onJSONLoaded(', 'onLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'loaded', 'url' ]
let s:pixi_matrixs = [ 'append(', 'apply(', 'applyInverse(', 'fromArray(', 'identity(', 'rotate(', 'scale(', 'toArray(', 'translate(', 'a', 'b', 'c', 'd', 'tx', 'ty' ]
let s:pixi_movieclips = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'fromFrames(', 'fromImages(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'gotoAndPlay(', 'gotoAndStop(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'play(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'stop(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'animationSpeed', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'currentFrame', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'loop', 'mask', 'onComplete', 'parent', 'pivot', 'playing', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'textures', 'tint', 'totalFrames', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_noisefilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'noise', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_normalmapfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'offset', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_pixelatefilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'size', 'uniforms' ]
let s:pixi_pixifastshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'textureCount', 'vertexSrc' ]
let s:pixi_pixishaders = [ 'destroy(', 'init(', 'initSampler2D(', 'initUniforms(', 'syncUniforms(', '_UID', 'attributes', 'defaultVertexSrc', 'dirty', 'firstRun', 'fragmentSrc', 'gl', 'program', 'textureCount' ]
let s:pixi_points = [ 'clone(', 'set(', 'x', 'y' ]
let s:pixi_polyks = [ '_convex(', '_PointInTriangle(', 'Triangulate(' ]
let s:pixi_polygons = [ 'clone(', 'contains(' ]
let s:pixi_primitiveshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_rgbsplitfilters = [ 'syncUniforms(', 'blue', 'dirty', 'fragmentSrc', 'green', 'padding', 'passes', 'red', 'shaders', 'uniforms' ]
let s:pixi_rectangles = [ 'clone(', 'contains(', 'height', 'width', 'x', 'y' ]
let s:pixi_rendertextures = [ '_updateUvs(', 'clear(', 'destroy(', 'emit(', 'getBase64(', 'getCanvas(', 'getImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'onBaseTextureLoaded(', 'once(', 'removeAllListeners(', 'renderCanvas(', 'renderWebGL(', 'resize(', 'setFrame(', '_uvs', 'baseTexture', 'crop', 'frame', 'height', 'noFrame', 'renderer', 'requiresUpdate', 'resolution', 'trim', 'valid', 'width' ]
let s:pixi_ropes = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'renderStripFlat(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'padding', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'texture', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_rounded_rectangles = [ 'clone(', 'contains(', 'height', 'radius', 'width', 'x', 'y' ]
let s:pixi_sepiafilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'sepia', 'shaders', 'uniforms' ]
let s:pixi_smartblurfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_spines = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_spineloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'crossorigin', 'loaded', 'url' ]
let s:pixi_sprites = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'fromFrame(', 'fromImage(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tint', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_spritebatchs = [ '_renderCanvas(', '_renderWebGL(' ]
let s:pixi_spritesheetloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'frames', 'texture', 'url' ]
let s:pixi_stages = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'getMousePosition(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setBackgroundColor(', 'setChildIndex(', 'setInteractionDelegate(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactionManager', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_strips = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'renderStripFlat(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'padding', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'texture', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_stripshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_texts = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'destroy(', 'determineFontProperties(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setStyle(', 'setText(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateText(', 'updateTexture(', 'wordWrap(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'canvas', 'children', 'context', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'resolution', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tint', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_textures = [ '_updateUvs(', 'addTextureToCache(', 'destroy(', 'emit(', 'fromCanvas(', 'fromFrame(', 'fromImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'onBaseTextureLoaded(', 'once(', 'removeAllListeners(', 'removeTextureFromCache(', 'setFrame(', '_uvs', 'baseTexture', 'crop', 'frame', 'height', 'noFrame', 'requiresUpdate', 'trim', 'valid', 'width' ]
let s:pixi_tilingsprites = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'generateTilingTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tilePosition', 'tileScale', 'tileScaleOffset', 'tint', 'visible', 'width', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_tiltshiftfilters = [ 'blur', 'end', 'gradientBlur', 'start' ]
let s:pixi_tiltshiftxfilters = [ 'syncUniforms(', 'updateDelta(', 'blur', 'dirty', 'end', 'fragmentSrc', 'gradientBlur', 'padding', 'passes', 'shaders', 'start', 'uniforms' ]
let s:pixi_tiltshiftyfilters = [ 'syncUniforms(', 'updateDelta(', 'blur', 'dirty', 'end', 'fragmentSrc', 'gradientBlur', 'padding', 'passes', 'shaders', 'start', 'uniforms' ]
let s:pixi_twistfilters = [ 'syncUniforms(', 'angle', 'dirty', 'fragmentSrc', 'offset', 'padding', 'passes', 'radius', 'shaders', 'uniforms' ]
let s:pixi_webglblendmodemanagers = [ 'destroy(', 'setBlendMode(', 'setContext(', 'currentBlendMode' ]
let s:pixi_webglfastspritebatchs = [ 'begin(', 'end(', 'flush(', 'render(', 'renderSprite(', 'setContext(', 'start(', 'stop(', 'currentBaseTexture', 'currentBatchSize', 'currentBlendMode', 'drawing', 'indexBuffer', 'indices', 'lastIndexCount', 'matrix', 'maxSize', 'renderSession', 'shader', 'size', 'vertexBuffer', 'vertices', 'vertSize' ]
let s:pixi_webglfiltermanagers = [ 'applyFilterPass(', 'begin(', 'destroy(', 'initShaderBuffers(', 'popFilter(', 'pushFilter(', 'setContext(', 'filterStack', 'offsetX', 'offsetY' ]
let s:pixi_webglgraphicss = [ 'buildCircle(', 'buildComplexPoly(', 'buildLine(', 'buildPoly(', 'buildRectangle(', 'buildRoundedRectangle(', 'quadraticBezierCurve(', 'renderGraphics(', 'switchMode(', 'updateGraphics(' ]
let s:pixi_webglgraphicsdatas = [ 'reset(', 'upload(' ]
let s:pixi_webglmaskmanagers = [ 'destroy(', 'popMask(', 'pushMask(', 'setContext(' ]
let s:pixi_webglrenderers = [ 'destroy(', 'handleContextLost(', 'handleContextRestored(', 'initContext(', 'mapBlendModes(', 'render(', 'renderDisplayObject(', 'resize(', 'updateTexture(', '_contextOptions', 'autoResize', 'blendModeManager', 'clearBeforeRender', 'contextLostBound', 'contextRestoredBound', 'filterManager', 'height', 'maskManager', 'offset', 'preserveDrawingBuffer', 'projection', 'renderSession', 'resolution', 'shaderManager', 'spriteBatch', 'stencilManager', 'transparent', 'type', 'view', 'width' ]
let s:pixi_webglshadermanagers = [ 'destroy(', 'setAttribs(', 'setContext(', 'setShader(', 'attribState', 'maxAttibs', 'stack', 'tempAttribState' ]
let s:pixi_webglspritebatchs = [ '_CompileShader(', 'begin(', 'CompileFragmentShader(', 'compileProgram(', 'CompileVertexShader(', 'destroy(', 'end(', 'flush(', 'initDefaultShaders(', 'render(', 'renderBatch(', 'renderTilingSprite(', 'setContext(', 'start(', 'stop(', 'blendModes', 'currentBaseTexture', 'currentBatchSize', 'defaultShader', 'dirty', 'drawing', 'indices', 'lastIndexCount', 'shaders', 'size', 'sprites', 'textures', 'vertices', 'vertSize' ]
let s:pixi_webglstencilmanagers = [ 'bindGraphics(', 'destroy(', 'popStencil(', 'pushMask(', 'setContext(' ]

let s:winds = ['AnalyserNode(', 'ApplicationCache(', 'ApplicationCacheErrorEvent(', 'Array(', 'ArrayBuffer(', 'Attr(', 'Audio(', 'AudioBuffer(', 'AudioBufferSourceNode(', 'AudioContext(', 'AudioDestinationNode(', 'AudioListener(', 'AudioNode(', 'AudioParam(', 'AudioProcessingEvent(', 'AutocompleteErrorEvent(', 'BarProp(', 'BeforeUnloadEvent(', 'BiquadFilterNode(', 'Blob(', 'Boolean(', 'CDATASection(', 'CSS', 'CSSCharsetRule(', 'CSSFontFaceRule(', 'CSSImportRule(', 'CSSKeyframeRule(', 'CSSKeyframesRule(', 'CSSMediaRule(', 'CSSPageRule(', 'CSSPrimitiveValue(', 'CSSRule(', 'CSSRuleList(', 'CSSStyleDeclaration(', 'CSSStyleRule(', 'CSSStyleSheet(', 'CSSUnknownRule(', 'CSSValue(', 'CSSValueList(', 'CSSViewportRule(', 'CanvasGradient(', 'CanvasPattern(', 'CanvasRenderingContext2D(', 'ChannelMergerNode(', 'ChannelSplitterNode(', 'CharacterData(', 'ClientRect(', 'ClientRectList(', 'CloseEvent(', 'Comment(', 'CompositionEvent(', 'ConvolverNode(', 'Counter(', 'CustomEvent(', 'DOMError(', 'DOMException(', 'DOMImplementation(', 'DOMParser(', 'DOMSettableTokenList(', 'DOMStringList(', 'DOMStringMap(', 'DOMTokenList(', 'DataTransfer(', 'DataTransferItemList(', 'DataView(', 'Date(', 'DelayNode(', 'DeviceMotionEvent(', 'DeviceOrientationEvent(', 'Document(', 'DocumentFragment(', 'DocumentType(', 'DynamicsCompressorNode(', 'Element(', 'Error(', 'ErrorEvent(', 'EvalError(', 'Event(', 'EventSource(', 'EventTarget(', 'File(', 'FileError(', 'FileList(', 'FileReader(', 'Float32Array(', 'Float64Array(', 'FocusEvent(', 'FontFace(', 'FormData(', 'Function(', 'GainNode(', 'Gamepad(', 'GamepadEvent(', 'HTMLAllCollection(', 'HTMLAnchorElement(', 'HTMLAppletElement(', 'HTMLAreaElement(', 'HTMLAudioElement(', 'HTMLBRElement(', 'HTMLBaseElement(', 'HTMLBodyElement(', 'HTMLButtonElement(', 'HTMLCanvasElement(', 'HTMLCollection(', 'HTMLContentElement(', 'HTMLDListElement(', 'HTMLDataListElement(', 'HTMLDialogElement(', 'HTMLDirectoryElement(', 'HTMLDivElement(', 'HTMLDocument(', 'HTMLElement(', 'HTMLEmbedElement(', 'HTMLFieldSetElement(', 'HTMLFontElement(', 'HTMLFormControlsCollection(', 'HTMLFormElement(', 'HTMLFrameElement(', 'HTMLFrameSetElement(', 'HTMLHRElement(', 'HTMLHeadElement(', 'HTMLHeadingElement(', 'HTMLHtmlElement(', 'HTMLIFrameElement(', 'HTMLImageElement(', 'HTMLInputElement(', 'HTMLKeygenElement(', 'HTMLLIElement(', 'HTMLLabelElement(', 'HTMLLegendElement(', 'HTMLLinkElement(', 'HTMLMapElement(', 'HTMLMarqueeElement(', 'HTMLMediaElement(', 'HTMLMenuElement(', 'HTMLMetaElement(', 'HTMLMeterElement(', 'HTMLModElement(', 'HTMLOListElement(', 'HTMLObjectElement(', 'HTMLOptGroupElement(', 'HTMLOptionElement(', 'HTMLOptionsCollection(', 'HTMLOutputElement(', 'HTMLParagraphElement(', 'HTMLParamElement(', 'HTMLPreElement(', 'HTMLProgressElement(', 'HTMLQuoteElement(', 'HTMLScriptElement(', 'HTMLSelectElement(', 'HTMLShadowElement(', 'HTMLSourceElement(', 'HTMLSpanElement(', 'HTMLStyleElement(', 'HTMLTableCaptionElement(', 'HTMLTableCellElement(', 'HTMLTableColElement(', 'HTMLTableElement(', 'HTMLTableRowElement(', 'HTMLTableSectionElement(', 'HTMLTemplateElement(', 'HTMLTextAreaElement(', 'HTMLTitleElement(', 'HTMLTrackElement(', 'HTMLUListElement(', 'HTMLUnknownElement(', 'HTMLVideoElement(', 'HashChangeEvent(', 'History(', 'IDBCursor(', 'IDBCursorWithValue(', 'IDBDatabase(', 'IDBFactory(', 'IDBIndex(', 'IDBKeyRange(', 'IDBObjectStore(', 'IDBOpenDBRequest(', 'IDBRequest(', 'IDBTransaction(', 'IDBVersionChangeEvent(', 'Image(', 'ImageBitmap(', 'ImageData(', 'Infinity', 'InputMethodContext(', 'Int16Array(', 'Int32Array(', 'Int8Array(', 'Intl', 'JSON', 'KeyboardEvent(', 'Location(', 'Map(', 'Math', 'MediaElementAudioSourceNode(', 'MediaError(', 'MediaKeyError(', 'MediaKeyEvent(', 'MediaList(', 'MediaSource(', 'MediaStreamAudioDestinationNode(', 'MediaStreamAudioSourceNode(', 'MediaStreamEvent(', 'MediaStreamTrack(', 'MessageChannel(', 'MessageEvent(', 'MessagePort(', 'MimeType(', 'MimeTypeArray(', 'MouseEvent(', 'MutationEvent(', 'MutationObserver(', 'MutationRecord(', 'NaN', 'NamedNodeMap(', 'Navigator(', 'Node(', 'NodeFilter(', 'NodeIterator(', 'NodeList(', 'Notation(', 'Notification(', 'Number(', 'Object(', 'OfflineAudioCompletionEvent(', 'OfflineAudioContext(', 'Option(', 'OscillatorNode(', 'OverflowEvent(', 'PERSISTENT', 'PageTransitionEvent(', 'Path2D(', 'Performance(', 'PerformanceEntry(', 'PerformanceMark(', 'PerformanceMeasure(', 'PerformanceNavigation(', 'PerformanceResourceTiming(', 'PerformanceTiming(', 'PeriodicWave(', 'Plugin(', 'PluginArray(', 'PopStateEvent(', 'ProcessingInstruction(', 'ProgressEvent(', 'Promise(', 'Proxy', 'RGBColor(', 'RTCIceCandidate(', 'RTCSessionDescription(', 'Range(', 'RangeError(', 'Rect(', 'ReferenceError(', 'RegExp(', 'SVGAElement(', 'SVGAltGlyphDefElement(', 'SVGAltGlyphElement(', 'SVGAltGlyphItemElement(', 'SVGAngle(', 'SVGAnimateElement(', 'SVGAnimateMotionElement(', 'SVGAnimateTransformElement(', 'SVGAnimatedAngle(', 'SVGAnimatedBoolean(', 'SVGAnimatedEnumeration(', 'SVGAnimatedInteger(', 'SVGAnimatedLength(', 'SVGAnimatedLengthList(', 'SVGAnimatedNumber(', 'SVGAnimatedNumberList(', 'SVGAnimatedPreserveAspectRatio(', 'SVGAnimatedRect(', 'SVGAnimatedString(', 'SVGAnimatedTransformList(', 'SVGAnimationElement(', 'SVGCircleElement(', 'SVGClipPathElement(', 'SVGComponentTransferFunctionElement(', 'SVGCursorElement(', 'SVGDefsElement(', 'SVGDescElement(', 'SVGDiscardElement(', 'SVGElement(', 'SVGEllipseElement(', 'SVGFEBlendElement(', 'SVGFEColorMatrixElement(', 'SVGFEComponentTransferElement(', 'SVGFECompositeElement(', 'SVGFEConvolveMatrixElement(', 'SVGFEDiffuseLightingElement(', 'SVGFEDisplacementMapElement(', 'SVGFEDistantLightElement(', 'SVGFEDropShadowElement(', 'SVGFEFloodElement(', 'SVGFEFuncAElement(', 'SVGFEFuncBElement(', 'SVGFEFuncGElement(', 'SVGFEFuncRElement(', 'SVGFEGaussianBlurElement(', 'SVGFEImageElement(', 'SVGFEMergeElement(', 'SVGFEMergeNodeElement(', 'SVGFEMorphologyElement(', 'SVGFEOffsetElement(', 'SVGFEPointLightElement(', 'SVGFESpecularLightingElement(', 'SVGFESpotLightElement(', 'SVGFETileElement(', 'SVGFETurbulenceElement(', 'SVGFilterElement(', 'SVGFontElement(', 'SVGFontFaceElement(', 'SVGFontFaceFormatElement(', 'SVGFontFaceNameElement(', 'SVGFontFaceSrcElement(', 'SVGFontFaceUriElement(', 'SVGForeignObjectElement(', 'SVGGElement(', 'SVGGeometryElement(', 'SVGGlyphElement(', 'SVGGlyphRefElement(', 'SVGGradientElement(', 'SVGGraphicsElement(', 'SVGHKernElement(', 'SVGImageElement(', 'SVGLength(', 'SVGLengthList(', 'SVGLineElement(', 'SVGLinearGradientElement(', 'SVGMPathElement(', 'SVGMarkerElement(', 'SVGMaskElement(', 'SVGMatrix(', 'SVGMetadataElement(', 'SVGMissingGlyphElement(', 'SVGNumber(', 'SVGNumberList(', 'SVGPathElement(', 'SVGPathSeg(', 'SVGPathSegArcAbs(', 'SVGPathSegArcRel(', 'SVGPathSegClosePath(', 'SVGPathSegCurvetoCubicAbs(', 'SVGPathSegCurvetoCubicRel(', 'SVGPathSegCurvetoCubicSmoothAbs(', 'SVGPathSegCurvetoCubicSmoothRel(', 'SVGPathSegCurvetoQuadraticAbs(', 'SVGPathSegCurvetoQuadraticRel(', 'SVGPathSegCurvetoQuadraticSmoothAbs(', 'SVGPathSegCurvetoQuadraticSmoothRel(', 'SVGPathSegLinetoAbs(', 'SVGPathSegLinetoHorizontalAbs(', 'SVGPathSegLinetoHorizontalRel(', 'SVGPathSegLinetoRel(', 'SVGPathSegLinetoVerticalAbs(', 'SVGPathSegLinetoVerticalRel(', 'SVGPathSegList(', 'SVGPathSegMovetoAbs(', 'SVGPathSegMovetoRel(', 'SVGPatternElement(', 'SVGPoint(', 'SVGPointList(', 'SVGPolygonElement(', 'SVGPolylineElement(', 'SVGPreserveAspectRatio(', 'SVGRadialGradientElement(', 'SVGRect(', 'SVGRectElement(', 'SVGRenderingIntent(', 'SVGSVGElement(', 'SVGScriptElement(', 'SVGSetElement(', 'SVGStopElement(', 'SVGStringList(', 'SVGStyleElement(', 'SVGSwitchElement(', 'SVGSymbolElement(', 'SVGTSpanElement(', 'SVGTextContentElement(', 'SVGTextElement(', 'SVGTextPathElement(', 'SVGTextPositioningElement(', 'SVGTitleElement(', 'SVGTransform(', 'SVGTransformList(', 'SVGUnitTypes(', 'SVGUseElement(', 'SVGVKernElement(', 'SVGViewElement(', 'SVGViewSpec(', 'SVGZoomEvent(', 'Screen(', 'ScriptProcessorNode(', 'Selection(', 'Set(', 'ShadowRoot(', 'SharedWorker(', 'SpeechSynthesisEvent(', 'SpeechSynthesisUtterance(', 'Storage(', 'StorageEvent(', 'String(', 'StyleSheet(', 'StyleSheetList(', 'Symbol(', 'SyntaxError(', 'TEMPORARY', 'Text(', 'TextEvent(', 'TextMetrics(', 'TextTrack(', 'TextTrackCue(', 'TextTrackCueList(', 'TextTrackList(', 'TimeRanges(', 'Touch(', 'TouchEvent(', 'TouchList(', 'TrackEvent(', 'TransitionEvent(', 'TreeWalker(', 'TypeError(', 'UIEvent(', 'URIError(', 'URL(', 'Uint16Array(', 'Uint32Array(', 'Uint8Array(', 'Uint8ClampedArray(', 'VTTCue(', 'ValidityState(', 'WaveShaperNode(', 'WeakMap(', 'WeakSet(', 'WebGLActiveInfo(', 'WebGLBuffer(', 'WebGLContextEvent(', 'WebGLFramebuffer(', 'WebGLProgram(', 'WebGLRenderbuffer(', 'WebGLRenderingContext(', 'WebGLShader(', 'WebGLShaderPrecisionFormat(', 'WebGLTexture(', 'WebGLUniformLocation(', 'WebKitAnimationEvent(', 'WebKitCSSFilterRule(', 'WebKitCSSFilterValue(', 'WebKitCSSMatrix(', 'WebKitCSSTransformValue(', 'WebKitGamepad(', 'WebKitMutationObserver(', 'WebKitPoint(', 'WebKitTransitionEvent(', 'WebSocket(', 'WheelEvent(', 'Window(', 'Worker(', 'XMLDocument(', 'XMLHttpRequest(', 'XMLHttpRequestProgressEvent(', 'XMLHttpRequestUpload(', 'XMLSerializer(', 'XPathEvaluator(', 'XPathExpression(', 'XPathResult(', 'XSLTProcessor(', 'addEventListener(', 'alert(', 'applicationCache', 'atob(', 'blur(', 'btoa(', 'cancelAnimationFrame(', 'captureEvents(', 'chrome', 'clearInterval(', 'clearTimeout(', 'clientInformation', 'close(', 'closed', 'confirm(', 'console', 'crypto', 'decodeURI(', 'decodeURIComponent(', 'defaultStatus', 'defaultstatus', 'devicePixelRatio', 'dispatchEvent(', 'document', 'encodeURI(', 'encodeURIComponent(', 'escape(', 'eval(', 'event', 'external', 'find(', 'focus(', 'frameElement', 'frames', 'getComputedStyle(', 'getMatchedCSSRules(', 'getSelection(', 'history', 'indexedDB', 'innerHeight', 'innerWidth', 'isFinite(', 'isNaN(', 'length', 'localStorage', 'location', 'locationbar', 'matchMedia(', 'menubar', 'moveBy(', 'moveTo(', 'name', 'navigator', 'offscreenBuffering', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforeunload', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncuechange', 'ondblclick', 'ondevicemotion', 'ondeviceorientation', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'onhashchange', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onlanguagechange', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmessage', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onoffline', 'ononline', 'onpagehide', 'onpageshow', 'onpause', 'onplay', 'onplaying', 'onpopstate', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onshow', 'onstalled', 'onstorage', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'ontransitionend', 'onunload', 'onvolumechange', 'onwaiting', 'onwebkitanimationend', 'onwebkitanimationiteration', 'onwebkitanimationstart', 'onwebkittransitionend', 'onwheel', 'open(', 'openDatabase(', 'opener', 'outerHeight', 'outerWidth', 'pageXOffset', 'pageYOffset', 'parent', 'parseFloat(', 'parseInt(', 'performance', 'personalbar', 'postMessage(', 'print(', 'prompt(', 'releaseEvents(', 'removeEventListener(', 'requestAnimationFrame(', 'resizeBy(', 'resizeTo(', 'screen', 'screenLeft', 'screenTop', 'screenX', 'screenY', 'scroll(', 'scrollBy(', 'scrollTo(', 'scrollX', 'scrollY', 'scrollbars', 'self', 'sessionStorage', 'setInterval(', 'setTimeout(', 'showModalDialog(', 'speechSynthesis', 'status', 'statusbar', 'stop(', 'styleMedia', 'toolbar', 'top', 'undefined', 'unescape(', 'webkitAudioContext(', 'webkitCancelAnimationFrame(', 'webkitCancelRequestAnimationFrame(', 'webkitConvertPointFromNodeToPage(', 'webkitConvertPointFromPageToNode(', 'webkitIDBCursor(', 'webkitIDBDatabase(', 'webkitIDBFactory(', 'webkitIDBIndex(', 'webkitIDBKeyRange(', 'webkitIDBObjectStore(', 'webkitIDBRequest(', 'webkitIDBTransaction(', 'webkitIndexedDB', 'webkitMediaStream(', 'webkitOfflineAudioContext(', 'webkitRTCPeerConnection(', 'webkitRequestAnimationFrame(', 'webkitRequestFileSystem(', 'webkitResolveLocalFileSystemURL(', 'webkitSpeechGrammar(', 'webkitSpeechGrammarList(', 'webkitSpeechRecognition(', 'webkitSpeechRecognitionError(', 'webkitSpeechRecognitionEvent(', 'webkitStorageInfo', 'webkitURL(', 'window']

let s:arrays = ['arguments', 'caller', 'concat(', 'constructor(', 'entries(', 'every(', 'fill(', 'filter(', 'find(', 'findIndex(', 'forEach(', 'indexOf(', 'isArray(', 'join(', 'keys(', 'lastIndexOf(', 'length', 'map(', 'name', 'observe(', 'pop(', 'prototype', 'push(', 'reduce(', 'reduceRight(', 'reverse(', 'shift(', 'slice(', 'some(', 'sort(', 'splice(', 'toLocaleString(', 'toString(', 'unobserve(', 'unshift(', 'values(']

let s:dates = ['UTC(', 'arguments', 'caller', 'constructor(', 'getDate(', 'getDay(', 'getFullYear(', 'getHours(', 'getMilliseconds(', 'getMinutes(', 'getMonth(', 'getSeconds(', 'getTime(', 'getTimezoneOffset(', 'getUTCDate(', 'getUTCDay(', 'getUTCFullYear(', 'getUTCHours(', 'getUTCMilliseconds(', 'getUTCMinutes(', 'getUTCMonth(', 'getUTCSeconds(', 'getYear(', 'length', 'name', 'now(', 'parse(', 'prototype', 'setDate(', 'setFullYear(', 'setHours(', 'setMilliseconds(', 'setMinutes(', 'setMonth(', 'setSeconds(', 'setTime(', 'setUTCDate(', 'setUTCFullYear(', 'setUTCHours(', 'setUTCMilliseconds(', 'setUTCMinutes(', 'setUTCMonth(', 'setUTCSeconds(', 'setYear(', 'toDateString(', 'toGMTString(', 'toISOString(', 'toJSON(', 'toLocaleDateString(', 'toLocaleString(', 'toLocaleTimeString(', 'toString(', 'toTimeString(', 'toUTCString(', 'valueOf(']

let s:funcs = ['apply(', 'arguments', 'bind(', 'call(', 'caller', 'constructor(', 'length', 'name', 'prototype', 'prototype(', 'toString(']

let s:maths = ['E', 'LN10', 'LN2', 'LOG10E', 'LOG2E', 'PI', 'SQRT1_2', 'SQRT2', 'abs(', 'acos(', 'acosh(', 'asin(', 'asinh(', 'atan(', 'atan2(', 'atanh(', 'cbrt(', 'ceil(', 'clz32(', 'cos(', 'cosh(', 'exp(', 'expm1(', 'floor(', 'fround(', 'hypot(', 'imul(', 'log(', 'log10(', 'log1p(', 'log2(', 'max(', 'min(', 'pow(', 'random(', 'round(', 'sign(', 'sin(', 'sinh(', 'sqrt(', 'tan(', 'tanh(', 'trunc(']

let s:numbs = ['EPSILON', 'MAX_SAFE_INTEGER', 'MAX_VALUE', 'MIN_SAFE_INTEGER', 'MIN_VALUE', 'NEGATIVE_INFINITY', 'NaN', 'POSITIVE_INFINITY', 'arguments', 'caller', 'constructor(', 'isFinite(', 'isInteger(', 'isNaN(', 'isSafeInteger(', 'length', 'name', 'parseFloat(', 'parseInt(', 'prototype', 'toExponential(', 'toFixed(', 'toLocaleString(', 'toPrecision(', 'toString(', 'valueOf(']

let s:evnts = ['AT_TARGET', 'BLUR', 'BUBBLING_PHASE', 'CAPTURING_PHASE', 'CHANGE', 'CLICK', 'DBLCLICK', 'DOM_KEY_LOCATION_LEFT', 'DOM_KEY_LOCATION_NUMPAD', 'DOM_KEY_LOCATION_RIGHT', 'DOM_KEY_LOCATION_STANDARD', 'DRAGDROP', 'FOCUS', 'KEYDOWN', 'KEYPRESS', 'KEYUP', 'MOUSEDOWN', 'MOUSEDRAG', 'MOUSEMOVE', 'MOUSEOUT', 'MOUSEOVER', 'MOUSEUP', 'NONE', 'SELECT', 'altGraphKey', 'altKey', 'bubbles', 'button', 'cancelBubble', 'cancelable', 'charCode', 'clientX', 'clientY', 'clipboardData', 'ctrlKey', 'currentTarget', 'dataTransfer', 'defaultPrevented', 'detail', 'eventPhase', 'fromElement', 'getModifierState(', 'initEvent(', 'initKeyboardEvent(', 'initMouseEvent(', 'initUIEvent(', 'keyCode', 'keyIdentifier', 'keyLocation', 'layerX', 'layerY', 'location', 'metaKey', 'movementX', 'movementY', 'offsetX', 'offsetY', 'pageX', 'pageY', 'path', 'preventDefault(', 'relatedTarget', 'repeat', 'returnValue', 'screenX', 'screenY', 'shiftKey', 'srcElement', 'stopImmediatePropagation(', 'stopPropagation(', 'target', 'timeStamp', 'toElement', 'type', 'view', 'webkitMovementX', 'webkitMovementY', 'which', 'x', 'y']

let s:locas = ['ancestorOrigins', 'assign(', 'hash', 'host', 'hostname', 'href', 'origin', 'pathname', 'port', 'protocol', 'reload(', 'replace(', 'search', 'toString(', 'valueOf(']

let s:objes = ['arguments', 'caller', 'constructor(', 'create(', 'defineProperties(', 'defineProperty(', 'deliverChangeRecords(', 'freeze(', 'getNotifier(', 'getOwnPropertyDescriptor(', 'getOwnPropertyNames(', 'getOwnPropertySymbols(', 'getPrototypeOf(', 'hasOwnProperty(', 'is(', 'isExtensible(', 'isFrozen(', 'isPrototypeOf(', 'isSealed(', 'keys(', 'length', 'name', 'observe(', 'preventExtensions(', 'propertyIsEnumerable(', 'prototype', 'seal(', 'setPrototypeOf(', 'toLocaleString(', 'toString(', 'unobserve(', 'valueOf(']

let s:reges = ['arguments', 'caller', 'compile(', 'constructor(', 'exec(', 'global', 'ignoreCase', 'input', 'lastIndex', 'lastMatch', 'lastParen', 'leftContext', 'length', 'multiline', 'name', 'prototype', 'rightContext', 'source', 'test(', 'toString(']

let s:stris = ['anchor(', 'arguments', 'big(', 'blink(', 'bold(', 'caller', 'charAt(', 'charCodeAt(', 'concat(', 'constructor(', 'contains(', 'endsWith(', 'fixed(', 'fontcolor(', 'fontsize(', 'fromCharCode(', 'indexOf(', 'italics(', 'lastIndexOf(', 'length', 'link(', 'localeCompare(', 'match(', 'name', 'normalize(', 'prototype', 'repeat(', 'replace(', 'search(', 'slice(', 'small(', 'split(', 'startsWith(', 'strike(', 'sub(', 'substr(', 'substring(', 'sup(', 'toLocaleLowerCase(', 'toLocaleUpperCase(', 'toLowerCase(', 'toString(', 'toUpperCase(', 'trim(', 'trimLeft(', 'trimRight(', 'valueOf(']

let s:webgl = ['ACTIVE_ATTRIBUTES', 'ACTIVE_TEXTURE', 'ACTIVE_UNIFORMS', 'ALIASED_LINE_WIDTH_RANGE', 'ALIASED_POINT_SIZE_RANGE', 'ALPHA', 'ALPHA_BITS', 'ALWAYS', 'ARRAY_BUFFER', 'ARRAY_BUFFER_BINDING', 'ATTACHED_SHADERS', 'BACK', 'BLEND', 'BLEND_COLOR', 'BLEND_DST_ALPHA', 'BLEND_DST_RGB', 'BLEND_EQUATION', 'BLEND_EQUATION_ALPHA', 'BLEND_EQUATION_RGB', 'BLEND_SRC_ALPHA', 'BLEND_SRC_RGB', 'BLUE_BITS', 'BOOL', 'BOOL_VEC2', 'BOOL_VEC3', 'BOOL_VEC4', 'BROWSER_DEFAULT_WEBGL', 'BUFFER_SIZE', 'BUFFER_USAGE', 'BYTE', 'CCW', 'CLAMP_TO_EDGE', 'COLOR_ATTACHMENT0', 'COLOR_BUFFER_BIT', 'COLOR_CLEAR_VALUE', 'COLOR_WRITEMASK', 'COMPILE_STATUS', 'COMPRESSED_TEXTURE_FORMATS', 'CONSTANT_ALPHA', 'CONSTANT_COLOR', 'CONTEXT_LOST_WEBGL', 'CULL_FACE', 'CULL_FACE_MODE', 'CURRENT_PROGRAM', 'CURRENT_VERTEX_ATTRIB', 'CW', 'DECR', 'DECR_WRAP', 'DELETE_STATUS', 'DEPTH_ATTACHMENT', 'DEPTH_BITS', 'DEPTH_BUFFER_BIT', 'DEPTH_CLEAR_VALUE', 'DEPTH_COMPONENT', 'DEPTH_COMPONENT16', 'DEPTH_FUNC', 'DEPTH_RANGE', 'DEPTH_STENCIL', 'DEPTH_STENCIL_ATTACHMENT', 'DEPTH_TEST', 'DEPTH_WRITEMASK', 'DITHER', 'DONT_CARE', 'DST_ALPHA', 'DST_COLOR', 'DYNAMIC_DRAW', 'ELEMENT_ARRAY_BUFFER', 'ELEMENT_ARRAY_BUFFER_BINDING', 'EQUAL', 'FASTEST', 'FLOAT', 'FLOAT_MAT2', 'FLOAT_MAT3', 'FLOAT_MAT4', 'FLOAT_VEC2', 'FLOAT_VEC3', 'FLOAT_VEC4', 'FRAGMENT_SHADER', 'FRAMEBUFFER', 'FRAMEBUFFER_ATTACHMENT_OBJECT_NAME', 'FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE', 'FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE', 'FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL', 'FRAMEBUFFER_BINDING', 'FRAMEBUFFER_COMPLETE', 'FRAMEBUFFER_INCOMPLETE_ATTACHMENT', 'FRAMEBUFFER_INCOMPLETE_DIMENSIONS', 'FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT', 'FRAMEBUFFER_UNSUPPORTED', 'FRONT', 'FRONT_AND_BACK', 'FRONT_FACE', 'FUNC_ADD', 'FUNC_REVERSE_SUBTRACT', 'FUNC_SUBTRACT', 'GENERATE_MIPMAP_HINT', 'GEQUAL', 'GREATER', 'GREEN_BITS', 'HIGH_FLOAT', 'HIGH_INT', 'IMPLEMENTATION_COLOR_READ_FORMAT', 'IMPLEMENTATION_COLOR_READ_TYPE', 'INCR', 'INCR_WRAP', 'INT', 'INT_VEC2', 'INT_VEC3', 'INT_VEC4', 'INVALID_ENUM', 'INVALID_FRAMEBUFFER_OPERATION', 'INVALID_OPERATION', 'INVALID_VALUE', 'INVERT', 'KEEP', 'LEQUAL', 'LESS', 'LINEAR', 'LINEAR_MIPMAP_LINEAR', 'LINEAR_MIPMAP_NEAREST', 'LINES', 'LINE_LOOP', 'LINE_STRIP', 'LINE_WIDTH', 'LINK_STATUS', 'LOW_FLOAT', 'LOW_INT', 'LUMINANCE', 'LUMINANCE_ALPHA', 'MAX_COMBINED_TEXTURE_IMAGE_UNITS', 'MAX_CUBE_MAP_TEXTURE_SIZE', 'MAX_FRAGMENT_UNIFORM_VECTORS', 'MAX_RENDERBUFFER_SIZE', 'MAX_TEXTURE_IMAGE_UNITS', 'MAX_TEXTURE_SIZE', 'MAX_VARYING_VECTORS', 'MAX_VERTEX_ATTRIBS', 'MAX_VERTEX_TEXTURE_IMAGE_UNITS', 'MAX_VERTEX_UNIFORM_VECTORS', 'MAX_VIEWPORT_DIMS', 'MEDIUM_FLOAT', 'MEDIUM_INT', 'MIRRORED_REPEAT', 'NEAREST', 'NEAREST_MIPMAP_LINEAR', 'NEAREST_MIPMAP_NEAREST', 'NEVER', 'NICEST', 'NONE', 'NOTEQUAL', 'NO_ERROR', 'ONE', 'ONE_MINUS_CONSTANT_ALPHA', 'ONE_MINUS_CONSTANT_COLOR', 'ONE_MINUS_DST_ALPHA', 'ONE_MINUS_DST_COLOR', 'ONE_MINUS_SRC_ALPHA', 'ONE_MINUS_SRC_COLOR', 'OUT_OF_MEMORY', 'PACK_ALIGNMENT', 'POINTS', 'POLYGON_OFFSET_FACTOR', 'POLYGON_OFFSET_FILL', 'POLYGON_OFFSET_UNITS', 'RED_BITS', 'RENDERBUFFER', 'RENDERBUFFER_ALPHA_SIZE', 'RENDERBUFFER_BINDING', 'RENDERBUFFER_BLUE_SIZE', 'RENDERBUFFER_DEPTH_SIZE', 'RENDERBUFFER_GREEN_SIZE', 'RENDERBUFFER_HEIGHT', 'RENDERBUFFER_INTERNAL_FORMAT', 'RENDERBUFFER_RED_SIZE', 'RENDERBUFFER_STENCIL_SIZE', 'RENDERBUFFER_WIDTH', 'RENDERER', 'REPEAT', 'REPLACE', 'RGB', 'RGB565', 'RGB5_A1', 'RGBA', 'RGBA4', 'SAMPLER_2D', 'SAMPLER_CUBE', 'SAMPLES', 'SAMPLE_ALPHA_TO_COVERAGE', 'SAMPLE_BUFFERS', 'SAMPLE_COVERAGE', 'SAMPLE_COVERAGE_INVERT', 'SAMPLE_COVERAGE_VALUE', 'SCISSOR_BOX', 'SCISSOR_TEST', 'SHADER_TYPE', 'SHADING_LANGUAGE_VERSION', 'SHORT', 'SRC_ALPHA', 'SRC_ALPHA_SATURATE', 'SRC_COLOR', 'STATIC_DRAW', 'STENCIL_ATTACHMENT', 'STENCIL_BACK_FAIL', 'STENCIL_BACK_FUNC', 'STENCIL_BACK_PASS_DEPTH_FAIL', 'STENCIL_BACK_PASS_DEPTH_PASS', 'STENCIL_BACK_REF', 'STENCIL_BACK_VALUE_MASK', 'STENCIL_BACK_WRITEMASK', 'STENCIL_BITS', 'STENCIL_BUFFER_BIT', 'STENCIL_CLEAR_VALUE', 'STENCIL_FAIL', 'STENCIL_FUNC', 'STENCIL_INDEX', 'STENCIL_INDEX8', 'STENCIL_PASS_DEPTH_FAIL', 'STENCIL_PASS_DEPTH_PASS', 'STENCIL_REF', 'STENCIL_TEST', 'STENCIL_VALUE_MASK', 'STENCIL_WRITEMASK', 'STREAM_DRAW', 'SUBPIXEL_BITS', 'TEXTURE', 'TEXTURE0', 'TEXTURE1', 'TEXTURE10', 'TEXTURE11', 'TEXTURE12', 'TEXTURE13', 'TEXTURE14', 'TEXTURE15', 'TEXTURE16', 'TEXTURE17', 'TEXTURE18', 'TEXTURE19', 'TEXTURE2', 'TEXTURE20', 'TEXTURE21', 'TEXTURE22', 'TEXTURE23', 'TEXTURE24', 'TEXTURE25', 'TEXTURE26', 'TEXTURE27', 'TEXTURE28', 'TEXTURE29', 'TEXTURE3', 'TEXTURE30', 'TEXTURE31', 'TEXTURE4', 'TEXTURE5', 'TEXTURE6', 'TEXTURE7', 'TEXTURE8', 'TEXTURE9', 'TEXTURE_2D', 'TEXTURE_BINDING_2D', 'TEXTURE_BINDING_CUBE_MAP', 'TEXTURE_CUBE_MAP', 'TEXTURE_CUBE_MAP_NEGATIVE_X', 'TEXTURE_CUBE_MAP_NEGATIVE_Y', 'TEXTURE_CUBE_MAP_NEGATIVE_Z', 'TEXTURE_CUBE_MAP_POSITIVE_X', 'TEXTURE_CUBE_MAP_POSITIVE_Y', 'TEXTURE_CUBE_MAP_POSITIVE_Z', 'TEXTURE_MAG_FILTER', 'TEXTURE_MIN_FILTER', 'TEXTURE_WRAP_S', 'TEXTURE_WRAP_T', 'TRIANGLES', 'TRIANGLE_FAN', 'TRIANGLE_STRIP', 'UNPACK_ALIGNMENT', 'UNPACK_COLORSPACE_CONVERSION_WEBGL', 'UNPACK_FLIP_Y_WEBGL', 'UNPACK_PREMULTIPLY_ALPHA_WEBGL', 'UNSIGNED_BYTE', 'UNSIGNED_INT', 'UNSIGNED_SHORT', 'UNSIGNED_SHORT_4_4_4_4', 'UNSIGNED_SHORT_5_5_5_1', 'UNSIGNED_SHORT_5_6_5', 'VALIDATE_STATUS', 'VENDOR', 'VERSION', 'VERTEX_ATTRIB_ARRAY_BUFFER_BINDING', 'VERTEX_ATTRIB_ARRAY_ENABLED', 'VERTEX_ATTRIB_ARRAY_NORMALIZED', 'VERTEX_ATTRIB_ARRAY_POINTER', 'VERTEX_ATTRIB_ARRAY_SIZE', 'VERTEX_ATTRIB_ARRAY_STRIDE', 'VERTEX_ATTRIB_ARRAY_TYPE', 'VERTEX_SHADER', 'VIEWPORT', 'ZERO', 'activeTexture(', 'attachShader(', 'bindAttribLocation(', 'bindBuffer(', 'bindFramebuffer(', 'bindRenderbuffer(', 'bindTexture(', 'blendColor(', 'blendEquation(', 'blendEquationSeparate(', 'blendFunc(', 'blendFuncSeparate(', 'bufferData(', 'bufferSubData(', 'canvas', 'checkFramebufferStatus(', 'clear(', 'clearColor(', 'clearDepth(', 'clearStencil(', 'colorMask(', 'compileShader(', 'compressedTexImage2D(', 'compressedTexSubImage2D(', 'copyTexImage2D(', 'copyTexSubImage2D(', 'createBuffer(', 'createFramebuffer(', 'createProgram(', 'createRenderbuffer(', 'createShader(', 'createTexture(', 'cullFace(', 'deleteBuffer(', 'deleteFramebuffer(', 'deleteProgram(', 'deleteRenderbuffer(', 'deleteShader(', 'deleteTexture(', 'depthFunc(', 'depthMask(', 'depthRange(', 'detachShader(', 'disable(', 'disableVertexAttribArray(', 'drawArrays(', 'drawElements(', 'drawingBufferHeight', 'drawingBufferWidth', 'enable(', 'enableVertexAttribArray(', 'finish(', 'flush(', 'framebufferRenderbuffer(', 'framebufferTexture2D(', 'frontFace(', 'generateMipmap(', 'getActiveAttrib(', 'getActiveUniform(', 'getAttachedShaders(', 'getAttribLocation(', 'getBufferParameter(', 'getContextAttributes(', 'getError(', 'getExtension(', 'getFramebufferAttachmentParameter(', 'getParameter(', 'getProgramInfoLog(', 'getProgramParameter(', 'getRenderbufferParameter(', 'getShaderInfoLog(', 'getShaderParameter(', 'getShaderPrecisionFormat(', 'getShaderSource(', 'getSupportedExtensions(', 'getTexParameter(', 'getUniform(', 'getUniformLocation(', 'getVertexAttrib(', 'getVertexAttribOffset(', 'hint(', 'isBuffer(', 'isContextLost(', 'isEnabled(', 'isFramebuffer(', 'isProgram(', 'isRenderbuffer(', 'isShader(', 'isTexture(', 'lineWidth(', 'linkProgram(', 'pixelStorei(', 'polygonOffset(', 'readPixels(', 'renderbufferStorage(', 'sampleCoverage(', 'scissor(', 'shaderSource(', 'stencilFunc(', 'stencilFuncSeparate(', 'stencilMask(', 'stencilMaskSeparate(', 'stencilOp(', 'stencilOpSeparate(', 'texImage2D(', 'texParameterf(', 'texParameteri(', 'texSubImage2D(', 'uniform1f(', 'uniform1fv(', 'uniform1i(', 'uniform1iv(', 'uniform2f(', 'uniform2fv(', 'uniform2i(', 'uniform2iv(', 'uniform3f(', 'uniform3fv(', 'uniform3i(', 'uniform3iv(', 'uniform4f(', 'uniform4fv(', 'uniform4i(', 'uniform4iv(', 'uniformMatrix2fv(', 'uniformMatrix3fv(', 'uniformMatrix4fv(', 'useProgram(', 'validateProgram(', 'vertexAttrib1f(', 'vertexAttrib1fv(', 'vertexAttrib2f(', 'vertexAttrib2fv(', 'vertexAttrib3f(', 'vertexAttrib3fv(', 'vertexAttrib4f(', 'vertexAttrib4fv(', 'vertexAttribPointer(', 'viewport(']

let s:ctxs = ['arc(', 'arcTo(', 'arguments', 'beginPath(', 'bezierCurveTo(', 'caller', 'canvas', 'clearRect(', 'clearShadow(', 'clip(', 'closePath(', 'constructor(', 'createImageData(', 'createLinearGradient(', 'createPattern(', 'createRadialGradient(', 'drawFocusIfNeeded(', 'drawImage(', 'drawImageFromRect(', 'ellipse(', 'fill(', 'fillRect(', 'fillStyle', 'fillText(', 'font', 'getContextAttributes(', 'getImageData(', 'getLineDash(', 'globalAlpha', 'globalCompositeOperation', 'imageSmoothingEnabled', 'isPointInPath(', 'isPointInStroke(', 'length', 'lineCap', 'lineDashOffset', 'lineJoin', 'lineTo(', 'lineWidth', 'measureText(', 'miterLimit', 'moveTo(', 'name', 'prototype', 'putImageData(', 'quadraticCurveTo(', 'rect(', 'resetTransform(', 'restore(', 'rotate(', 'save(', 'scale(', 'setAlpha(', 'setCompositeOperation(', 'setFillColor(', 'setLineCap(', 'setLineDash(', 'setLineJoin(', 'setLineWidth(', 'setMiterLimit(', 'setShadow(', 'setStrokeColor(', 'setTransform(', 'shadowBlur', 'shadowColor', 'shadowOffsetX', 'shadowOffsetY', 'stroke(', 'strokeRect(', 'strokeStyle', 'strokeText(', 'textAlign', 'textBaseline', 'toString(', 'transform(', 'translate(', 'webkitImageSmoothingEnabled']

let s:storage = ['arguments', 'caller', 'clear(', 'constructor(', 'getItem(', 'key(', 'length', 'name', 'prototype', 'removeItem(', 'setItem(', 'toString(']

let s:bodys = ['ALLOW_KEYBOARD_INPUT', 'ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'aLink', 'accessKey', 'addEventListener(', 'animate(', 'appendChild(', 'attributes', 'background', 'baseURI', 'bgColor', 'blur(', 'childElementCount', 'childNodes', 'children', 'classList', 'className', 'click(', 'clientHeight', 'clientLeft', 'clientTop', 'clientWidth', 'cloneNode(', 'compareDocumentPosition(', 'contains(', 'contentEditable', 'createShadowRoot(', 'dataset', 'dir', 'dispatchEvent(', 'draggable', 'firstChild', 'firstElementChild', 'focus(', 'getAttribute(', 'getAttributeNS(', 'getAttributeNode(', 'getAttributeNodeNS(', 'getBoundingClientRect(', 'getClientRects(', 'getDestinationInsertionPoints(', 'getElementsByClassName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'hasAttribute(', 'hasAttributeNS(', 'hasAttributes(', 'hasChildNodes(', 'hidden', 'id', 'innerHTML', 'innerText', 'insertAdjacentElement(', 'insertAdjacentHTML(', 'insertAdjacentText(', 'insertBefore(', 'isContentEditable', 'isDefaultNamespace(', 'isEqualNode(', 'isSameNode(', 'lang', 'lastChild', 'lastElementChild', 'link', 'localName', 'lookupNamespaceURI(', 'lookupPrefix(', 'matches(', 'namespaceURI', 'nextElementSibling', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'offsetHeight', 'offsetLeft', 'offsetParent', 'offsetTop', 'offsetWidth', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onbeforeunload', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'onhashchange', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onlanguagechange', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmessage', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onoffline', 'ononline', 'onpagehide', 'onpageshow', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpopstate', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectstart', 'onshow', 'onstalled', 'onstorage', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onunload', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwheel', 'outerHTML', 'outerText', 'ownerDocument', 'parentElement', 'parentNode', 'prefix', 'previousElementSibling', 'previousSibling', 'querySelector(', 'querySelectorAll(', 'remove(', 'removeAttribute(', 'removeAttributeNS(', 'removeAttributeNode(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'requestPointerLock(', 'scrollByLines(', 'scrollByPages(', 'scrollHeight', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollLeft', 'scrollTop', 'scrollWidth', 'setAttribute(', 'setAttributeNS(', 'setAttributeNode(', 'setAttributeNodeNS(', 'shadowRoot', 'spellcheck', 'style', 'tabIndex', 'tagName', 'text', 'textContent', 'title', 'translate', 'vLink', 'webkitMatchesSelector(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'webkitdropzone']

let s:docus = ['ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'URL', 'activeElement', 'addEventListener(', 'adoptNode(', 'alinkColor', 'all', 'anchors', 'appendChild(', 'applets', 'baseURI', 'bgColor', 'body', 'captureEvents(', 'caretRangeFromPoint(', 'characterSet', 'charset', 'childElementCount', 'childNodes', 'children', 'clear(', 'cloneNode(', 'close(', 'compareDocumentPosition(', 'compatMode', 'contains(', 'contentType', 'cookie', 'createAttribute(', 'createAttributeNS(', 'createCDATASection(', 'createComment(', 'createDocumentFragment(', 'createElement(', 'createElementNS(', 'createEvent(', 'createExpression(', 'createNSResolver(', 'createNodeIterator(', 'createProcessingInstruction(', 'createRange(', 'createTextNode(', 'createTreeWalker(', 'currentScript', 'defaultCharset', 'defaultView', 'designMode', 'dir', 'dispatchEvent(', 'doctype', 'documentElement', 'documentURI', 'domain', 'elementFromPoint(', 'embeds', 'evaluate(', 'execCommand(', 'exitPointerLock(', 'fgColor', 'firstChild', 'firstElementChild', 'fonts', 'forms', 'getCSSCanvasContext(', 'getElementById(', 'getElementsByClassName(', 'getElementsByName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'getOverrideStyle(', 'getSelection(', 'hasChildNodes(', 'hasFocus(', 'head', 'hidden', 'images', 'implementation', 'importNode(', 'inputEncoding', 'insertBefore(', 'isDefaultNamespace(', 'isEqualNode(', 'isSameNode(', 'lastChild', 'lastElementChild', 'lastModified', 'linkColor', 'links', 'localName', 'location', 'lookupNamespaceURI(', 'lookupPrefix(', 'namespaceURI', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onpointerlockchange', 'onpointerlockerror', 'onprogress', 'onratechange', 'onreadystatechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectionchange', 'onselectstart', 'onshow', 'onstalled', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwebkitpointerlockchange', 'onwebkitpointerlockerror', 'onwheel', 'open(', 'ownerDocument', 'parentElement', 'parentNode', 'plugins', 'pointerLockElement', 'preferredStylesheetSet', 'previousSibling', 'queryCommandEnabled(', 'queryCommandIndeterm(', 'queryCommandState(', 'queryCommandSupported(', 'queryCommandValue(', 'querySelector(', 'querySelectorAll(', 'readyState', 'referrer', 'registerElement(', 'releaseEvents(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'rootElement', 'scripts', 'selectedStylesheetSet', 'styleSheets', 'textContent', 'title', 'visibilityState', 'vlinkColor', 'webkitCancelFullScreen(', 'webkitCurrentFullScreenElement', 'webkitExitFullscreen(', 'webkitExitPointerLock(', 'webkitFullScreenKeyboardInputAllowed', 'webkitFullscreenElement', 'webkitFullscreenEnabled', 'webkitHidden', 'webkitIsFullScreen', 'webkitPointerLockElement', 'webkitVisibilityState', 'write(', 'writeln(', 'xmlEncoding', 'xmlStandalone', 'xmlVersion']

let s:hists = ['arguments', 'back(', 'caller', 'constructor(', 'forward(', 'go(', 'length', 'name', 'prototype', 'pushState(', 'replaceState(', 'toString(']

let s:imags = ['ALLOW_KEYBOARD_INPUT', 'ATTRIBUTE_NODE', 'CDATA_SECTION_NODE', 'COMMENT_NODE', 'DOCUMENT_FRAGMENT_NODE', 'DOCUMENT_NODE', 'DOCUMENT_POSITION_CONTAINED_BY', 'DOCUMENT_POSITION_CONTAINS', 'DOCUMENT_POSITION_DISCONNECTED', 'DOCUMENT_POSITION_FOLLOWING', 'DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC', 'DOCUMENT_POSITION_PRECEDING', 'DOCUMENT_TYPE_NODE', 'ELEMENT_NODE', 'ENTITY_NODE', 'ENTITY_REFERENCE_NODE', 'NOTATION_NODE', 'PROCESSING_INSTRUCTION_NODE', 'TEXT_NODE', 'accessKey', 'addEventListener(', 'align', 'alt', 'animate(', 'appendChild(', 'arguments', 'attributes', 'baseURI', 'blur(', 'border', 'caller', 'childElementCount', 'childNodes', 'children', 'classList', 'className', 'click(', 'clientHeight', 'clientLeft', 'clientTop', 'clientWidth', 'cloneNode(', 'compareDocumentPosition(', 'complete', 'constructor(', 'contains(', 'contentEditable', 'createShadowRoot(', 'crossOrigin', 'dataset', 'dir', 'dispatchEvent(', 'draggable', 'firstChild', 'firstElementChild', 'focus(', 'getAttribute(', 'getAttributeNS(', 'getAttributeNode(', 'getAttributeNodeNS(', 'getBoundingClientRect(', 'getClientRects(', 'getDestinationInsertionPoints(', 'getElementsByClassName(', 'getElementsByTagName(', 'getElementsByTagNameNS(', 'hasAttribute(', 'hasAttributeNS(', 'hasAttributes(', 'hasChildNodes(', 'height', 'hidden', 'hspace', 'id', 'innerHTML', 'innerText', 'insertAdjacentElement(', 'insertAdjacentHTML(', 'insertAdjacentText(', 'insertBefore(', 'isContentEditable', 'isDefaultNamespace(', 'isEqualNode(', 'isMap', 'isSameNode(', 'lang', 'lastChild', 'lastElementChild', 'length', 'localName', 'longDesc', 'lookupNamespaceURI(', 'lookupPrefix(', 'lowsrc', 'matches(', 'name', 'namespaceURI', 'naturalHeight', 'naturalWidth', 'nextElementSibling', 'nextSibling', 'nodeName', 'nodeType', 'nodeValue', 'normalize(', 'offsetHeight', 'offsetLeft', 'offsetParent', 'offsetTop', 'offsetWidth', 'onabort', 'onautocomplete', 'onautocompleteerror', 'onbeforecopy', 'onbeforecut', 'onbeforepaste', 'onblur', 'oncancel', 'oncanplay', 'oncanplaythrough', 'onchange', 'onclick', 'onclose', 'oncontextmenu', 'oncopy', 'oncuechange', 'oncut', 'ondblclick', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'ondurationchange', 'onemptied', 'onended', 'onerror', 'onfocus', 'oninput', 'oninvalid', 'onkeydown', 'onkeypress', 'onkeyup', 'onload', 'onloadeddata', 'onloadedmetadata', 'onloadstart', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onpaste', 'onpause', 'onplay', 'onplaying', 'onprogress', 'onratechange', 'onreset', 'onresize', 'onscroll', 'onsearch', 'onseeked', 'onseeking', 'onselect', 'onselectstart', 'onshow', 'onstalled', 'onsubmit', 'onsuspend', 'ontimeupdate', 'ontoggle', 'onvolumechange', 'onwaiting', 'onwebkitfullscreenchange', 'onwebkitfullscreenerror', 'onwheel', 'outerHTML', 'outerText', 'ownerDocument', 'parentElement', 'parentNode', 'prefix', 'previousElementSibling', 'previousSibling', 'prototype', 'querySelector(', 'querySelectorAll(', 'remove(', 'removeAttribute(', 'removeAttributeNS(', 'removeAttributeNode(', 'removeChild(', 'removeEventListener(', 'replaceChild(', 'requestPointerLock(', 'scrollByLines(', 'scrollByPages(', 'scrollHeight', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollLeft', 'scrollTop', 'scrollWidth', 'setAttribute(', 'setAttributeNS(', 'setAttributeNode(', 'setAttributeNodeNS(', 'shadowRoot', 'spellcheck', 'src', 'srcset', 'style', 'tabIndex', 'tagName', 'textContent', 'title', 'translate', 'useMap', 'vspace', 'webkitMatchesSelector(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'webkitdropzone', 'width', 'x', 'y']

let s:navis = ['appCodeName', 'appName', 'appVersion', 'arguments', 'caller', 'constructor(', 'cookieEnabled', 'doNotTrack', 'geolocation', 'getGamepads(', 'getMediaDevices(', 'getStorageUpdates(', 'hardwareConcurrency', 'javaEnabled(', 'language', 'languages', 'length', 'maxTouchPoints', 'mimeTypes', 'name', 'onLine', 'platform', 'plugins', 'product', 'productSub', 'prototype', 'registerProtocolHandler(', 'toString(', 'userAgent', 'vendor', 'vendorSub', 'vibrate(', 'webkitGetGamepads(', 'webkitGetUserMedia(', 'webkitPersistentStorage', 'webkitTemporaryStorage']

let s:scres = ['arguments', 'availHeight', 'availLeft', 'availTop', 'availWidth', 'caller', 'colorDepth', 'constructor(', 'height', 'length', 'name', 'pixelDepth', 'prototype', 'toString(', 'width']

let s:styls = ['alignContent', 'alignItems', 'alignSelf', 'alignmentBaseline', 'all', 'backfaceVisibility', 'background', 'backgroundAttachment', 'backgroundBlendMode', 'backgroundClip', 'backgroundColor', 'backgroundImage', 'backgroundOrigin', 'backgroundPosition', 'backgroundPositionX', 'backgroundPositionY', 'backgroundRepeat', 'backgroundRepeatX', 'backgroundRepeatY', 'backgroundSize', 'baselineShift', 'border', 'borderBottom', 'borderBottomColor', 'borderBottomLeftRadius', 'borderBottomRightRadius', 'borderBottomStyle', 'borderBottomWidth', 'borderCollapse', 'borderColor', 'borderImage', 'borderImageOutset', 'borderImageRepeat', 'borderImageSlice', 'borderImageSource', 'borderImageWidth', 'borderLeft', 'borderLeftColor', 'borderLeftStyle', 'borderLeftWidth', 'borderRadius', 'borderRight', 'borderRightColor', 'borderRightStyle', 'borderRightWidth', 'borderSpacing', 'borderStyle', 'borderTop', 'borderTopColor', 'borderTopLeftRadius', 'borderTopRightRadius', 'borderTopStyle', 'borderTopWidth', 'borderWidth', 'bottom', 'boxShadow', 'boxSizing', 'bufferedRendering', 'captionSide', 'clear', 'clip', 'clipPath', 'clipRule', 'color', 'colorInterpolation', 'colorInterpolationFilters', 'colorRendering', 'content', 'counterIncrement', 'counterReset', 'cssText', 'cursor', 'direction', 'display', 'dominantBaseline', 'emptyCells', 'enableBackground', 'fill', 'fillOpacity', 'fillRule', 'filter', 'flex', 'flexBasis', 'flexDirection', 'flexFlow', 'flexGrow', 'flexShrink', 'flexWrap', 'float', 'floodColor', 'floodOpacity', 'font', 'fontFamily', 'fontKerning', 'fontSize', 'fontStretch', 'fontStyle', 'fontVariant', 'fontVariantLigatures', 'fontWeight', 'getPropertyCSSValue(', 'getPropertyPriority(', 'getPropertyValue(', 'glyphOrientationHorizontal', 'glyphOrientationVertical', 'height', 'imageRendering', 'item(', 'justifyContent', 'left', 'length', 'letterSpacing', 'lightingColor', 'lineHeight', 'listStyle', 'listStyleImage', 'listStylePosition', 'listStyleType', 'margin', 'marginBottom', 'marginLeft', 'marginRight', 'marginTop', 'marker', 'markerEnd', 'markerMid', 'markerStart', 'mask', 'maskType', 'maxHeight', 'maxWidth', 'maxZoom', 'minHeight', 'minWidth', 'minZoom', 'objectFit', 'objectPosition', 'opacity', 'order', 'orientation', 'orphans', 'outline', 'outlineColor', 'outlineOffset', 'outlineStyle', 'outlineWidth', 'overflow', 'overflowWrap', 'overflowX', 'overflowY', 'padding', 'paddingBottom', 'paddingLeft', 'paddingRight', 'paddingTop', 'page', 'pageBreakAfter', 'pageBreakBefore', 'pageBreakInside', 'paintOrder', 'parentRule', 'perspective', 'perspectiveOrigin', 'pointerEvents', 'position', 'quotes', 'removeProperty(', 'resize', 'right', 'setProperty(', 'shapeImageThreshold', 'shapeMargin', 'shapeOutside', 'shapeRendering', 'size', 'speak', 'src', 'stopColor', 'stopOpacity', 'stroke', 'strokeDasharray', 'strokeDashoffset', 'strokeLinecap', 'strokeLinejoin', 'strokeMiterlimit', 'strokeOpacity', 'strokeWidth', 'tabSize', 'tableLayout', 'textAlign', 'textAnchor', 'textDecoration', 'textIndent', 'textLineThroughColor', 'textLineThroughMode', 'textLineThroughStyle', 'textLineThroughWidth', 'textOverflow', 'textOverlineColor', 'textOverlineMode', 'textOverlineStyle', 'textOverlineWidth', 'textRendering', 'textShadow', 'textTransform', 'textUnderlineColor', 'textUnderlineMode', 'textUnderlineStyle', 'textUnderlineWidth', 'top', 'touchAction', 'transform', 'transformOrigin', 'transformStyle', 'transition', 'transitionDelay', 'transitionDuration', 'transitionProperty', 'transitionTimingFunction', 'unicodeBidi', 'unicodeRange', 'userZoom', 'vectorEffect', 'verticalAlign', 'visibility', 'webkitAnimation', 'webkitAnimationDelay', 'webkitAnimationDirection', 'webkitAnimationDuration', 'webkitAnimationFillMode', 'webkitAnimationIterationCount', 'webkitAnimationName', 'webkitAnimationPlayState', 'webkitAnimationTimingFunction', 'webkitAppRegion', 'webkitAppearance', 'webkitAspectRatio', 'webkitBackfaceVisibility', 'webkitBackgroundClip', 'webkitBackgroundComposite', 'webkitBackgroundOrigin', 'webkitBackgroundSize', 'webkitBorderAfter', 'webkitBorderAfterColor', 'webkitBorderAfterStyle', 'webkitBorderAfterWidth', 'webkitBorderBefore', 'webkitBorderBeforeColor', 'webkitBorderBeforeStyle', 'webkitBorderBeforeWidth', 'webkitBorderEnd', 'webkitBorderEndColor', 'webkitBorderEndStyle', 'webkitBorderEndWidth', 'webkitBorderFit', 'webkitBorderHorizontalSpacing', 'webkitBorderImage', 'webkitBorderRadius', 'webkitBorderStart', 'webkitBorderStartColor', 'webkitBorderStartStyle', 'webkitBorderStartWidth', 'webkitBorderVerticalSpacing', 'webkitBoxAlign', 'webkitBoxDecorationBreak', 'webkitBoxDirection', 'webkitBoxFlex', 'webkitBoxFlexGroup', 'webkitBoxLines', 'webkitBoxOrdinalGroup', 'webkitBoxOrient', 'webkitBoxPack', 'webkitBoxReflect', 'webkitBoxShadow', 'webkitClipPath', 'webkitColumnBreakAfter', 'webkitColumnBreakBefore', 'webkitColumnBreakInside', 'webkitColumnCount', 'webkitColumnGap', 'webkitColumnRule', 'webkitColumnRuleColor', 'webkitColumnRuleStyle', 'webkitColumnRuleWidth', 'webkitColumnSpan', 'webkitColumnWidth', 'webkitColumns', 'webkitFilter', 'webkitFontFeatureSettings', 'webkitFontSizeDelta', 'webkitFontSmoothing', 'webkitHighlight', 'webkitHyphenateCharacter', 'webkitLineBoxContain', 'webkitLineBreak', 'webkitLineClamp', 'webkitLocale', 'webkitLogicalHeight', 'webkitLogicalWidth', 'webkitMarginAfter', 'webkitMarginAfterCollapse', 'webkitMarginBefore', 'webkitMarginBeforeCollapse', 'webkitMarginBottomCollapse', 'webkitMarginCollapse', 'webkitMarginEnd', 'webkitMarginStart', 'webkitMarginTopCollapse', 'webkitMask', 'webkitMaskBoxImage', 'webkitMaskBoxImageOutset', 'webkitMaskBoxImageRepeat', 'webkitMaskBoxImageSlice', 'webkitMaskBoxImageSource', 'webkitMaskBoxImageWidth', 'webkitMaskClip', 'webkitMaskComposite', 'webkitMaskImage', 'webkitMaskOrigin', 'webkitMaskPosition', 'webkitMaskPositionX', 'webkitMaskPositionY', 'webkitMaskRepeat', 'webkitMaskRepeatX', 'webkitMaskRepeatY', 'webkitMaskSize', 'webkitMaxLogicalHeight', 'webkitMaxLogicalWidth', 'webkitMinLogicalHeight', 'webkitMinLogicalWidth', 'webkitPaddingAfter', 'webkitPaddingBefore', 'webkitPaddingEnd', 'webkitPaddingStart', 'webkitPerspective', 'webkitPerspectiveOrigin', 'webkitPerspectiveOriginX', 'webkitPerspectiveOriginY', 'webkitPrintColorAdjust', 'webkitRtlOrdering', 'webkitRubyPosition', 'webkitTapHighlightColor', 'webkitTextCombine', 'webkitTextDecorationsInEffect', 'webkitTextEmphasis', 'webkitTextEmphasisColor', 'webkitTextEmphasisPosition', 'webkitTextEmphasisStyle', 'webkitTextFillColor', 'webkitTextOrientation', 'webkitTextSecurity', 'webkitTextStroke', 'webkitTextStrokeColor', 'webkitTextStrokeWidth', 'webkitTransform', 'webkitTransformOrigin', 'webkitTransformOriginX', 'webkitTransformOriginY', 'webkitTransformOriginZ', 'webkitTransformStyle', 'webkitTransition', 'webkitTransitionDelay', 'webkitTransitionDuration', 'webkitTransitionProperty', 'webkitTransitionTimingFunction', 'webkitUserDrag', 'webkitUserModify', 'webkitUserSelect', 'webkitWritingMode', 'whiteSpace', 'widows', 'width', 'willChange', 'wordBreak', 'wordSpacing', 'wordWrap', 'writingMode', 'zIndex', 'zoom']

let s:niters = ['arguments', 'caller', 'constructor(', 'detach(', 'expandEntityReferences', 'filter', 'length', 'name', 'nextNode(', 'pointerBeforeReferenceNode', 'previousNode(', 'prototype', 'referenceNode', 'root', 'toString(', 'whatToShow']

let s:nfilter = ['FILTER_ACCEPT', 'FILTER_REJECT', 'FILTER_SKIP', 'SHOW_ALL', 'SHOW_ATTRIBUTE', 'SHOW_CDATA_SECTION', 'SHOW_COMMENT', 'SHOW_DOCUMENT', 'SHOW_DOCUMENT_FRAGMENT', 'SHOW_DOCUMENT_TYPE', 'SHOW_ELEMENT', 'SHOW_ENTITY', 'SHOW_ENTITY_REFERENCE', 'SHOW_NOTATION', 'SHOW_PROCESSING_INSTRUCTION', 'SHOW_TEXT', 'acceptNode(', 'arguments', 'caller', 'constructor(', 'length', 'name', 'prototype', 'toString(']

let s:twalkers = ['arguments', 'caller', 'constructor(', 'currentNode', 'expandEntityReferences', 'filter', 'firstChild(', 'lastChild(', 'length', 'name', 'nextNode(', 'nextSibling(', 'parentNode(', 'previousNode(', 'previousSibling(', 'prototype', 'root', 'toString(', 'whatToShow']

let s:console = ['assert(', 'clear(', 'count(', 'debug(', 'dir(', 'dirxml(', 'error(', 'group(', 'groupCollapsed(', 'groupEnd(', 'info(', 'log(', 'markTimeline(', 'memory', 'profile(', 'profileEnd(', 'table(', 'time(', 'timeEnd(', 'timeStamp(', 'timeline(', 'timelineEnd(', 'trace(', 'warn(']

let s:xmlhs = ['DONE', 'HEADERS_RECEIVED', 'LOADING', 'OPENED', 'UNSENT', 'abort(', 'addEventListener(', 'arguments', 'caller', 'constructor(', 'dispatchEvent(', 'getAllResponseHeaders(', 'getResponseHeader(', 'length', 'name', 'onabort', 'onerror', 'onload', 'onloadend', 'onloadstart', 'onprogress', 'onreadystatechange', 'ontimeout', 'open(', 'overrideMimeType(', 'prototype', 'readyState', 'removeEventListener(', 'response', 'responseText', 'responseType', 'responseURL', 'responseXML', 'send(', 'setRequestHeader(', 'status', 'statusText', 'timeout', 'toString(', 'upload', 'withCredentials']

function! javascriptcomplete#CompleteJS(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    let curline = line('.')
    let compl_begin = col('.') - 2
    " Bit risky but JS is rather limited language and local chars shouldn't
    " fint way into names
    while start >= 0 && line[start - 1] =~ '\k'
      let start -= 1
    endwhile
    let b:compl_context = getline('.')[0:compl_begin]
    return start
  else
    " Initialize base return lists
    let res = []
    let res2 = []
    " a:base is very short - we need context
    " Shortcontext is context without a:base, useful for checking if we are
    " looking for objects and for what objects we are looking for
    let context = b:compl_context
    let shortcontext = substitute(context, a:base.'$', '', '')
    unlet! b:compl_context

    if exists("b:jsrange")
      let file = getline(b:jsrange[0],b:jsrange[1])
      unlet! b:jsrange

      if len(b:js_extfiles) > 0
        let file = b:js_extfiles + file
      endif

    else
      let file = getline(1, '$')
    endif


    if shortcontext =~ '\.$'

      let user_props1 = filter(copy(file), 'v:val =~ "this\\.\\k"')
      let juser_props1 = join(user_props1, ' ')
      let user_props1 = split(juser_props1, '\zethis\.')
      unlet! juser_props1
      call map(user_props1, 'matchstr(v:val, "this\\.\\zs\\k\\+\\ze")')

      let user_props2 = filter(copy(file), 'v:val =~ "\\.prototype\\.\\k"')
      let juser_props2 = join(user_props2, ' ')
      let user_props2 = split(juser_props2, '\zeprototype\.')
      unlet! juser_props2
      call map(user_props2, 'matchstr(v:val, "prototype\\.\\zs\\k\\+\\ze")')
      let user_props = user_props1 + user_props2

      " Find object type declaration to reduce number of suggestions. {{{
      " 1. Get object name
      " 2. Find object declaration line
      " 3. General declaration follows "= new Type" syntax, additional else
      "    for regexp "= /re/"
      " 4. Make correction for Microsoft.XMLHTTP ActiveXObject
      " 5. Repeat for external files
      let object = matchstr(shortcontext, '\zs\k\+\ze\(\[.\{-}\]\)\?\.$')
      if len(object) > 0
        let decl_line = search(object.'.\{-}=\s*new\s*', 'bn')
        if decl_line > 0
          let object_type = matchstr(getline(decl_line), object.'.\{-}=\s*new\s*\zs\k\+\.*\k*\ze')
          if object_type == 'ActiveXObject' && matchstr(getline(decl_line), object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
            let object_type = 'XMLHttpRequest'
          endif
        else
          if search(object.'\s*=\s*\/', 'bn') > 0
            let object_type = 'RegExp'
          elseif search(object.'\s*=\s*{', 'bn') > 0
            let object_type = 'Object'
          elseif search(object.'\s*=\s*\(true\|false\|!\)', 'bn') > 0
            let object_type = 'Boolean'
          elseif search(object.'\s*=\s*\[', 'bn') > 0
            let object_type = 'Array'
          elseif search(object.'\s*=\s*\(["'."'".']\|String(\)', 'bn') > 0
            let object_type = 'String'
          elseif search(object.'\s*=\s*document\.createTreeWalker(', 'bn') > 0
            let object_type = 'TreeWalker'
          elseif search(object.'\s*=\s*[a-zA-Z_$]\+\.getContext(', 'bn') > 0
            let object_type = 'CanvasRenderingContext2D'
          elseif search(object.'\s*=\s*document\.createNodeIterator(', 'bn') > 0
            let object_type = 'NodeIterator'
          endif
        endif
        " We didn't find var declaration in current file but we may have
        " something in external files.
        if decl_line == 0 && exists("b:js_extfiles")
          let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "'.object.'.\\{-}=\\s*new\\s*"')
          if len(dext_line) > 0
            let object_type = matchstr(dext_line[-1], object.'.\{-}=\s*new\s*\zs\k\+\ze')
            if object_type == 'ActiveXObject' && matchstr(dext_line[-1], object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
              let object_type = 'XMLHttpRequest'
            endif
          else
            let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "var\s*'.object.'\\s*=\\s*\\/"')
            if len(dext_line) > 0
              let object_type = 'RegExp'
            endif
          endif
        endif
      endif

      if !exists('object_type')
        let object_type = ''
      endif

      if object_type == 'Date'
        let values = s:dates
      elseif object_type == 'Image'
        let values = s:imags
      elseif object_type == 'Array'
        let values = s:arrays
      elseif object_type == 'Object'
        let values = s:objes
      elseif object_type == 'Boolean'
        let values = ['arguments', 'caller', 'length', 'name', 'prototype', 'constructor', 'toString', 'valueOf']
      elseif object_type == 'XMLHttpRequest'
        let values = s:xmlhs
      elseif object_type == 'String'
        let values = s:stris
      elseif object_type == 'RegExp'
        let values = s:reges
      elseif object_type == 'Math'
        let values = s:maths
      elseif object_type == 'WebGL'
        let values = s:webgl
      elseif object_type == 'CanvasRenderingContext2D'
        let values = s:ctxs
      elseif object_type == 'NodeIterator'
        let values = s:niters
      elseif object_type == 'TreeWalker'
        let values = s:twalkers
      elseif object_type == '_'
        let values = s:underscores
      elseif object_type == 'PIXI'
        let values = s:pixis
      elseif object_type == 'PIXI.AjaxRequest'
        let values = s:pixi_ajaxrequests
      elseif object_type == 'PIXI.AbstractFilter'
        let values = s:pixi_abstractfilters
      elseif object_type == 'PIXI.AjaxRequest'
        let values = s:pixi_ajaxrequests
      elseif object_type == 'PIXI.AlphaMaskFilter'
        let values = s:pixi_alphamaskfilters
      elseif object_type == 'PIXI.AsciiFilter'
        let values = s:pixi_asciifilters
      elseif object_type == 'PIXI.AssetLoader'
        let values = s:pixi_assetloaders
      elseif object_type == 'PIXI.AtlasLoader'
        let values = s:pixi_atlasloaders
      elseif object_type == 'PIXI.BaseTexture'
        let values = s:pixi_basetextures
      elseif object_type == 'PIXI.BitmapFontLoader'
        let values = s:pixi_bitmapfontloaders
      elseif object_type == 'PIXI.BitmapText'
        let values = s:pixi_bitmaptexts
      elseif object_type == 'PIXI.BlurFilter'
        let values = s:pixi_blurfilters
      elseif object_type == 'PIXI.BlurXFilter'
        let values = s:pixi_blurxfilters
      elseif object_type == 'PIXI.BlurYFilter'
        let values = s:pixi_bluryfilters
      elseif object_type == 'PIXI.CanvasBuffer'
        let values = s:pixi_canvasbuffers
      elseif object_type == 'PIXI.CanvasMaskManager'
        let values = s:pixi_canvasmaskmanagers
      elseif object_type == 'PIXI.CanvasRenderer'
        let values = s:pixi_canvasrenderers
      elseif object_type == 'PIXI.CanvasTinter'
        let values = s:pixi_canvastinters
      elseif object_type == 'PIXI.Circle'
        let values = s:pixi_circles
      elseif object_type == 'PIXI.ColorMatrixFilter'
        let values = s:pixi_colormatrixfilters
      elseif object_type == 'PIXI.ColorStepFilter'
        let values = s:pixi_colorstepfilters
      elseif object_type == 'PIXI.ComplexPrimitiveShader'
        let values = s:pixi_complexprimitiveshaders
      elseif object_type == 'PIXI.ConvolutionFilter'
        let values = s:pixi_convolutionfilters
      elseif object_type == 'PIXI.CrossHatchFilter'
        let values = s:pixi_crosshatchfilters
      elseif object_type == 'PIXI.DisplacementFilter'
        let values = s:pixi_displacementfilters
      elseif object_type == 'PIXI.DisplayObjectContainer'
        let values = s:pixi_displayobjectcontainers
      elseif object_type == 'PIXI.DotScreenFilter'
        let values = s:pixi_dotscreenfilters
      elseif object_type == 'PIXI.Ellipse'
        let values = s:pixi_ellipses
      elseif object_type == 'PIXI.Event'
        let values = s:pixi_events
      elseif object_type == 'PIXI.EventTarget'
        let values = s:pixi_eventtargets
      elseif object_type == 'PIXI.FilterBlock'
        let values = s:pixi_filterblocks
      elseif object_type == 'PIXI.FilterTexture'
        let values = s:pixi_filtertextures
      elseif object_type == 'PIXI.Graphics'
        let values = s:pixi_graphicss
      elseif object_type == 'PIXI.GrayFilter'
        let values = s:pixi_grayfilters
      elseif object_type == 'PIXI.ImageLoader'
        let values = s:pixi_imageloaders
      elseif object_type == 'PIXI.InteractionData'
        let values = s:pixi_interactiondatas
      elseif object_type == 'PIXI.InteractionManager'
        let values = s:pixi_interactionmanagers
      elseif object_type == 'PIXI.InvertFilter'
        let values = s:pixi_invertfilters
      elseif object_type == 'PIXI.JsonLoader'
        let values = s:pixi_jsonloaders
      elseif object_type == 'PIXI.Matrix'
        let values = s:pixi_matrixs
      elseif object_type == 'PIXI.MovieClip'
        let values = s:pixi_movieclips
      elseif object_type == 'PIXI.NoiseFilter'
        let values = s:pixi_noisefilters
      elseif object_type == 'PIXI.NormalMapFilter'
        let values = s:pixi_normalmapfilters
      elseif object_type == 'PIXI.PixelateFilter'
        let values = s:pixi_pixelatefilters
      elseif object_type == 'PIXI.PixiFastShader'
        let values = s:pixi_pixifastshaders
      elseif object_type == 'PIXI.PixiShader'
        let values = s:pixi_pixishaders
      elseif object_type == 'PIXI.Point'
        let values = s:pixi_points
      elseif object_type == 'PIXI.PolyK'
        let values = s:pixi_polyks
      elseif object_type == 'PIXI.Polygon'
        let values = s:pixi_polygons
      elseif object_type == 'PIXI.PrimitiveShader'
        let values = s:pixi_primitiveshaders
      elseif object_type == 'PIXI.RGBSplitFilter'
        let values = s:pixi_rgbsplitfilters
      elseif object_type == 'PIXI.Rectangle'
        let values = s:pixi_rectangles
      elseif object_type == 'PIXI.RenderTexture'
        let values = s:pixi_rendertextures
      elseif object_type == 'PIXI.Rope'
        let values = s:pixi_ropes
      elseif object_type == 'PIXI.Rounded Rectangle'
        let values = s:pixi_rounded_rectangles
      elseif object_type == 'PIXI.SepiaFilter'
        let values = s:pixi_sepiafilters
      elseif object_type == 'PIXI.SmartBlurFilter'
        let values = s:pixi_smartblurfilters
      elseif object_type == 'PIXI.Spine'
        let values = s:pixi_spines
      elseif object_type == 'PIXI.SpineLoader'
        let values = s:pixi_spineloaders
      elseif object_type == 'PIXI.Sprite'
        let values = s:pixi_sprites
      elseif object_type == 'PIXI.SpriteBatch'
        let values = s:pixi_spritebatchs
      elseif object_type == 'PIXI.SpriteSheetLoader'
        let values = s:pixi_spritesheetloaders
      elseif object_type == 'PIXI.Stage'
        let values = s:pixi_stages
      elseif object_type == 'PIXI.Strip'
        let values = s:pixi_strips
      elseif object_type == 'PIXI.StripShader'
        let values = s:pixi_stripshaders
      elseif object_type == 'PIXI.Text'
        let values = s:pixi_texts
      elseif object_type == 'PIXI.Texture'
        let values = s:pixi_textures
      elseif object_type == 'PIXI.TilingSprite'
        let values = s:pixi_tilingsprites
      elseif object_type == 'PIXI.TiltShiftFilter'
        let values = s:pixi_tiltshiftfilters
      elseif object_type == 'PIXI.TiltShiftXFilter'
        let values = s:pixi_tiltshiftxfilters
      elseif object_type == 'PIXI.TiltShiftYFilter'
        let values = s:pixi_tiltshiftyfilters
      elseif object_type == 'PIXI.TwistFilter'
        let values = s:pixi_twistfilters
      elseif object_type == 'PIXI.WebGLBlendModeManager'
        let values = s:pixi_webglblendmodemanagers
      elseif object_type == 'PIXI.WebGLFastSpriteBatch'
        let values = s:pixi_webglfastspritebatchs
      elseif object_type == 'PIXI.WebGLFilterManager'
        let values = s:pixi_webglfiltermanagers
      elseif object_type == 'PIXI.WebGLGraphics'
        let values = s:pixi_webglgraphicss
      elseif object_type == 'PIXI.WebGLGraphicsData'
        let values = s:pixi_webglgraphicsdatas
      elseif object_type == 'PIXI.WebGLMaskManager'
        let values = s:pixi_webglmaskmanagers
      elseif object_type == 'PIXI.WebGLRenderer'
        let values = s:pixi_webglrenderers
      elseif object_type == 'PIXI.WebGLShaderManager'
        let values = s:pixi_webglshadermanagers
      elseif object_type == 'PIXI.WebGLSpriteBatch'
        let values = s:pixi_webglspritebatchs
      elseif object_type == 'PIXI.WebGLStencilManager'
        let values = s:pixi_webglstencilmanagers
      endif

      if !exists('values')
        if shortcontext =~ 'Math\.$'
          let values = s:maths
        elseif shortcontext =~ 'body\.$'
          let values = s:bodys
        elseif shortcontext =~ 'document\.$'
          let values = s:docus
        elseif shortcontext =~ 'history\.$'
          let values = s:hists
        elseif shortcontext =~ 'JSON\.$'
          let values = ['parse(', 'stringify(']
        elseif shortcontext =~ '\(local\|session\)Storage\.$'
          let values = s:storage
        elseif shortcontext =~ 'NodeFilter\.$'
          let values = s:nfilter
        elseif shortcontext =~ '\/.*\(\\\/\)\@!\/\.$'
          let values = s:reges
        elseif shortcontext =~ 'images\(\[.\{-}\]\)\?\.$'
          let values = s:imags
        elseif shortcontext =~ 'location\.$'
          let values = s:locas
        elseif shortcontext =~ 'navigator\.$'
          let values = s:navis
        elseif shortcontext =~ 'console\.$'
          let values = s:console
        elseif shortcontext =~ '\]\.$'
          let values = s:arrays
        elseif shortcontext =~ '\(}\|object\)\.$'
          let values = s:objes
        elseif shortcontext =~ 'screen\.$'
          let values = s:scres
        elseif shortcontext =~ 'style\.$'
          let values = s:styls
        elseif shortcontext =~ '\(top\|self\|window\)\.$'
          let values = s:winds
        elseif shortcontext =~ '_\.$'
          let values = s:underscores
        elseif shortcontext =~ 'PIXI\.$'
          let values = s:pixis
        elseif shortcontext =~ 'AbstractFilter\.$'
          let values = s:pixi_abstractfilters
        elseif shortcontext =~ 'AjaxRequest\.$'
          let values = s:pixi_ajaxrequests
        elseif shortcontext =~ 'AlphaMaskFilter\.$'
          let values = s:pixi_alphamaskfilters
        elseif shortcontext =~ 'AsciiFilter\.$'
          let values = s:pixi_asciifilters
        elseif shortcontext =~ 'AssetLoader\.$'
          let values = s:pixi_assetloaders
        elseif shortcontext =~ 'AtlasLoader\.$'
          let values = s:pixi_atlasloaders
        elseif shortcontext =~ 'BaseTexture\.$'
          let values = s:pixi_basetextures
        elseif shortcontext =~ 'BitmapFontLoader\.$'
          let values = s:pixi_bitmapfontloaders
        elseif shortcontext =~ 'BitmapText\.$'
          let values = s:pixi_bitmaptexts
        elseif shortcontext =~ 'BlurFilter\.$'
          let values = s:pixi_blurfilters
        elseif shortcontext =~ 'BlurXFilter\.$'
          let values = s:pixi_blurxfilters
        elseif shortcontext =~ 'BlurYFilter\.$'
          let values = s:pixi_bluryfilters
        elseif shortcontext =~ 'CanvasBuffer\.$'
          let values = s:pixi_canvasbuffers
        elseif shortcontext =~ 'CanvasMaskManager\.$'
          let values = s:pixi_canvasmaskmanagers
        elseif shortcontext =~ 'CanvasRenderer\.$'
          let values = s:pixi_canvasrenderers
        elseif shortcontext =~ 'CanvasTinter\.$'
          let values = s:pixi_canvastinters
        elseif shortcontext =~ 'Circle\.$'
          let values = s:pixi_circles
        elseif shortcontext =~ 'ColorMatrixFilter\.$'
          let values = s:pixi_colormatrixfilters
        elseif shortcontext =~ 'ColorStepFilter\.$'
          let values = s:pixi_colorstepfilters
        elseif shortcontext =~ 'ComplexPrimitiveShader\.$'
          let values = s:pixi_complexprimitiveshaders
        elseif shortcontext =~ 'ConvolutionFilter\.$'
          let values = s:pixi_convolutionfilters
        elseif shortcontext =~ 'CrossHatchFilter\.$'
          let values = s:pixi_crosshatchfilters
        elseif shortcontext =~ 'DisplacementFilter\.$'
          let values = s:pixi_displacementfilters
        elseif shortcontext =~ 'DisplayObjectContainer\.$'
          let values = s:pixi_displayobjectcontainers
        elseif shortcontext =~ 'DotScreenFilter\.$'
          let values = s:pixi_dotscreenfilters
        elseif shortcontext =~ 'Ellipse\.$'
          let values = s:pixi_ellipses
        elseif shortcontext =~ 'Event\.$'
          let values = s:pixi_events
        elseif shortcontext =~ 'EventTarget\.$'
          let values = s:pixi_eventtargets
        elseif shortcontext =~ 'FilterBlock\.$'
          let values = s:pixi_filterblocks
        elseif shortcontext =~ 'FilterTexture\.$'
          let values = s:pixi_filtertextures
        elseif shortcontext =~ 'Graphics\.$'
          let values = s:pixi_graphicss
        elseif shortcontext =~ 'GrayFilter\.$'
          let values = s:pixi_grayfilters
        elseif shortcontext =~ 'ImageLoader\.$'
          let values = s:pixi_imageloaders
        elseif shortcontext =~ 'InteractionData\.$'
          let values = s:pixi_interactiondatas
        elseif shortcontext =~ 'InteractionManager\.$'
          let values = s:pixi_interactionmanagers
        elseif shortcontext =~ 'InvertFilter\.$'
          let values = s:pixi_invertfilters
        elseif shortcontext =~ 'JsonLoader\.$'
          let values = s:pixi_jsonloaders
        elseif shortcontext =~ 'Matrix\.$'
          let values = s:pixi_matrixs
        elseif shortcontext =~ 'MovieClip\.$'
          let values = s:pixi_movieclips
        elseif shortcontext =~ 'NoiseFilter\.$'
          let values = s:pixi_noisefilters
        elseif shortcontext =~ 'NormalMapFilter\.$'
          let values = s:pixi_normalmapfilters
        elseif shortcontext =~ 'PixelateFilter\.$'
          let values = s:pixi_pixelatefilters
        elseif shortcontext =~ 'PixiFastShader\.$'
          let values = s:pixi_pixifastshaders
        elseif shortcontext =~ 'PixiShader\.$'
          let values = s:pixi_pixishaders
        elseif shortcontext =~ 'Point\.$'
          let values = s:pixi_points
        elseif shortcontext =~ 'PolyK\.$'
          let values = s:pixi_polyks
        elseif shortcontext =~ 'Polygon\.$'
          let values = s:pixi_polygons
        elseif shortcontext =~ 'PrimitiveShader\.$'
          let values = s:pixi_primitiveshaders
        elseif shortcontext =~ 'RGBSplitFilter\.$'
          let values = s:pixi_rgbsplitfilters
        elseif shortcontext =~ 'Rectangle\.$'
          let values = s:pixi_rectangles
        elseif shortcontext =~ 'RenderTexture\.$'
          let values = s:pixi_rendertextures
        elseif shortcontext =~ 'Rope\.$'
          let values = s:pixi_ropes
        elseif shortcontext =~ 'Rounded Rectangle\.$'
          let values = s:pixi_rounded_rectangles
        elseif shortcontext =~ 'SepiaFilter\.$'
          let values = s:pixi_sepiafilters
        elseif shortcontext =~ 'SmartBlurFilter\.$'
          let values = s:pixi_smartblurfilters
        elseif shortcontext =~ 'Spine\.$'
          let values = s:pixi_spines
        elseif shortcontext =~ 'SpineLoader\.$'
          let values = s:pixi_spineloaders
        elseif shortcontext =~ 'Sprite\.$'
          let values = s:pixi_sprites
        elseif shortcontext =~ 'SpriteBatch\.$'
          let values = s:pixi_spritebatchs
        elseif shortcontext =~ 'SpriteSheetLoader\.$'
          let values = s:pixi_spritesheetloaders
        elseif shortcontext =~ 'Stage\.$'
          let values = s:pixi_stages
        elseif shortcontext =~ 'Strip\.$'
          let values = s:pixi_strips
        elseif shortcontext =~ 'StripShader\.$'
          let values = s:pixi_stripshaders
        elseif shortcontext =~ 'Text\.$'
          let values = s:pixi_texts
        elseif shortcontext =~ 'Texture\.$'
          let values = s:pixi_textures
        elseif shortcontext =~ 'TilingSprite\.$'
          let values = s:pixi_tilingsprites
        elseif shortcontext =~ 'TiltShiftFilter\.$'
          let values = s:pixi_tiltshiftfilters
        elseif shortcontext =~ 'TiltShiftXFilter\.$'
          let values = s:pixi_tiltshiftxfilters
        elseif shortcontext =~ 'TiltShiftYFilter\.$'
          let values = s:pixi_tiltshiftyfilters
        elseif shortcontext =~ 'TwistFilter\.$'
          let values = s:pixi_twistfilters
        elseif shortcontext =~ 'WebGLBlendModeManager\.$'
          let values = s:pixi_webglblendmodemanagers
        elseif shortcontext =~ 'WebGLFastSpriteBatch\.$'
          let values = s:pixi_webglfastspritebatchs
        elseif shortcontext =~ 'WebGLFilterManager\.$'
          let values = s:pixi_webglfiltermanagers
        elseif shortcontext =~ 'WebGLGraphics\.$'
          let values = s:pixi_webglgraphicss
        elseif shortcontext =~ 'WebGLGraphicsData\.$'
          let values = s:pixi_webglgraphicsdatas
        elseif shortcontext =~ 'WebGLMaskManager\.$'
          let values = s:pixi_webglmaskmanagers
        elseif shortcontext =~ 'WebGLRenderer\.$'
          let values = s:pixi_webglrenderers
        elseif shortcontext =~ 'WebGLShaderManager\.$'
          let values = s:pixi_webglshadermanagers
        elseif shortcontext =~ 'WebGLSpriteBatch\.$'
          let values = s:pixi_webglspritebatchs
        elseif shortcontext =~ 'WebGLStencilManager\.$'
          let values = s:pixi_webglstencilmanagers
        else
          let values = user_props + s:bodys + s:arrays + s:dates +
                \ s:funcs + s:numbs + s:reges + s:stris + s:docus +
                \ s:imags + s:locas + s:navis + s:objes + s:scres +
                \ s:winds + s:pixis + s:underscores
        endif
      endif

      for m in values
        if m =~? '^'.a:base
          call add(res, m)
        elseif m =~? a:base
          call add(res2, m)
        endif
      endfor

      unlet! values
      return res + res2

    endif

    let variables = filter(copy(file), 'v:val =~ "var\\s"')
    call map(variables, 'matchstr(v:val, ".\\{-}var\\s\\+\\zs.*\\ze")')
    call map(variables, 'substitute(v:val, ";\\|$", ",", "g")')
    let vars = []
    " This loop (and next one) is necessary to get variable names from
    " constructs like: var var1, var2, var3 = "something";
    for i in range(len(variables))
      let comma_separated = split(variables[i], ',\s*')
      call map(comma_separated, 'matchstr(v:val, "\\k\\+")')
      let vars += comma_separated
    endfor

    let variables = sort(vars)
    unlet! vars

    " Add "no var" variables.
    let undeclared_variables = filter(copy(file), 'v:val =~ "^\\s*\\k\\+\\s*="')
    let u_vars = []
    for i in range(len(undeclared_variables))
      let  split_equal = split(undeclared_variables[i], '\s*=')
      call map(split_equal, 'matchstr(v:val, "\\k\\+$")')
      let u_vars += split_equal
    endfor

    let variables += sort(u_vars)
    unlet! u_vars

    " Get functions
    let functions = filter(copy(file), 'v:val =~ "^\\s*function\\s"')
    let arguments = copy(functions)
    call map(functions, 'matchstr(v:val, "^\\s*function\\s\\+\\zs\\k\\+")')
    call map(functions, 'v:val."("')
    let functions = sort(functions)

    " Create table to keep arguments for additional 'menu' info
    let b:js_menuinfo = {}
    for i in arguments
      let g:ia = i
      let f_elements = matchlist(i, 'function\s\+\(\k\+\)\s*(\(.\{-}\))')
      if len(f_elements) == 3
        let b:js_menuinfo[f_elements[1].'('] = f_elements[2]
      endif
    endfor

    call map(arguments, 'matchstr(v:val, "function.\\{-}(\\zs.\\{-}\\ze)")')
    let jargs = join(arguments, ',')
    let jargs = substitute(jargs, '\s', '', 'g')
    let arguments = split(jargs, ',')
    let arguments = sort(arguments)


    let keywords = ['abstract', 'boolean', 'break', 'byte', 'case', 'catch', 'char', 'class', 'continue', 'debugger', 'default', 'delete', 'do', 'double ', 'else', 'enum', 'export', 'extends', 'false', 'final', 'finally', 'float', 'for', 'function', 'goto', 'if', 'implements', 'import', 'in ', 'instanceof', 'int', 'interface', 'long', 'native', 'new', 'null', 'package', 'private', 'protected', 'public', 'return', 'short', 'static', 'super ', 'switch', 'synchronized', 'this', 'throw', 'throws', 'transient', 'true', 'try', 'typeof', 'var', 'void', 'volatile', 'while', 'with', 'console']

    let values = variables + functions + arguments + keywords + s:winds

    for m in values
      if m =~? '^'.a:base
        call add(res, m)
      elseif m =~? a:base
        call add(res2, m)
      endif
    endfor

    let menu = res + res2
    let final_menu = []
    for i in range(len(menu))
      let item = menu[i]
      if item =~ '($'
        let kind = '[F]'
        if has_key(b:js_menuinfo, item)
          let m_info = b:js_menuinfo[item]
        else
          let m_info = ''
        endif
      else
        let kind = '[V]'
        let m_info = ''
      endif
      let final_menu += [{'word':item, 'menu':m_info, 'kind':kind}]
    endfor
    let g:fm = final_menu
    return final_menu

endfunction
