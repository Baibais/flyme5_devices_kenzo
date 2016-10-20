.class Landroid/media/ClosedCaptionWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1236
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1230
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    .line 1231
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    .line 1232
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    .line 1233
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1237
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setGravity(I)V

    .line 1238
    invoke-virtual {p0, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundColor(I)V

    .line 1239
    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1240
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1241
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setVisibility(I)V

    .line 1243
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1246
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    .line 1248
    const v1, 0x105007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    .line 1250
    const v1, 0x105007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    .line 1252
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1308
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 1310
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1311
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    .line 1312
    .local v0, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v2

    .line 1314
    .local v2, "previousWidth":F
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1315
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1316
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1317
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1320
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1323
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1324
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1325
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1326
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1329
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1331
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1333
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1334
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 1337
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 1339
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 1340
    .local v3, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1342
    iget v7, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    const/4 v4, 0x1

    .line 1343
    .local v4, "raised":Z
    :goto_0
    if-eqz v4, :cond_2

    move v1, v0

    .line 1344
    .local v1, "colorUp":I
    :goto_1
    if-eqz v4, :cond_0

    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1345
    .local v0, "colorDown":I
    :cond_0
    iget v7, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float v2, v7, v8

    .line 1348
    .local v2, "offset":F
    iget v7, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    neg-float v8, v2

    neg-float v9, v2

    invoke-virtual {p0, v7, v8, v9, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1349
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1352
    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1355
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1356
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1359
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1362
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1363
    return-void

    .end local v0    # "colorDown":I
    .end local v1    # "colorUp":I
    .end local v2    # "offset":F
    .end local v4    # "raised":Z
    :cond_1
    move v4, v6

    .line 1342
    goto :goto_0

    .line 1343
    .restart local v4    # "raised":Z
    :cond_2
    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    goto :goto_1
.end method

.method private setBackgroundSpans(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1366
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1367
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1368
    check-cast v2, Landroid/text/Spannable;

    .line 1369
    .local v2, "spannable":Landroid/text/Spannable;
    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    const-class v6, Landroid/media/MutableBackgroundColorSpan;

    invoke-interface {v2, v4, v5, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MutableBackgroundColorSpan;

    .line 1371
    .local v0, "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 1372
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Landroid/media/MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 1371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1291
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1295
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1305
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1300
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1303
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1271
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float v1, v3, v4

    .line 1273
    .local v1, "fontSize":F
    invoke-virtual {p0, v7, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextSize(IF)V

    .line 1275
    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    .line 1276
    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    .line 1277
    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    .line 1280
    invoke-virtual {p0, v5}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    .line 1281
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "1234567890123456789012345678901234"

    const-string v5, "1234567890123456789012345678901234"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    # getter for: Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->access$300()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1282
    # getter for: Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->access$300()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v0, v3

    .line 1283
    .local v0, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 1284
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    .line 1286
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1287
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/4 v2, 0x0

    .line 1255
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    .line 1256
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    .line 1257
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    .line 1258
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1260
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1261
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1262
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1266
    :goto_0
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->invalidate()V

    .line 1267
    return-void

    .line 1264
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
