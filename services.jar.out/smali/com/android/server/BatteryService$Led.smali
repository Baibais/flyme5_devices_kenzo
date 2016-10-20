.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# instance fields
.field private final mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private final mBatteryLowARGB:I

.field private final mBatteryMediumARGB:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 826
    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 828
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 830
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 832
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 834
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 836
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 838
    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 11

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v10, 0x1

    .line 844
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v3, v6, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 845
    .local v3, "level":I
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1100(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v6

    iget v4, v6, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 851
    .local v4, "status":I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargerTypeFile:Ljava/io/File;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 852
    .local v2, "fileReader":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 853
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 854
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 855
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 864
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    :goto_0
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 865
    if-ne v4, v8, :cond_0

    .line 867
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v6, v7}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 892
    :goto_1
    return-void

    .line 856
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 857
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "Unknown"

    .line 858
    .restart local v5    # "type":Ljava/lang/String;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failure in reading charger type"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 859
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "type":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 860
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Unknown"

    .line 861
    .restart local v5    # "type":Ljava/lang/String;
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failure in reading charger type"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 870
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v9, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v6, v7, v10, v8, v9}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 873
    :cond_1
    if-eq v4, v8, :cond_2

    if-ne v4, v9, :cond_6

    .line 875
    :cond_2
    if-eq v4, v9, :cond_3

    const/16 v6, 0x5a

    if-lt v3, v6, :cond_4

    .line 877
    :cond_3
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v6, v7}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 879
    :cond_4
    const-string v6, "USB_HVDCP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 881
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    iget v8, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v9, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    invoke-virtual {v6, v7, v10, v8, v9}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_1

    .line 885
    :cond_5
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v7, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v6, v7}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_1

    .line 890
    :cond_6
    iget-object v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v6}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_1
.end method
