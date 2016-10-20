.class Landroid/media/ClosedCaptionWidget;
.super Landroid/view/ViewGroup;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;
.implements Landroid/media/CCParser$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ClosedCaptionWidget$CCLayout;,
        Landroid/media/ClosedCaptionWidget$CCLineBox;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final TAG:Ljava/lang/String; = "ClosedCaptionWidget"

.field private static final mDummyText:Ljava/lang/String; = "1234567890123456789012345678901234"

.field private static final mTextBounds:Landroid/graphics/Rect;


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1091
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;

    .line 1093
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1115
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/media/ClosedCaptionWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    .line 1119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1201
    new-instance v0, Landroid/media/ClosedCaptionWidget$1;

    invoke-direct {v0, p0}, Landroid/media/ClosedCaptionWidget$1;-><init>(Landroid/media/ClosedCaptionWidget;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1122
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/media/ClosedCaptionWidget;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1124
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1125
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1127
    new-instance v0, Landroid/media/ClosedCaptionWidget$CCLayout;

    invoke-direct {v0, p1}, Landroid/media/ClosedCaptionWidget$CCLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    .line 1128
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v0, v1}, Landroid/media/ClosedCaptionWidget$CCLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V

    .line 1129
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    invoke-virtual {p0, v0, v2, v2}, Landroid/media/ClosedCaptionWidget;->addView(Landroid/view/View;II)V

    .line 1131
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->requestLayout()V

    .line 1132
    return-void
.end method

.method static synthetic access$000(Landroid/media/ClosedCaptionWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1
    .param p0, "x0"    # Landroid/media/ClosedCaptionWidget;

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/ClosedCaptionWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 0
    .param p0, "x0"    # Landroid/media/ClosedCaptionWidget;
    .param p1, "x1"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 1086
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object p1
.end method

.method static synthetic access$100()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    .prologue
    .line 1086
    sget-object v0, Landroid/media/ClosedCaptionWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/ClosedCaptionWidget;)Landroid/media/ClosedCaptionWidget$CCLayout;
    .locals 1
    .param p0, "x0"    # Landroid/media/ClosedCaptionWidget;

    .prologue
    .line 1086
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 1086
    sget-object v0, Landroid/media/ClosedCaptionWidget;->mTextBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method private manageChangeListener()V
    .locals 3

    .prologue
    .line 1210
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 1211
    .local v0, "needsListener":Z
    :goto_0
    iget-boolean v1, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    if-eq v1, v0, :cond_0

    .line 1212
    iput-boolean v0, p0, Landroid/media/ClosedCaptionWidget;->mHasChangeListener:Z

    .line 1214
    if-eqz v0, :cond_2

    .line 1215
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1220
    :cond_0
    :goto_1
    return-void

    .line 1210
    .end local v0    # "needsListener":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1217
    .restart local v0    # "needsListener":Z
    :cond_2
    iget-object v1, p0, Landroid/media/ClosedCaptionWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v2, p0, Landroid/media/ClosedCaptionWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1
.end method


# virtual methods
.method public getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1161
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1163
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 1164
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1168
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1170
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 1171
    return-void
.end method

.method public onDisplayChanged([Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "styledTexts"    # [Landroid/text/SpannableStringBuilder;

    .prologue
    .line 1175
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    invoke-virtual {v0, p1}, Landroid/media/ClosedCaptionWidget$CCLayout;->update([Landroid/text/SpannableStringBuilder;)V

    .line 1177
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v0, :cond_0

    .line 1178
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v0, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1180
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1195
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/media/ClosedCaptionWidget$CCLayout;->layout(IIII)V

    .line 1196
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1189
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1190
    iget-object v0, p0, Landroid/media/ClosedCaptionWidget;->mClosedCaptionLayout:Landroid/media/ClosedCaptionWidget$CCLayout;

    invoke-virtual {v0, p1, p2}, Landroid/media/ClosedCaptionWidget$CCLayout;->measure(II)V

    .line 1191
    return-void
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .prologue
    .line 1136
    iput-object p1, p0, Landroid/media/ClosedCaptionWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1137
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1141
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1142
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1144
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/media/ClosedCaptionWidget;->measure(II)V

    .line 1145
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/media/ClosedCaptionWidget;->layout(IIII)V

    .line 1146
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1150
    if-eqz p1, :cond_0

    .line 1151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    .line 1156
    :goto_0
    invoke-direct {p0}, Landroid/media/ClosedCaptionWidget;->manageChangeListener()V

    .line 1157
    return-void

    .line 1153
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget;->setVisibility(I)V

    goto :goto_0
.end method
