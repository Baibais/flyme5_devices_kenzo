.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 2885
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 2885
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 12
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 2908
    if-nez p1, :cond_0

    .line 2909
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2911
    :cond_0
    if-nez p4, :cond_1

    .line 2912
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2914
    :cond_1
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 2916
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_2

    .line 2918
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2922
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2929
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2930
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2932
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    # invokes: Lcom/android/server/power/PowerManagerService;->acquireWakeLockInternal(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->access$3200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2936
    return-void

    .line 2925
    .end local v7    # "uid":I
    .end local v8    # "pid":I
    .end local v10    # "ident":J
    :cond_3
    const/16 p5, 0x0

    goto :goto_0

    .line 2934
    .restart local v7    # "uid":I
    .restart local v8    # "pid":I
    .restart local v10    # "ident":J
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 2889
    if-gez p5, :cond_0

    .line 2890
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 2892
    :cond_0
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 2893
    return-void
.end method

.method public boostScreenBrightness(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3285
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3288
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3292
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3294
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->boostScreenBrightnessInternal(JI)V
    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3296
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3298
    return-void

    .line 3296
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3179
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3183
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->crashInternal(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3185
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3187
    return-void

    .line 3185
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3302
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3316
    :goto_0
    return-void

    .line 3310
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3312
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public goToSleep(JII)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3075
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3077
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    # invokes: Lcom/android/server/power/PowerManagerService;->goToSleepInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3079
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3081
    return-void

    .line 3079
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public isInteractive()Z
    .locals 3

    .prologue
    .line 3103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3105
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isInteractiveInternal()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isPowerSaveMode()Z
    .locals 3

    .prologue
    .line 3113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3115
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isLowPowerModeInternal()Z
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 2994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2996
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isWakeLockLevelSupportedInternal(I)Z
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$3500(Lcom/android/server/power/PowerManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 2998
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public nap(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3085
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3086
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3089
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3093
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3095
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->napInternal(JI)V
    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3097
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3099
    return-void

    .line 3097
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public powerHint(II)V
    .locals 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mSystemReady:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2903
    :goto_0
    return-void

    .line 2901
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2902
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->powerHintInternal(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3100(Lcom/android/server/power/PowerManagerService;II)V

    goto :goto_0
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3142
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    const-string v2, "recovery"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3144
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.RECOVERY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3149
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3151
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3153
    return-void

    .line 3151
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 2940
    if-nez p1, :cond_0

    .line 2941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2944
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2948
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2952
    return-void

    .line 2950
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 3271
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3276
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setAttentionLightInternal(ZI)V
    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3280
    return-void

    .line 3278
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setButtonLight(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 3358
    if-eqz p1, :cond_0

    .line 3359
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 3362
    :goto_0
    return-void

    .line 3361
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    .line 3123
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3127
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setLowPowerModeInternal(Z)Z
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStayOnSetting(I)V
    .locals 5
    .param p1, "val"    # I

    .prologue
    .line 3205
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3210
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3214
    return-void

    .line 3212
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .param p1, "adj"    # F

    .prologue
    .line 3255
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3260
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverrideInternal(F)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3262
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3264
    return-void

    .line 3262
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 3230
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3235
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->setTemporaryScreenBrightnessSettingOverrideInternal(I)V
    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3237
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3239
    return-void

    .line 3237
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3163
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3165
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3167
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3171
    return-void

    .line 3169
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateBlockedUids(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    const/16 v6, 0x3e8

    .line 3325
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 3356
    :goto_0
    return-void

    .line 3330
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3331
    if-eqz p2, :cond_4

    .line 3332
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3333
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 3334
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3335
    .local v1, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v1, :cond_1

    .line 3336
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v4, "*sync*"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v2, v6, :cond_2

    .line 3337
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    # invokes: Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V

    .line 3338
    add-int/lit8 v0, v0, -0x1

    .line 3333
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3344
    :cond_2
    iget v2, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    invoke-static {v2, p1, v1}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3345
    :cond_3
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mLock:Landroid/os/IBinder;

    iget v5, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    # invokes: Lcom/android/server/power/PowerManagerService;->releaseWakeLockInternal(Landroid/os/IBinder;I)V
    invoke-static {v2, v4, v5}, Lcom/android/server/power/PowerManagerService;->access$3300(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V

    .line 3346
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 3353
    .end local v0    # "index":I
    .end local v1    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mBlockedUids:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3355
    :cond_5
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 3
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .prologue
    .line 2956
    const/4 v1, 0x0

    .line 2958
    .local v1, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_0

    .line 2959
    new-instance v1, Landroid/os/WorkSource;

    .end local v1    # "ws":Landroid/os/WorkSource;
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 2962
    .restart local v1    # "ws":Landroid/os/WorkSource;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 2963
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 2962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2966
    .end local v0    # "i":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 2967
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2971
    if-nez p1, :cond_0

    .line 2972
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "lock must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2975
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2977
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2984
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2986
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updateWakeLockWorkSourceInternal(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->access$3400(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2988
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2990
    return-void

    .line 2980
    .end local v0    # "callingUid":I
    .end local v2    # "ident":J
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 2988
    .restart local v0    # "callingUid":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public userActivity(JII)V
    .locals 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3005
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USER_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3013
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3600(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v10, v2

    if-ltz v0, :cond_0

    .line 3015
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mLastWarningAboutUserActivityPermission:J
    invoke-static {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->access$3602(Lcom/android/server/power/PowerManagerService;J)J

    .line 3016
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    :cond_0
    monitor-exit v1

    .line 3037
    :goto_0
    return-void

    .line 3022
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3026
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 3027
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3030
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3031
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3033
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    # invokes: Lcom/android/server/power/PowerManagerService;->userActivityInternal(JIII)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3035
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public wakeUp(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3041
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3042
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3046
    :cond_0
    const-string v3, "sys.quickboot.enable"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 3047
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->isQuickBootCall()Z
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3048
    const-string v3, "PowerManagerService"

    const-string v4, "ignore wakeup request under QuickBoot"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    :goto_0
    return-void

    .line 3053
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3056
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3057
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3059
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->wakeUpInternal(JI)V
    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3061
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
