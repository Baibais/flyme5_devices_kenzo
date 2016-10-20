.class public final Landroid/net/ZeroBalanceHelper;
.super Ljava/lang/Object;
.source "ZeroBalanceHelper.java"


# static fields
.field public static final BACKGROUND_DATA_BROADCAST:Ljava/lang/String; = "com.background.data.broadcast"

.field public static final BACKGROUND_DATA_PROPERTY:Ljava/lang/String; = "sys.background.data.disable"

.field public static final TAG:Ljava/lang/String; = "ZeroBalance"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getBgDataProperty()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    const-string/jumbo v0, "sys.background.data.disable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredRedirectURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    iget-object v1, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "redirectURL":Ljava/lang/String;
    const-string v1, "ZeroBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning the configured redirect URL   :   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-object v0
.end method

.method public setBgDataProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.background.data.broadcast"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
