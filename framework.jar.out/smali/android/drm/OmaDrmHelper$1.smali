.class final Landroid/drm/OmaDrmHelper$1;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/OmaDrmHelper;->manageDrmLicense(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Landroid/drm/OmaDrmHelper$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Landroid/drm/OmaDrmHelper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/drm/OmaDrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/drm/OmaDrmHelper$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Landroid/drm/OmaDrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/drm/OmaDrmHelper;->validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$1;->val$path:Ljava/lang/String;

    iget-object v1, p0, Landroid/drm/OmaDrmHelper$1;->val$mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/drm/OmaDrmHelper;->consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z

    .line 872
    :cond_0
    return-void
.end method
