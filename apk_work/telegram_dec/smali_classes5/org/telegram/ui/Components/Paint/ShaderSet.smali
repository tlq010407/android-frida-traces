.class public abstract Lorg/telegram/ui/Components/Paint/ShaderSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AVAILABLE_SHADERS:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/telegram/ui/Components/Paint/ShaderSet;->createMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/ShaderSet;->AVAILABLE_SHADERS:Ljava/util/Map;

    return-void
.end method

.method private static createMap()Ljava/util/Map;
    .locals 30

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vertex"

    const-string v3, "precision highp float;uniform mat4 mvpMatrix;attribute vec4 inPosition;attribute vec2 inTexcoord;attribute float alpha;varying vec2 varTexcoord;varying float varIntensity;void main (void) {   gl_Position = mvpMatrix * inPosition;   varTexcoord = inTexcoord;   varIntensity = alpha;}"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "precision highp float;varying vec2 varTexcoord;varying float varIntensity;uniform sampler2D texture;void main (void) {   gl_FragColor = vec4(1, 1, 1, varIntensity * texture2D(texture, varTexcoord.st, 0.0).r);}"

    const-string v5, "fragment"

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "inPosition"

    const-string v6, "inTexcoord"

    const-string v7, "alpha"

    filled-new-array {v4, v6, v7}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "attributes"

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "mvpMatrix"

    const-string v10, "texture"

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "uniforms"

    invoke-interface {v1, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v11, "brush"

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v11, "precision highp float;uniform mat4 mvpMatrix;attribute vec4 inPosition;attribute vec2 inTexcoord;varying vec2 varTexcoord;void main (void) {   gl_Position = mvpMatrix * inPosition;   varTexcoord = inTexcoord;}"

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;void main (void) {   gl_FragColor = texture2D(texture, varTexcoord.st, 0.0);   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v7}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v13, "blit"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform float preview;void main (void) {   gl_FragColor = texture2D(texture, varTexcoord.st, 0.0) * (preview + (1.0 - preview) * texture2D(mask, varTexcoord.st, 0.0).a);   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "preview"

    const-string v14, "mask"

    filled-new-array {v8, v10, v14, v7, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v13, "maskingBlit"

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D otexture;uniform sampler2D mask;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   gl_FragColor.rgb = (color.rgb * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha));   gl_FragColor.a = outAlpha;}"

    invoke-interface {v1, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v1, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "color"

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v15, "blitWithMask"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D otexture;uniform sampler2D mask;uniform vec4 color;uniform float preview;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   gl_FragColor = texture2D(otexture, varTexcoord.st, 0.0) * (preview + (1.0 - preview) * outAlpha);   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v20, "color"

    const-string v21, "preview"

    const-string v16, "mvpMatrix"

    const-string v17, "otexture"

    const-string v18, "texture"

    const-string v19, "mask"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v15, "blitWithMask_masking"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform vec4 color;void main(void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   gl_FragColor.rgb = (color.rgb * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha)) / outAlpha;   gl_FragColor.a = outAlpha;}"

    invoke-interface {v1, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v15, "compositeWithMask"

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform sampler2D blured;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   vec4 blurColor = texture2D(blured, varTexcoord.st, 0.0);   gl_FragColor.rgb = (blurColor.rgb * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha)) / outAlpha;   gl_FragColor.a = outAlpha;   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v1, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "blured"

    move-object/from16 v16, v7

    filled-new-array {v8, v10, v14, v15, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "blitWithMaskBlurer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform sampler2D blured;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   vec4 blurColor = texture2D(blured, varTexcoord.st, 0.0);   gl_FragColor.rgb = (blurColor.rgb * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha)) / outAlpha;   gl_FragColor.a = outAlpha;}"

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v15, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "compositeWithMaskBlurer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D blured;uniform float eraser;uniform float flipy;uniform sampler2D mask;void main (void) {   vec2 uv = vec2(varTexcoord.x, flipy > 0. ? 1. - varTexcoord.y : varTexcoord.y);   vec4 dst = texture2D(texture, uv, 0.0);   vec4 blurColor = texture2D(blured, uv, 0.0);   gl_FragColor = dst.a <= 0. ? vec4(0.) : vec4(blurColor.rgb, 1.) * dst.a;   if (eraser > 0.) {       vec4 maskColor = texture2D(mask, uv, 0.0);       if (maskColor.a > 0.) {           gl_FragColor.rgba *= (1. - maskColor.a);       }   }}"

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v21, "mask"

    const-string v22, "flipy"

    const-string v17, "mvpMatrix"

    const-string v18, "texture"

    const-string v19, "blured"

    const-string v20, "eraser"

    filled-new-array/range {v17 .. v22}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v7, "videoBlur"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;varying float varIntensity;uniform sampler2D texture;void main (void) {   vec4 f = texture2D(texture, varTexcoord.st, 0.0);   gl_FragColor = vec4(f.r * varIntensity, f.g, f.b, 0.0);}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    filled-new-array {v4, v6, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "brushLight"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   vec3 maskColor = texture2D(mask, varTexcoord.st, 0.0).rgb;   float srcAlpha = clamp(0.78 * maskColor.r + maskColor.b + maskColor.g, 0.0, 1.0);   vec3 borderColor = mix(color.rgb, vec3(1.0, 1.0, 1.0), 0.86);   vec3 finalColor = mix(color.rgb, borderColor, maskColor.g);   finalColor = mix(finalColor.rgb, vec3(1.0, 1.0, 1.0), maskColor.b);   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   gl_FragColor.rgb = (finalColor * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha)) / outAlpha;   gl_FragColor.a = outAlpha;   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "blitWithMaskLight"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform vec4 color;void main(void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   vec3 maskColor = texture2D(mask, varTexcoord.st, 0.0).rgb;   float srcAlpha = clamp(0.78 * maskColor.r + maskColor.b + maskColor.g, 0.0, 1.0);   vec3 borderColor = mix(color.rgb, vec3(1.0, 1.0, 1.0), 0.86);   vec3 finalColor = mix(color.rgb, borderColor, maskColor.g);   finalColor = mix(finalColor.rgb, vec3(1.0, 1.0, 1.0), maskColor.b);   float outAlpha = srcAlpha + dst.a * (1.0 - srcAlpha);   gl_FragColor.rgb = (finalColor * srcAlpha + dst.rgb * dst.a * (1.0 - srcAlpha)) / outAlpha;   gl_FragColor.a = outAlpha;}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "compositeWithMaskLight"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = dst.a * (1. - srcAlpha);   gl_FragColor.rgb = dst.rgb;   gl_FragColor.a = outAlpha;   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "blitWithMaskEraser"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D otexture;uniform sampler2D mask;uniform vec4 color;uniform float preview;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   float outAlpha = dst.a * (1. - srcAlpha);   gl_FragColor = texture2D(otexture, varTexcoord.st, 0.0) * (preview + (1.0 - preview) * outAlpha);   gl_FragColor.rgb *= gl_FragColor.a;}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v19, "mask"

    const-string v20, "color"

    const-string v15, "mvpMatrix"

    const-string v16, "texture"

    const-string v17, "otexture"

    const-string v18, "preview"

    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "blitWithMaskEraser_masking"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform vec4 color;void main (void) {   vec4 dst = texture2D(texture, varTexcoord.st, 0.0);   float srcAlpha = color.a * texture2D(mask, varTexcoord.st, 0.0).a;   gl_FragColor = vec4(dst.rgb, dst.a * (1.0 - srcAlpha));   if (gl_FragColor.a <= 0.) gl_FragColor.rgb = vec3(0.);}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10, v14, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "compositeWithMaskEraser"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;void main (void) {   gl_FragColor = texture2D(texture, varTexcoord.st, 0.0);}"

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v8, v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v3, "nonPremultipliedBlit"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "precision highp float;varying vec2 varTexcoord;uniform sampler2D texture;uniform sampler2D mask;uniform bool composite;uniform int type;uniform vec4 color;uniform vec2 resolution;uniform vec2 center;uniform vec2 radius;uniform float thickness;uniform float rounding;uniform float rotation;uniform float arrowTriangleLength;uniform vec2 middle;uniform bool fill;uniform bool clear;float sdTriangle( in vec2 p, in vec2 p0, in vec2 p1, in vec2 p2 ) {   vec2 e0 = p1 - p0, e1 = p2 - p1, e2 = p0 - p2, v0 = p - p0, v1 = p - p1, v2 = p - p2;   vec2 pq0 = v0 - e0*clamp( dot(v0,e0)/dot(e0,e0), 0.0, 1.0 ), pq1 = v1 - e1*clamp( dot(v1,e1)/dot(e1,e1), 0.0, 1.0 ), pq2 = v2 - e2*clamp( dot(v2,e2)/dot(e2,e2), 0.0, 1.0 );   float s = e0.x * e2.y - e0.y * e2.x;   vec2 d = min( min( vec2( dot( pq0, pq0 ), s*(v0.x*e0.y-v0.y*e0.x) ),                      vec2( dot( pq1, pq1 ), s*(v1.x*e1.y-v1.y*e1.x) )),                      vec2( dot( pq2, pq2 ), s*(v2.x*e2.y-v2.y*e2.x) ));   return -sqrt(d.x) * sign(d.y);}float sdBezier(vec2 A, vec2 B, vec2 C, vec2 P) {    vec2 a=B-A,b=A-B*2.+C,c=a*2.,d=A-P;    vec3 k=vec3(3.*dot(a,b),2.*dot(a,a)+dot(d,b),dot(d,a))/dot(b,b);    float p=k.y-k.x*k.x/3., p3=p*p*p, q=k.x*(2.*k.x*k.x-9.*k.y)/27.+k.z, D=q*q+4.*p3/27.;    if (D >= 0.) {        float z=sqrt(D);        vec2 x=(vec2(z,-z)-q)/2., uv=sign(x)*pow(abs(x),vec2(1./3.));        float r=clamp(uv.x+uv.y-k.x/3.,0.,1.);        return length(d+(c+b*r)*r);    } else {        float v=acos(-sqrt(-27./p3)*q/2.)/3., m=cos(v), n=sin(v)*1.73205;        vec3 t=clamp(vec3(m+m,-n-m,n-m)*sqrt(-p/3.)-k.x/3.,0.,1.);        return min(min(length(d+(c+b*t.x)*t.x),length(d+(c+b*t.y)*t.y)),length(d+(c+b*t.z)*t.z));    }}vec4 blendOver(vec4 a, vec4 b) {    float alpha = b.a + a.a * (1. - b.a);    if (alpha <= 0.) return vec4(0.);    return vec4((b.rgb * b.a + a.rgb * a.a * (1. - b.a)) / alpha, alpha);}void main (void) {   vec4 dst = clear ? vec4(0.) : texture2D(texture, varTexcoord.st, 0.0);   vec2 p = varTexcoord.st * resolution - center;   float sdf;   vec2 pp = p;   p *= mat2(cos(rotation), -sin(rotation), sin(rotation), cos(rotation));   if (type == 0) {       sdf = length(p) - min(radius.x, radius.y);   } else if (type == 1 || type == 3) {       vec2 q = abs(p) - abs(radius) + rounding;       sdf = min(max(q.x, q.y), 0.0) + length(max(q, 0.0)) - rounding;   } else if (type == 2) {       float n = 5.;       float an = 3.141593 / float(n);       vec2  acs = vec2(cos(an), sin(an)), ecs = vec2(cos(1.), sin(1.));       float bn = mod(atan(p.x, -p.y), 2.0 * an) - an;       p = length(p) * vec2(cos(bn), abs(sin(bn)));       p -= min(radius.x, radius.y) * acs;       p += ecs*clamp( -dot(p, ecs), 0.0, min(radius.x, radius.y) * acs.y / ecs.y);       sdf = length(p) * sign(p.x);   } else if (type == 4) {       p += center;       sdf = sdBezier(center, middle, radius, p) - thickness;       vec2 ba = center - middle;       float a = atan(ba.y, ba.x), g = 30. / 180. * 3.14, ar = sin(g) * arrowTriangleLength;       vec2 ac = center + vec2(cos(a),sin(a)) * ar / 2.;       sdf = min(sdf, max(0., sdTriangle(p, ac, ac+vec2(cos(a+3.14-g), sin(a+3.14-g))*ar, ac+vec2(cos(a+3.14+g), sin(a+3.14+g))*ar)));       sdf += thickness;   }   if (type == 3) {       vec2 c = middle-center;       float a = atan(c.x, -c.y), r = min(radius.x, radius.y) / 2.;       float k = rounding/2., bsdf = sdTriangle(pp+center, center-vec2(cos(a),sin(a))*r, center-vec2(cos(a-3.14),sin(a-3.14))*r, middle);       float h = max(k-abs(sdf-bsdf), 0.)/k;       sdf = min(sdf,bsdf)-h*h*h*k*(1.0/6.0);   }   if (fill && sdf < 0.) {       sdf = 0.;   }   vec4 c = vec4(color.rgb, color.a * (1. - clamp((abs(sdf) - thickness), 0., 2.) / 2.));   gl_FragColor = blendOver(dst, c);   if (!composite) {       gl_FragColor.rgb *= gl_FragColor.a;   }}"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v28, "arrowTriangleLength"

    const-string v29, "composite"

    const-string v13, "mvpMatrix"

    const-string v14, "texture"

    const-string v15, "mask"

    const-string v16, "clear"

    const-string v17, "color"

    const-string v18, "type"

    const-string v19, "color"

    const-string v20, "resolution"

    const-string v21, "center"

    const-string v22, "radius"

    const-string v23, "thickness"

    const-string v24, "rounding"

    const-string v25, "fill"

    const-string v26, "rotation"

    const-string v27, "middle"

    filled-new-array/range {v13 .. v29}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "shape"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static setup()Ljava/util/Map;
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/telegram/ui/Components/Paint/ShaderSet;->AVAILABLE_SHADERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "vertex"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "fragment"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "attributes"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "uniforms"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-instance v7, Lorg/telegram/ui/Components/Paint/Shader;

    invoke-direct {v7, v4, v5, v6, v3}, Lorg/telegram/ui/Components/Paint/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
