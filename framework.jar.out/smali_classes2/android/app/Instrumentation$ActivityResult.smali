.class public final Landroid/app/Instrumentation$ActivityResult;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResult"
.end annotation


# instance fields
.field private final mResultCode:I

.field private final mResultData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    iput p1, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    .line 1412
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    .line 1413
    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 1426
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityResult;->mResultData:Landroid/content/Intent;

    return-object v0
.end method
