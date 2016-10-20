.class Landroid/view/SurfaceView$MyWindow$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/SurfaceView$MyWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView$MyWindow;

.field final synthetic val$surfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView$MyWindow;Landroid/view/SurfaceView;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Landroid/view/SurfaceView$MyWindow$1;->this$0:Landroid/view/SurfaceView$MyWindow;

    iput-object p2, p0, Landroid/view/SurfaceView$MyWindow$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Landroid/view/SurfaceView$MyWindow$1;->val$surfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 753
    return-void
.end method
