.class final Landroid/drm/OmaDrmHelper$3;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/drm/OmaDrmHelper;->buyLicense(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1292
    iput-object p1, p0, Landroid/drm/OmaDrmHelper$3;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1296
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$3;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$3;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1300
    :cond_0
    return-void
.end method
