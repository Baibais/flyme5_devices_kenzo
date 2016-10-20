.class Lcom/android/server/LockSettingsService$3;
.super Ljava/util/TimerTask;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    const-string v0, "default_password"

    # setter for: Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 280
    return-void
.end method
