.class final Landroid/drm/OmaDrmHelper$2;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/OmaDrmHelper;->consumeDrmRightsNonBlocking(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Landroid/drm/OmaDrmHelper$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/drm/OmaDrmHelper;->consumeDrmRights(Ljava/lang/String;)Z

    .line 1031
    return-void
.end method
