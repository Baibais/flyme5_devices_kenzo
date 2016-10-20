.class final Landroid/drm/OmaDrmHelper$4;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1280
    iput-object p1, p0, Landroid/drm/OmaDrmHelper$4;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1285
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$4;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Landroid/drm/OmaDrmHelper$4;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1289
    :cond_0
    return-void
.end method
