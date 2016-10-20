.class final Landroid/drm/OmaDrmHelper$7;
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
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$okListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 1312
    iput-object p1, p0, Landroid/drm/OmaDrmHelper$7;->val$address:Ljava/lang/String;

    iput-object p2, p0, Landroid/drm/OmaDrmHelper$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Landroid/drm/OmaDrmHelper$7;->val$okListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1315
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v1, "i":Landroid/content/Intent;
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$address:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1318
    :try_start_0
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :goto_0
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$okListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_0

    .line 1331
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$okListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v3, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1333
    :cond_0
    return-void

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$context:Landroid/content/Context;

    const-string v4, "activity_not_found"

    invoke-static {v3, v4}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Landroid/drm/OmaDrmHelper$7;->val$context:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/drm/OmaDrmHelper$7;->val$address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
