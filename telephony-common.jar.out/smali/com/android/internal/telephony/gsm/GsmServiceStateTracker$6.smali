.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ShowRoamingWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 2295
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2298
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2299
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2300
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2301
    return-void
.end method
