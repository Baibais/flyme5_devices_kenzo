.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$1;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SCREENSHOT_FORCE_565:Z

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field public aBoostParamVal:[I

.field public aBoostTimeOut:I

.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDisplayId:I

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field public mIsAnimationBoostEnabled:Z

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field public mPerf:Lorg/codeaurora/Performance;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    .line 264
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)V
    .locals 4
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    .line 154
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    .line 155
    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 185
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 192
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 199
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 204
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 211
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 219
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 229
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 230
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 350
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 351
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 352
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 353
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 354
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 355
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 356
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 357
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    .line 362
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->aBoostParamVal:[I

    .line 365
    :cond_0
    return-void
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2511
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 2512
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2513
    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    if-eq v0, p1, :cond_0

    .line 2514
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2515
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v1, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2516
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adjustFocus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)V

    .line 2520
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 2521
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_1

    .line 2522
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustTopFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2525
    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 14
    .param p1, "resumeNext"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v9, 0x0

    .line 965
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 968
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    .line 969
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 970
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_6

    .line 972
    const/4 v7, 0x2

    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 1009
    :cond_0
    :goto_0
    iput-object v9, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 1012
    :cond_1
    if-eqz p1, :cond_2

    .line 1013
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .line 1014
    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1015
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1030
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    .line 1031
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1033
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_4

    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v7, v8, v12

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1035
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v8, v10

    .line 1037
    .local v2, "diff":J
    cmp-long v7, v2, v12

    if-lez v7, :cond_4

    .line 1038
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 1039
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 1040
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .line 1043
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_3

    .line 1044
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 1046
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    iput-wide v12, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1053
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 1054
    return-void

    .line 973
    :cond_6
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_b

    .line 975
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v7, :cond_7

    .line 976
    iput-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 977
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 981
    :cond_7
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v7, :cond_8

    .line 988
    const-string v7, "pause-config"

    invoke-virtual {p0, v1, v10, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto/16 :goto_0

    .line 989
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v7

    if-nez v7, :cond_0

    .line 992
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-gt v7, v8, :cond_9

    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v10, :cond_a

    .line 1000
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto/16 :goto_0

    .line 1002
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto/16 :goto_0

    .line 1007
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1017
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_c
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 1018
    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1019
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_d

    if-eqz v1, :cond_2

    if-eq v5, v1, :cond_2

    .line 1025
    :cond_d
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v6, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 1046
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1062
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1063
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1064
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1066
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 1068
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v1, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 1073
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    .line 1079
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1081
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1083
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1084
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1089
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    .line 1090
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 1095
    :goto_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 1097
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_2

    .line 1099
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 1101
    :cond_2
    return-void

    .line 1092
    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1936
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1937
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 1938
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .line 1939
    .local v0, "fromHome":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eq v3, p1, :cond_2

    .line 1940
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1941
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1942
    .local v2, "taskNdx":I
    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 1943
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1946
    .end local v2    # "taskNdx":I
    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 1956
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1958
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1959
    .restart local v2    # "taskNdx":I
    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1961
    :cond_3
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 1962
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget v3, v3, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1966
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1968
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1969
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 1970
    return-void

    .line 1946
    .end local v2    # "taskNdx":I
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_0

    :cond_7
    move v3, v5

    goto :goto_0

    .line 1953
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1
.end method

.method private isCurrentProfileLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    .line 371
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne p1, v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v1

    .line 372
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    aget v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isStackVisible()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1161
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    .line 1196
    :goto_0
    return v7

    .line 1165
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    .line 1166
    goto :goto_0

    .line 1174
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 1175
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    .line 1176
    .local v6, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    const/4 v5, 0x0

    .local v5, "taskNdx":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 1177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 1178
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1179
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1180
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1188
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v7

    if-nez v7, :cond_3

    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v7, v8

    .line 1190
    goto :goto_0

    .line 1179
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1176
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1174
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v5    # "taskNdx":I
    .end local v6    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_6
    move v7, v9

    .line 1196
    goto :goto_0
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 3644
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 3645
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    .line 3647
    .local v1, "strData":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3651
    return-void

    .line 3645
    .end local v1    # "strData":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3779
    const/4 v2, 0x0

    .line 3780
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 3781
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_0

    .line 3782
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3783
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3788
    :cond_0
    if-eqz p3, :cond_2

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v4, 0x2

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    const/4 v4, 0x3

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3792
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3794
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 3800
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 3801
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-nez p3, :cond_1

    move v5, v7

    :cond_1
    new-instance v6, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3810
    :goto_1
    if-eqz p3, :cond_3

    .line 3811
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3812
    iput-object v8, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3813
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3819
    :goto_2
    return v7

    .line 3788
    :cond_2
    const/16 v0, 0x7544

    goto :goto_0

    .line 3815
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3816
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 3806
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3054
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    .line 3055
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 3056
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 3062
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 3063
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3065
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3067
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3068
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3072
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3073
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3076
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3078
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)V

    .line 3080
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    .line 3082
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3083
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3084
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3367
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3371
    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 3372
    add-int/lit8 v0, v0, -0x1

    .line 3373
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3375
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    .line 3377
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3378
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3381
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3046
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3047
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3048
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3049
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3050
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 3051
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 23
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .line 2330
    const/4 v14, -0x1

    .line 2331
    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 2332
    .local v22, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 2334
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2335
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2336
    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    .line 2339
    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "i":I
    :goto_0
    if-le v12, v15, :cond_0

    .line 2340
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .line 2341
    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2428
    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    .line 2344
    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2345
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .line 2346
    .local v10, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .line 2348
    .local v9, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    .line 2355
    if-gez v14, :cond_2

    .line 2356
    move v14, v12

    .line 2339
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 2345
    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 2346
    .restart local v10    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 2358
    .restart local v9    # "allowTaskReparenting":Z
    :cond_5
    if-eqz p3, :cond_2

    if-eqz v9, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2372
    if-nez p4, :cond_6

    if-eqz v10, :cond_9

    .line 2373
    :cond_6
    if-ltz v14, :cond_7

    move/from16 v17, v14

    .line 2375
    .local v17, "start":I
    :goto_4
    move/from16 v16, v17

    .local v16, "srcPos":I
    :goto_5
    move/from16 v0, v16

    if-lt v0, v12, :cond_d

    .line 2376
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2377
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_8

    .line 2375
    :goto_6
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_7
    move/from16 v17, v12

    .line 2373
    goto :goto_4

    .line 2380
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    .line 2383
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_9
    if-gez p5, :cond_a

    .line 2384
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    .line 2388
    :cond_a
    if-ltz v14, :cond_b

    move/from16 v17, v14

    .line 2391
    .restart local v17    # "start":I
    :goto_7
    move/from16 v16, v17

    .restart local v16    # "srcPos":I
    :goto_8
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    .line 2392
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2393
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2394
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 2401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2391
    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_b
    move/from16 v17, v12

    .line 2388
    goto :goto_7

    .line 2403
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2412
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 2413
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 2414
    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 2415
    .local v19, "targetNdx":I
    if-lez v19, :cond_d

    .line 2416
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2417
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2418
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "replace"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2425
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    const/4 v14, -0x1

    goto/16 :goto_3
.end method

.method private setVisibile(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 1104
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1105
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1106
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    .line 1107
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1108
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 1109
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    .line 1107
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1111
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method private startLaunchTraces()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    .line 671
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 674
    :cond_0
    const-string v0, "launching"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 675
    const-string v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 676
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 679
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 680
    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 681
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    .line 683
    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3295
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3297
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3298
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 3299
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3303
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3304
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_1

    .line 3305
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3306
    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3309
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3313
    return-void

    .line 3311
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    const/4 v5, 0x1

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 908
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 910
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v0, :cond_1

    .line 913
    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const/16 v2, 0x753c

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v1, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    :cond_2
    const-string v1, "(none)"

    goto :goto_1
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x68

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 925
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_1

    .line 926
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    if-eqz p3, :cond_2

    .line 931
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 932
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 935
    :cond_2
    if-eqz p2, :cond_3

    .line 938
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 939
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 940
    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 941
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 943
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 946
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 947
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 948
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_4

    .line 949
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 951
    :cond_4
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 952
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto :goto_0

    .line 954
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_6

    .line 955
    const-string v0, "stop-config"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 956
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0

    .line 958
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4139
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 4140
    if-eqz p2, :cond_1

    .line 4141
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 4146
    :goto_0
    if-nez p3, :cond_0

    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_0

    .line 4148
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4152
    :cond_0
    :goto_1
    return-void

    .line 4143
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4144
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_0

    .line 4149
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    .line 710
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 711
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 712
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    .line 713
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 712
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 710
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 716
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 717
    const-string v3, "ActivityManager"

    const-string v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 720
    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3341
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3342
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3343
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 3344
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3345
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3346
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3348
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3349
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 8

    .prologue
    .line 1426
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 1427
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 1428
    .local v0, "aboveTop":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 1429
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1430
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_2

    .line 1431
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1432
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 1433
    if-ne v3, v5, :cond_0

    .line 1434
    const/4 v0, 0x0

    .line 1430
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1439
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    if-eqz v6, :cond_0

    .line 1441
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    .line 1442
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    goto :goto_2

    .line 1428
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1446
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 726
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    .line 730
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 733
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v2, :cond_0

    move v0, v1

    .line 739
    goto :goto_0
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2999
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 3000
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3002
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 3003
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3005
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3007
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3008
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3010
    if-eqz p3, :cond_2

    .line 3012
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3014
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3020
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3021
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3024
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_5

    .line 3025
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3026
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3027
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    .line 3028
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 3031
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3034
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    .line 3035
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3039
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3040
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-ne v3, p1, :cond_7

    .line 3041
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 3043
    :cond_7
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 3091
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 3092
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3093
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3094
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3095
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3097
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3099
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    .line 706
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 704
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    .line 3846
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3847
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    .line 3848
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3849
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 3850
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "close-sys"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3847
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3845
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3854
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method convertToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1385
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1387
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    .prologue
    .line 4128
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 4130
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    .line 4131
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3108
    const/4 v3, 0x0

    .line 3109
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .line 3110
    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 3111
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3112
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    .line 3113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3114
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    .line 3112
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3117
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    .line 3118
    const/4 v3, 0x1

    .line 3120
    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    .line 3123
    :cond_3
    if-eqz v3, :cond_0

    .line 3126
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3130
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3131
    const/4 v2, 0x1

    goto :goto_2

    .line 3110
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 3136
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    if-eqz v2, :cond_6

    .line 3137
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3139
    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 3205
    const/16 v6, 0x7542

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p3, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3209
    const/4 v3, 0x0

    .line 3211
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v5, v5}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3213
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_4

    .line 3215
    .local v1, "hadApp":Z
    :goto_0
    if-eqz v1, :cond_6

    .line 3216
    if-eqz p2, :cond_1

    .line 3217
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3218
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 3219
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 3220
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    .line 3223
    :cond_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3226
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3228
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v5, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 3229
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 3233
    :cond_1
    const/4 v4, 0x0

    .line 3237
    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, v7, v8, v9}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3251
    :cond_2
    :goto_1
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3260
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    .line 3263
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3264
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x66

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3265
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3285
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_2
    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3287
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    .line 3288
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3291
    :cond_3
    return v3

    .end local v1    # "hadApp":Z
    :cond_4
    move v1, v5

    .line 3213
    goto/16 :goto_0

    .line 3239
    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    .line 3244
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    .line 3245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceptionInScheduleDestroy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3246
    const/4 v3, 0x1

    .line 3247
    const/4 v4, 0x1

    goto :goto_1

    .line 3268
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3270
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .line 3274
    .end local v4    # "skipDestroy":Z
    :cond_6
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_7

    .line 3275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hadNoApp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3276
    const/4 v3, 0x1

    goto :goto_2

    .line 3279
    :cond_7
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3281
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .line 4009
    const/4 v12, 0x0

    .line 4010
    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_2

    .line 4011
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .line 4012
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string v3, "    "

    const-string v4, "Hist"

    const/4 v5, 0x1

    if-nez p3, :cond_1

    const/4 v6, 0x1

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .line 4016
    if-eqz v12, :cond_0

    .line 4017
    const/16 p7, 0x0

    .line 4010
    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto :goto_0

    .line 4012
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 4020
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 12
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 1204
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    .line 1205
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v9, v8, :cond_3

    .line 1213
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1214
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_2

    .line 1216
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1217
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1219
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1224
    :cond_3
    const/4 v0, 0x1

    .line 1225
    .local v0, "aboveTop":Z
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isStackVisible()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v3, 0x1

    .line 1227
    .local v3, "behindFullscreen":Z
    :goto_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_2
    if-ltz v7, :cond_17

    .line 1228
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 1229
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1230
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "activityNdx":I
    :goto_3
    if-ltz v2, :cond_16

    .line 1231
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v2, v9, :cond_6

    .line 1230
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1225
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v3    # "behindFullscreen":Z
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "taskNdx":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 1234
    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "activityNdx":I
    .restart local v3    # "behindFullscreen":Z
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "taskNdx":I
    :cond_6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1235
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v9, :cond_4

    .line 1238
    if-eqz v0, :cond_7

    if-ne v5, v8, :cond_4

    .line 1241
    :cond_7
    const/4 v0, 0x0

    .line 1244
    if-eqz v3, :cond_8

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_13

    .line 1251
    :cond_8
    if-eq v5, p1, :cond_9

    .line 1252
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 1255
    :cond_9
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_a

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_f

    .line 1260
    :cond_a
    if-eq v5, p1, :cond_b

    .line 1261
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v9, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 1263
    :cond_b
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_c

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v9, :cond_d

    .line 1266
    :cond_c
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1268
    :cond_d
    if-eq v5, p1, :cond_e

    .line 1269
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1313
    :cond_e
    :goto_5
    iget v9, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p2, v9

    .line 1315
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v9, :cond_12

    .line 1318
    const/4 v3, 0x1

    goto :goto_4

    .line 1272
    :cond_f
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_10

    .line 1276
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1278
    :try_start_0
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v9, :cond_e

    .line 1279
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1282
    :catch_0
    move-exception v9

    goto :goto_5

    .line 1287
    :cond_10
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1288
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v9, v10, :cond_e

    if-eq v5, p1, :cond_e

    .line 1294
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_11

    .line 1295
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1296
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    :cond_11
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1299
    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1300
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1301
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 1302
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1303
    :catch_1
    move-exception v4

    .line 1306
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception thrown making visibile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1319
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v9

    if-nez v9, :cond_4

    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1321
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1330
    :cond_13
    iget-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v9, :cond_4

    .line 1333
    const/4 v9, 0x0

    :try_start_2
    invoke-direct {p0, v5, v9}, Lcom/android/server/am/ActivityStack;->setVisibile(Lcom/android/server/am/ActivityRecord;Z)V

    .line 1334
    sget-object v9, Lcom/android/server/am/ActivityStack$1;->$SwitchMap$com$android$server$am$ActivityStack$ActivityState:[I

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    .line 1337
    :pswitch_0
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_4

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_4

    .line 1340
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v10, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 1363
    :catch_2
    move-exception v4

    .line 1366
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception thrown making hidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 1350
    .end local v4    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-ne v9, v5, :cond_14

    .line 1351
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources()V

    goto/16 :goto_4

    .line 1353
    :cond_14
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1354
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :cond_15
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 1227
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_16
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_2

    .line 1376
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1379
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_0

    .line 1334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3662
    iget-boolean v5, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v5, :cond_1

    .line 3774
    :cond_0
    :goto_0
    return v3

    .line 3673
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 3674
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v5, v1, :cond_2

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 3681
    :cond_2
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_3

    .line 3684
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 3690
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3691
    .local v2, "oldConfig":Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3697
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3698
    .local v0, "changes":I
    if-nez v0, :cond_4

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_0

    .line 3706
    :cond_4
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_5

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_6

    .line 3709
    :cond_5
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 3710
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    goto :goto_0

    .line 3721
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v5

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v0

    if-nez v5, :cond_7

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v5, :cond_c

    .line 3723
    :cond_7
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v5, v0

    iput v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3724
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3725
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 3726
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v5, :cond_9

    .line 3729
    :cond_8
    const-string v5, "config"

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    :goto_1
    move v3, v4

    .line 3756
    goto :goto_0

    .line 3730
    :cond_9
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_a

    .line 3736
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    goto :goto_0

    .line 3738
    :cond_a
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_b

    .line 3745
    iget v5, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3746
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 3750
    :cond_b
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3751
    iput v4, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 3764
    :cond_c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_d

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_d

    .line 3767
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v6}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3772
    :cond_d
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto/16 :goto_0

    .line 3768
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v7, 0x0

    .line 601
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 602
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 603
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 607
    .local v6, "userId":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    .line 608
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 609
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget v8, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v3, v7

    .line 624
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_1
    return-object v3

    .line 612
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 613
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 614
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 615
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v8, :cond_3

    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v8, v6, :cond_1

    .line 613
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 607
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object v3, v7

    .line 624
    goto :goto_1
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v12, 0x0

    .line 1116
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1117
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    if-nez v8, :cond_1

    .line 1155
    :cond_0
    :goto_0
    return-object v12

    .line 1121
    :cond_1
    iget-object v6, v8, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1122
    .local v6, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_0

    .line 1126
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 1128
    .local v7, "stackNdx":I
    iget-object v10, v6, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1129
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 1131
    .local v9, "taskNdx":I
    iget-object v0, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1132
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    add-int/lit8 v2, v11, 0x1

    .line 1134
    .local v2, "activityNdx":I
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1135
    .local v4, "numStacks":I
    :goto_1
    if-ge v7, v4, :cond_0

    .line 1136
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    iget-object v10, v11, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1137
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1138
    .local v5, "numTasks":I
    :goto_2
    if-ge v9, v5, :cond_5

    .line 1139
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1140
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1141
    .local v3, "numActivities":I
    :goto_3
    if-ge v2, v3, :cond_4

    .line 1142
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1143
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v11, :cond_3

    .line 1144
    iget-boolean v11, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v11, :cond_2

    move-object v1, v12

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object v12, v1

    goto :goto_0

    .line 1146
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1147
    goto :goto_3

    .line 1148
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    .line 1149
    add-int/lit8 v9, v9, 0x1

    .line 1150
    goto :goto_2

    .line 1151
    .end local v3    # "numActivities":I
    :cond_5
    const/4 v9, 0x0

    .line 1152
    add-int/lit8 v7, v7, 0x1

    .line 1153
    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 16
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 516
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 517
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 518
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 519
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 520
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 523
    .local v13, "userId":I
    if-eqz v5, :cond_2

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    and-int v6, v14, v15

    .line 525
    .local v6, "isDocument":Z
    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 528
    .local v3, "documentData":Landroid/net/Uri;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .local v12, "taskNdx":I
    :goto_2
    if-ltz v12, :cond_a

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .line 530
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_4

    .line 528
    :cond_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 523
    .end local v3    # "documentData":Landroid/net/Uri;
    .end local v6    # "isDocument":Z
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 525
    .restart local v6    # "isDocument":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 535
    .restart local v3    # "documentData":Landroid/net/Uri;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "taskNdx":I
    :cond_4
    iget v14, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v14, v13, :cond_1

    .line 540
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 541
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    iget-boolean v14, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_1

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v14, v13, :cond_1

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    .line 547
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 548
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 551
    .local v1, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 552
    const/4 v11, 0x1

    .line 553
    .local v11, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 566
    .local v9, "taskDocumentData":Landroid/net/Uri;
    :goto_3
    if-nez v6, :cond_8

    if-nez v11, :cond_8

    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 567
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 592
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_5
    :goto_4
    return-object v7

    .line 554
    .restart local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 555
    const/4 v11, 0x1

    .line 556
    .restart local v11    # "taskIsDocument":Z
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .restart local v9    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    .line 558
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v11    # "taskIsDocument":Z
    :cond_7
    const/4 v11, 0x0

    .line 559
    .restart local v11    # "taskIsDocument":Z
    const/4 v9, 0x0

    .restart local v9    # "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    .line 571
    :cond_8
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 579
    :cond_9
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_4

    .line 592
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_4
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v5, 0x1

    .line 2676
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2677
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    .line 2678
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2679
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2684
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    .line 2682
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "request-affinity"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2677
    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 2725
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    .line 2726
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate finish request for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    const/4 v5, 0x0

    .line 2783
    :goto_0
    return v5

    .line 2730
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 2731
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2732
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2735
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2736
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2737
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_1

    .line 2738
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2739
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 2743
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2744
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2748
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 2750
    const-string v5, "finishActivity"

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2752
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    .line 2754
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, p1, :cond_6

    .line 2755
    if-gtz v2, :cond_4

    const/4 v1, 0x1

    .line 2758
    .local v1, "endTask":Z
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_5

    const/16 v5, 0x9

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2763
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2765
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_2

    .line 2768
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    .line 2771
    :cond_2
    if-eqz v1, :cond_3

    .line 2772
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 2783
    .end local v1    # "endTask":Z
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2755
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 2758
    .restart local v1    # "endTask":Z
    :cond_5
    const/4 v5, 0x7

    goto :goto_2

    .line 2774
    .end local v1    # "endTask":Z
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_3

    .line 2778
    const/4 v5, 0x1

    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 2689
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2690
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    .line 2694
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    .line 2695
    if-eqz p3, :cond_0

    .line 2696
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setContentUserHint(I)V

    .line 2699
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    .line 2700
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2704
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2706
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2713
    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2714
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 2715
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2716
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2717
    return-void
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2854
    const/4 v2, 0x1

    .line 2855
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 2856
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2857
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 2858
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2859
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    .line 2860
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 2857
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2863
    :cond_0
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 2855
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2867
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    if-eqz v2, :cond_3

    .line 2868
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 2870
    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2794
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_4

    .line 2795
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2796
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2797
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v4, :cond_3

    .line 2803
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2810
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2811
    if-eqz p3, :cond_2

    .line 2812
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2850
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_1
    return-object p1

    .line 2805
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    goto :goto_0

    .line 2818
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2819
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2820
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2821
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_5

    .line 2822
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2824
    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2826
    .local v1, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2828
    if-eqz p2, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v3, :cond_6

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v3, :cond_8

    .line 2833
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishing()V

    .line 2834
    const-string v3, "finish-imm"

    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 2835
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_7

    .line 2836
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2841
    :cond_7
    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 2847
    .end local v0    # "activityRemoved":Z
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2849
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 2600
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_4

    .line 2601
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2602
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 2603
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2604
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_2

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_2

    .line 2605
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2607
    :cond_1
    const/4 v3, 0x0

    const-string v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2602
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 2600
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 2613
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2614
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2617
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2618
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_4

    .line 2621
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2624
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 2625
    .local v6, "activityNdx":I
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2629
    add-int/lit8 v6, v6, -0x1

    .line 2630
    if-gez v6, :cond_1

    .line 2632
    :cond_0
    add-int/lit8 v7, v7, -0x1

    .line 2633
    if-gez v7, :cond_5

    .line 2639
    :cond_1
    :goto_0
    if-ltz v6, :cond_4

    .line 2640
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2641
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_2

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_4

    .line 2644
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_4

    .line 2645
    :cond_3
    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity 2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    const-string v4, "crashed"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2652
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_4
    return-void

    .line 2636
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 2637
    if-ltz v6, :cond_0

    goto :goto_0
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    const/4 v2, 0x0

    .line 2655
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 2656
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .line 2657
    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_2

    .line 2658
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 2659
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v8, :cond_1

    .line 2660
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 2661
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2662
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    .line 2663
    const/4 v3, 0x0

    const-string v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2665
    const/4 v7, 0x1

    .line 2660
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2657
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 2670
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz v7, :cond_3

    .line 2671
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2673
    :cond_3
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 3857
    const/4 v9, 0x0

    .line 3858
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .line 3859
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .line 3860
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_d

    .line 3861
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3862
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3863
    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_c

    .line 3864
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3865
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_5

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_5

    :cond_0
    const/4 v13, 0x1

    .line 3867
    .local v13, "samePackage":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p4

    if-eq v0, v1, :cond_1

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_4

    :cond_1
    if-nez v13, :cond_2

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v11, :cond_4

    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    if-nez p3, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-nez v1, :cond_4

    .line 3870
    :cond_3
    if-nez p2, :cond_7

    .line 3871
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_6

    .line 3863
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3865
    .end local v13    # "samePackage":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 3876
    .restart local v13    # "samePackage":Z
    :cond_6
    const/4 v1, 0x1

    .line 3904
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    .end local v13    # "samePackage":Z
    :goto_4
    return v1

    .line 3878
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v8    # "activityNdx":I
    .restart local v12    # "numActivities":I
    .restart local v13    # "samePackage":Z
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3879
    if-eqz v10, :cond_8

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3880
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3883
    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 3886
    :cond_9
    const/4 v9, 0x1

    .line 3887
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Force finishing activity 3 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3888
    if-eqz v13, :cond_b

    .line 3889
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_a

    .line 3890
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 3892
    :cond_a
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3894
    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3895
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "force-stop"

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3898
    add-int/lit8 v12, v12, -0x1

    .line 3899
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 3860
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "samePackage":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_d
    move v1, v9

    .line 3904
    goto :goto_4
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4024
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4026
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string v8, "all"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4027
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_1

    .line 4028
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4027
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 4030
    .end local v6    # "taskNdx":I
    :cond_0
    const-string v8, "top"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4031
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 4032
    .local v7, "top":I
    if-ltz v7, :cond_1

    .line 4033
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v2, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4034
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 4035
    .local v3, "listTop":I
    if-ltz v3, :cond_1

    .line 4036
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4052
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    .line 4040
    :cond_2
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 4041
    .local v4, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 4043
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    .line 4044
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 4045
    .local v5, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4046
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4043
    .end local v5    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method public getStackId()I
    .locals 1

    .prologue
    .line 4155
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZ)V
    .locals 12
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 3908
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "taskNdx":I
    :goto_0
    if-ltz v7, :cond_8

    .line 3909
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3910
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 3911
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v8, 0x0

    .line 3912
    .local v8, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v3, 0x0

    .line 3913
    .local v3, "numActivities":I
    const/4 v4, 0x0

    .line 3914
    .local v4, "numRunning":I
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3915
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3908
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 3918
    :cond_1
    if-nez p3, :cond_2

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v9

    if-nez v9, :cond_2

    iget v9, v6, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    if-ne v9, p2, :cond_0

    .line 3921
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v1, v9, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_6

    .line 3922
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 3925
    .restart local v5    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v8, :cond_3

    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_4

    .line 3926
    :cond_3
    move-object v8, v5

    .line 3927
    const/4 v4, 0x0

    move v3, v4

    .line 3931
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 3932
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_5

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v9, :cond_5

    .line 3933
    add-int/lit8 v4, v4, 0x1

    .line 3921
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 3941
    :cond_6
    new-instance v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 3942
    .local v2, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 3943
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3944
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3945
    iget-wide v10, v6, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v10, v2, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 3947
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_7

    .line 3948
    iget-object v9, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v9, v9, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v9, v2, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    .line 3950
    :cond_7
    iput v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    .line 3951
    iput v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    .line 3954
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3956
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "numActivities":I
    .end local v4    # "numRunning":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .line 3362
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method goToSleep()V
    .locals 6

    .prologue
    .line 743
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 747
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    .line 748
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 749
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 750
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 751
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    .line 752
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 749
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 747
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 756
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v7, 0x0

    .line 3992
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 3993
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3994
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 3995
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3996
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    .line 3997
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity 4 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4001
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 3994
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3992
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4005
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v1, 0x0

    .line 3978
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    .line 3981
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 3983
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    .line 3984
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3985
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 3988
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    .prologue
    .line 3352
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isHomeStack()Z
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 466
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 467
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    .line 468
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 469
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 470
    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eq v2, p0, :cond_0

    const-string v2, "ActivityManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isOnHomeDisplay()Z
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 657
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 661
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 662
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 663
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 664
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 665
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 668
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 5
    .param p1, "homeStackTaskType"    # I

    .prologue
    .line 3496
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 3497
    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3498
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 3499
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v3, p1, :cond_1

    .line 3502
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3503
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3504
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3505
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 3509
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void

    .line 3497
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 14
    .param p1, "taskId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 3566
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .line 3567
    .local v7, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v7, :cond_1

    .line 3568
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "moveTaskToBack: bad taskId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3639
    :cond_0
    :goto_0
    return v8

    .line 3572
    :cond_1
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "moveTaskToBack: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3574
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v7}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 3579
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v11, :cond_3

    .line 3580
    invoke-virtual {p0, v10, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3581
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_2

    .line 3582
    invoke-virtual {p0, v10, v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3584
    :cond_2
    if-eqz v2, :cond_3

    .line 3586
    const/4 v1, 0x1

    .line 3588
    .local v1, "moveOK":Z
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v12, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v11, v12}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3593
    :goto_1
    if-eqz v1, :cond_0

    .line 3602
    .end local v1    # "moveOK":Z
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3603
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3604
    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 3608
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3609
    .local v3, "numTasks":I
    add-int/lit8 v5, v3, -0x1

    .local v5, "taskNdx":I
    :goto_2
    if-lt v5, v9, :cond_4

    .line 3610
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 3611
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3620
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v12, 0xb

    invoke-virtual {v11, v12, v8}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3621
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 3627
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 3628
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :goto_3
    if-ne v4, v7, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    if-gt v3, v9, :cond_b

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 3629
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-eqz v9, :cond_0

    .line 3633
    :cond_7
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    .line 3634
    .local v6, "taskToReturnTo":I
    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3635
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v9, "moveTaskToBack"

    invoke-virtual {v8, v6, v10, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    .line 3589
    .end local v3    # "numTasks":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    .end local v5    # "taskNdx":I
    .end local v6    # "taskToReturnTo":I
    .restart local v1    # "moveOK":Z
    .restart local v2    # "next":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .line 3590
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 3591
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_1

    .line 3614
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "moveOK":Z
    .end local v2    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "numTasks":I
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "taskNdx":I
    :cond_8
    if-ne v5, v9, :cond_9

    .line 3616
    invoke-virtual {v4, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 3609
    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    move-object v4, v10

    .line 3627
    goto :goto_3

    .line 3638
    .restart local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    move v8, v9

    .line 3639
    goto/16 :goto_0
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "source"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/high16 v5, 0x10000

    const/16 v4, 0xa

    const/4 v6, 0x0

    .line 3515
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3516
    .local v1, "numTasks":I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3517
    .local v0, "index":I
    if-eqz v1, :cond_0

    if-gez v0, :cond_2

    .line 3519
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 3521
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3552
    :goto_0
    return-void

    .line 3523
    :cond_1
    invoke-virtual {p0, v4, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 3530
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 3531
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3534
    if-eqz p2, :cond_4

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_4

    .line 3536
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3537
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3538
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_3

    .line 3539
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3541
    :cond_3
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 3546
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 3547
    const/16 v3, 0x7532

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 3543
    :cond_4
    invoke-virtual {p0, v4, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    goto :goto_1
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 498
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 501
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    .line 502
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 505
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method final navigateUpToLocked(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 2911
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v39

    .line 2912
    .local v39, "srec":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v41, v0

    .line 2913
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 2914
    .local v23, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v40

    .line 2915
    .local v40, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v40, :cond_1

    .line 2916
    :cond_0
    const/16 v29, 0x0

    .line 2988
    :goto_0
    return v29

    .line 2918
    :cond_1
    add-int/lit8 v28, v40, -0x1

    .line 2919
    .local v28, "finishTo":I
    if-gez v28, :cond_3

    const/16 v34, 0x0

    .line 2920
    .local v34, "parent":Lcom/android/server/am/ActivityRecord;
    :goto_1
    const/16 v29, 0x0

    .line 2921
    .local v29, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    .line 2922
    .local v25, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_2

    if-eqz v25, :cond_2

    .line 2923
    move/from16 v30, v28

    .local v30, "i":I
    :goto_2
    if-ltz v30, :cond_2

    .line 2924
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 2925
    .local v36, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v36

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2927
    move/from16 v28, v30

    .line 2928
    move-object/from16 v34, v36

    .line 2929
    const/16 v29, 0x1

    .line 2935
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v24, v0

    .line 2936
    .local v24, "controller":Landroid/app/IActivityController;
    if-eqz v24, :cond_5

    .line 2937
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v31

    .line 2938
    .local v31, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_5

    .line 2940
    const/16 v38, 0x1

    .line 2942
    .local v38, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    .line 2948
    :goto_3
    if-nez v38, :cond_5

    .line 2949
    const/16 v29, 0x0

    goto :goto_0

    .line 2919
    .end local v24    # "controller":Landroid/app/IActivityController;
    .end local v25    # "dest":Landroid/content/ComponentName;
    .end local v29    # "foundParentInTask":Z
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_3
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v34, v2

    goto :goto_1

    .line 2923
    .restart local v25    # "dest":Landroid/content/ComponentName;
    .restart local v29    # "foundParentInTask":Z
    .restart local v30    # "i":I
    .restart local v34    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v30, v30, -0x1

    goto :goto_2

    .line 2943
    .end local v30    # "i":I
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v24    # "controller":Landroid/app/IActivityController;
    .restart local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v38    # "resumeOK":Z
    :catch_0
    move-exception v27

    .line 2944
    .local v27, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    .line 2945
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_3

    .line 2953
    .end local v27    # "e":Landroid/os/RemoteException;
    .end local v31    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v38    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v32

    .line 2954
    .local v32, "origId":J
    move/from16 v30, v40

    .restart local v30    # "i":I
    :goto_4
    move/from16 v0, v30

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 2955
    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 2956
    .restart local v36    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2958
    const/16 p3, 0x0

    .line 2959
    const/16 p4, 0x0

    .line 2954
    add-int/lit8 v30, v30, -0x1

    goto :goto_4

    .line 2962
    .end local v36    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    if-eqz v34, :cond_8

    if-eqz v29, :cond_8

    .line 2963
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v35, v0

    .line 2964
    .local v35, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 2965
    .local v26, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v35

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x4000000

    and-int v2, v2, v26

    if-eqz v2, :cond_9

    .line 2969
    :cond_7
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2987
    .end local v26    # "destIntentFlags":I
    .end local v35    # "parentLaunchMode":I
    :cond_8
    :goto_5
    invoke-static/range {v32 .. v33}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 2973
    .restart local v26    # "destIntentFlags":I
    .restart local v35    # "parentLaunchMode":I
    :cond_9
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v39

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2975
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v34

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    move-object/from16 v0, v34

    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v34

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    const/4 v15, -0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v37

    .line 2979
    .local v37, "res":I
    if-nez v37, :cond_a

    const/16 v29, 0x1

    .line 2983
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :goto_6
    move-object/from16 v0, v34

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string v11, "navigate-up"

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_5

    .line 2979
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v37    # "res":I
    :cond_a
    const/16 v29, 0x0

    goto :goto_6

    .line 2980
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v37    # "res":I
    :catch_1
    move-exception v27

    .line 2981
    .restart local v27    # "e":Landroid/os/RemoteException;
    const/16 v29, 0x0

    goto :goto_6
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x0

    .line 1398
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    .line 1399
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1405
    .local v0, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .line 1406
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1407
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1409
    if-eqz v0, :cond_2

    .line 1410
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 1411
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    .line 1413
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v2, v3, v1}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    .end local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    .line 1415
    .restart local v0    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method numActivities()I
    .locals 3

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 343
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 346
    :cond_0
    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 379
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method releaseBackgroundResources()V
    .locals 5

    .prologue
    const/16 v4, 0x6b

    .line 3316
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3318
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3319
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 3338
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    return-void

    .line 3327
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_2

    .line 3329
    :try_start_0
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 3334
    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseBackgroundResources: activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    goto :goto_0

    .line 3330
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    .line 3155
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .line 3156
    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_0

    .line 3157
    const/4 v4, 0x1

    .line 3159
    :cond_0
    const/4 v5, 0x0

    .line 3160
    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    if-lez v4, :cond_6

    .line 3161
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 3162
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 3160
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3166
    :cond_2
    const/4 v3, 0x0

    .line 3167
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3168
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    .line 3169
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3170
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3174
    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    .line 3175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_3

    .line 3177
    add-int/lit8 v0, v0, -0x1

    .line 3179
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 3168
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3182
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-lez v3, :cond_1

    .line 3183
    add-int/2addr v5, v3

    .line 3184
    add-int/lit8 v4, v4, -0x1

    .line 3185
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_1

    .line 3187
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3192
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    return v5
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3384
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v8, "mLRUActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3385
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v8, "mStoppingActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3387
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v8, "mGoingToSleepActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3389
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v8, "mWaitingVisibleActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3391
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v8, "mFinishingActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 3394
    const/4 v2, 0x0

    .line 3397
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .line 3400
    .local v3, "i":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_a

    .line 3401
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3402
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_9

    .line 3403
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 3404
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    .line 3407
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, p1, :cond_4

    .line 3409
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_0

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    if-eqz v7, :cond_1

    :cond_0
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_5

    .line 3412
    :cond_1
    const/4 v5, 0x1

    .line 3422
    .local v5, "remove":Z
    :goto_2
    if-eqz v5, :cond_7

    .line 3432
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_2

    .line 3433
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Force removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": app died, no saved state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    const/16 v7, 0x7531

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v10, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "proc died without state saved"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3438
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_2

    .line 3439
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3442
    :cond_2
    const-string v7, "appDied"

    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 3463
    :cond_3
    :goto_3
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 3402
    .end local v5    # "remove":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 3413
    :cond_5
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_6

    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    .line 3417
    const/4 v5, 0x1

    .restart local v5    # "remove":Z
    goto/16 :goto_2

    .line 3420
    .end local v5    # "remove":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "remove":Z
    goto/16 :goto_2

    .line 3449
    :cond_7
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_8

    .line 3450
    const/4 v2, 0x1

    .line 3454
    :cond_8
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3455
    const/4 v7, 0x0

    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3456
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_3

    .line 3459
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    .line 3400
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 3468
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_a
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4078
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->endLockTaskModeIfTaskEnding(Lcom/android/server/am/TaskRecord;)V

    .line 4079
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 4080
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4081
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, p1, :cond_0

    .line 4082
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 4085
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4086
    .local v3, "taskNdx":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 4087
    .local v4, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-eqz v7, :cond_1

    if-ge v3, v4, :cond_1

    .line 4088
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 4089
    .local v1, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4090
    invoke-virtual {v1, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .line 4093
    .end local v1    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4094
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    .line 4096
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4097
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v7, :cond_8

    move v0, v5

    .line 4098
    .local v0, "isVoiceSession":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4100
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v7, v8, v9}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4104
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v0, :cond_4

    .line 4107
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4108
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 4112
    .end local v0    # "isVoiceSession":Z
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4114
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4115
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v8

    if-nez v8, :cond_9

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " leftTaskHistoryEmpty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    .line 4117
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 4118
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4119
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4121
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 4123
    :cond_7
    return-void

    :cond_8
    move v0, v6

    .line 4097
    goto :goto_0

    :cond_9
    move v5, v6

    .line 4115
    goto :goto_2

    .line 4101
    .restart local v0    # "isVoiceSession":Z
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .line 2586
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2591
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    .line 2592
    const/4 v0, 0x0

    .line 2596
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2595
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2596
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 28
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .line 2171
    const/16 v27, 0x0

    .line 2173
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v20, -0x1

    .line 2174
    .local v20, "replyChainEnd":I
    const/4 v12, 0x1

    .line 2178
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2179
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2180
    .local v19, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v21

    .line 2181
    .local v21, "rootActivityNdx":I
    add-int/lit8 v17, v19, -0x1

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 2182
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/am/ActivityRecord;

    .line 2183
    .local v24, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v24

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .line 2317
    .end local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v27

    .line 2186
    .restart local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v16, v0

    .line 2187
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    if-eqz v2, :cond_3

    const/4 v15, 0x1

    .line 2189
    .local v15, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v16, 0x40

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    .line 2191
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 2194
    .local v13, "clearWhenTaskReset":Z
    :goto_3
    if-nez v15, :cond_6

    if-nez v13, :cond_6

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    .line 2203
    if-gez v20, :cond_2

    .line 2204
    move/from16 v20, v17

    .line 2181
    :cond_2
    :goto_4
    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 2187
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v15    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 2189
    .restart local v15    # "finishOnTaskLaunch":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 2191
    .restart local v10    # "allowTaskReparenting":Z
    :cond_5
    const/4 v13, 0x0

    goto :goto_3

    .line 2206
    .restart local v13    # "clearWhenTaskReset":Z
    :cond_6
    if-nez v15, :cond_d

    if-nez v13, :cond_d

    if-eqz v10, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    move-object v11, v2

    .line 2221
    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-eqz v11, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2226
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 2237
    .local v25, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_6
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v26, v0

    .line 2238
    .local v26, "targetTaskId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 2240
    move/from16 v18, v12

    .line 2241
    .local v18, "noOptions":Z
    if-gez v20, :cond_9

    move/from16 v23, v17

    .line 2242
    .local v23, "start":I
    :goto_7
    move/from16 v22, v23

    .local v22, "srcPos":I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    .line 2243
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2244
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_a

    .line 2242
    :goto_9
    add-int/lit8 v22, v22, -0x1

    goto :goto_8

    .line 2218
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_7
    const/4 v11, 0x0

    goto :goto_5

    .line 2230
    .restart local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v25

    .line 2232
    .restart local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v25

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_6

    .restart local v18    # "noOptions":Z
    .restart local v26    # "targetTaskId":I
    :cond_9
    move/from16 v23, v20

    .line 2241
    goto :goto_7

    .line 2248
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    .restart local v23    # "start":I
    :cond_a
    const/4 v12, 0x0

    .line 2249
    if-eqz v18, :cond_b

    if-nez v27, :cond_b

    .line 2250
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 2251
    if-eqz v27, :cond_b

    .line 2252
    const/16 v18, 0x0

    .line 2260
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2261
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move/from16 v0, v26

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_9

    .line 2266
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    .line 2271
    const/16 v20, -0x1

    .line 2272
    goto/16 :goto_4

    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_d
    if-nez p2, :cond_e

    if-nez v15, :cond_e

    if-eqz v13, :cond_15

    .line 2278
    :cond_e
    if-eqz v13, :cond_10

    .line 2282
    add-int/lit8 v14, v19, -0x1

    .line 2288
    .local v14, "end":I
    :goto_a
    move/from16 v18, v12

    .line 2289
    .restart local v18    # "noOptions":Z
    move/from16 v22, v17

    .restart local v22    # "srcPos":I
    :goto_b
    move/from16 v0, v22

    if-gt v0, v14, :cond_14

    .line 2290
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2291
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_12

    .line 2289
    :cond_f
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    .line 2283
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_10
    if-gez v20, :cond_11

    .line 2284
    move/from16 v14, v17

    .restart local v14    # "end":I
    goto :goto_a

    .line 2286
    .end local v14    # "end":I
    :cond_11
    move/from16 v14, v20

    .restart local v14    # "end":I
    goto :goto_a

    .line 2294
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "noOptions":Z
    .restart local v22    # "srcPos":I
    :cond_12
    const/4 v12, 0x0

    .line 2295
    if-eqz v18, :cond_13

    if-nez v27, :cond_13

    .line 2296
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 2297
    if-eqz v27, :cond_13

    .line 2298
    const/16 v18, 0x0

    .line 2303
    :cond_13
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "reset"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2304
    add-int/lit8 v14, v14, -0x1

    .line 2305
    add-int/lit8 v22, v22, -0x1

    goto :goto_c

    .line 2308
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_14
    const/16 v20, -0x1

    .line 2309
    goto/16 :goto_4

    .line 2313
    .end local v14    # "end":I
    .end local v18    # "noOptions":Z
    .end local v22    # "srcPos":I
    :cond_15
    const/16 v20, -0x1

    goto/16 :goto_4
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2433
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .line 2442
    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2446
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .line 2449
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .line 2452
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .line 2454
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 2455
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 2457
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_1

    .line 2458
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 2459
    const/4 v3, 0x1

    .line 2454
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2433
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v4    # "forceReset":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    .restart local v9    # "topOptions":Landroid/app/ActivityOptions;
    :cond_1
    move-object v0, p0

    .line 2461
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    .line 2466
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2468
    .local v7, "taskNdx":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    .line 2469
    if-nez p1, :cond_3

    if-gez v8, :cond_6

    .line 2471
    :cond_3
    if-eqz v9, :cond_4

    .line 2474
    if-eqz p1, :cond_5

    .line 2475
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2481
    :cond_4
    :goto_4
    return-object p1

    .line 2477
    :cond_5
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4

    :cond_6
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4056
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 4060
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 4061
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4062
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    .line 4063
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 4064
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4065
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 4066
    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    .line 4067
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 4062
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 4060
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4074
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 36
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_0

    .line 1487
    const/4 v3, 0x0

    .line 1930
    :goto_0
    return v3

    .line 1490
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v29, v0

    .line 1491
    .local v29, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v29, :cond_1

    move-object/from16 v0, v29

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1495
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1498
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    .line 1501
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 1505
    .local v24, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v35, v0

    .line 1506
    .local v35, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1508
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v31, v0

    .line 1509
    .local v31, "prevTask":Lcom/android/server/am/TaskRecord;
    :goto_1
    if-nez v24, :cond_8

    .line 1512
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1516
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    const/16 v33, 0x1

    .line 1518
    .local v33, "returnTaskType":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "noMoreActivities"

    move/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    .line 1508
    .end local v31    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v33    # "returnTaskType":I
    :cond_5
    const/16 v31, 0x0

    goto :goto_1

    .line 1516
    .restart local v31    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_6
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v33

    goto :goto_2

    .line 1518
    .restart local v33    # "returnTaskType":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 1522
    .end local v33    # "returnTaskType":I
    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_9

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1531
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1534
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1537
    :cond_9
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    .line 1538
    .local v26, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v31, :cond_a

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_a

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_a

    .line 1541
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 1542
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 1561
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1568
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1571
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1543
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v31

    if-eq v0, v3, :cond_c

    .line 1546
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v34, v3, 0x1

    .line 1547
    .local v34, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_3

    .line 1548
    .end local v34    # "taskNdx":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1549
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1550
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1553
    if-eqz v31, :cond_e

    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    const/16 v33, 0x1

    .line 1555
    .restart local v33    # "returnTaskType":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string v4, "prevFinished"

    move/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    goto/16 :goto_0

    .line 1553
    .end local v33    # "returnTaskType":I
    :cond_f
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v33

    goto :goto_4

    .line 1577
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 1578
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1586
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1588
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1593
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_12

    .line 1601
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1635
    :cond_12
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_15

    const/16 v19, 0x1

    .line 1636
    .local v19, "dontWaitForPause":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    move/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    move-result v30

    .line 1637
    .local v30, "pausing":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_13

    .line 1639
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    move-result v3

    or-int v30, v30, v3

    .line 1641
    :cond_13
    if-eqz v30, :cond_16

    .line 1648
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_14

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_14

    .line 1649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1652
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1635
    .end local v19    # "dontWaitForPause":Z
    .end local v30    # "pausing":Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_5

    .line 1658
    .restart local v19    # "dontWaitForPause":Z
    .restart local v30    # "pausing":Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_17

    .line 1662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "no-history"

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1664
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 1667
    :cond_17
    if-eqz p1, :cond_18

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 1668
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v3, :cond_20

    if-eqz v24, :cond_20

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v3, :cond_20

    .line 1669
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    :cond_18
    :goto_6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    :goto_7
    const/16 v17, 0x1

    .line 1716
    .local v17, "anim":Z
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mIsAnimationBoostEnabled:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-nez v3, :cond_19

    .line 1717
    new-instance v3, Lorg/codeaurora/Performance;

    invoke-direct {v3}, Lorg/codeaurora/Performance;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    .line 1719
    :cond_19
    if-eqz p1, :cond_29

    .line 1720
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_25

    .line 1723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1724
    const/16 v17, 0x0

    .line 1725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1734
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1766
    :cond_1b
    :goto_9
    const/16 v32, 0x0

    .line 1767
    .local v32, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v17, :cond_2b

    .line 1768
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .line 1769
    .local v28, "opts":Landroid/app/ActivityOptions;
    if-eqz v28, :cond_1c

    .line 1770
    invoke-virtual/range {v28 .. v28}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v32

    .line 1772
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .line 1777
    .end local v28    # "opts":Landroid/app/ActivityOptions;
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v22

    .line 1778
    .local v22, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_36

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_36

    .line 1782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1785
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 1787
    if-nez v22, :cond_2c

    const/16 v21, 0x0

    .line 1789
    .local v21, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    :goto_b
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v23, v0

    .line 1791
    .local v23, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1794
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, v24

    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1795
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1796
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 1804
    const/16 v27, 0x1

    .line 1805
    .local v27, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_c
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v18

    .line 1809
    .local v18, "config":Landroid/content/res/Configuration;
    if-eqz v18, :cond_1d

    .line 1810
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1812
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v3

    if-nez v3, :cond_2e

    const/16 v27, 0x1

    .line 1815
    .end local v18    # "config":Landroid/content/res/Configuration;
    :cond_1e
    :goto_d
    if-eqz v27, :cond_30

    .line 1821
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 1825
    .local v25, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1f

    .line 1827
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 1829
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1830
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1832
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1682
    .end local v17    # "anim":Z
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "notUpdated":Z
    .end local v32    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_20
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_18

    .line 1683
    if-eqz v24, :cond_21

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_21

    .line 1684
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1685
    :cond_21
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_22

    .line 1686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_6

    .line 1707
    :catch_0
    move-exception v20

    .line 1708
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1727
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "anim":Z
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_24

    const/4 v3, 0x7

    :goto_e
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1730
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_1a

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->aBoostParamVal:[I

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto/16 :goto_8

    .line 1727
    :cond_24
    const/16 v3, 0x9

    goto :goto_e

    .line 1738
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1739
    const/16 v17, 0x0

    .line 1740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 1742
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, v5, :cond_27

    const/4 v3, 0x6

    :goto_f
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 1747
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_1b

    .line 1748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mPerf:Lorg/codeaurora/Performance;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/ActivityStack;->aBoostTimeOut:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->aBoostParamVal:[I

    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto/16 :goto_9

    .line 1742
    :cond_27
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_28

    const/16 v3, 0x10

    goto :goto_f

    :cond_28
    const/16 v3, 0x8

    goto :goto_f

    .line 1758
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1759
    const/16 v17, 0x0

    .line 1760
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 1762
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .line 1774
    .restart local v32    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_2b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_a

    .line 1787
    .restart local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_2c
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v21, v0

    goto/16 :goto_b

    .line 1806
    .restart local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27    # "notUpdated":Z
    :cond_2d
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 1812
    .restart local v18    # "config":Landroid/content/res/Configuration;
    :cond_2e
    const/16 v27, 0x0

    goto/16 :goto_d

    .line 1835
    .end local v18    # "config":Landroid/content/res/Configuration;
    .restart local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_2f
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1840
    .end local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_30
    :try_start_1
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1841
    .local v16, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v16, :cond_31

    .line 1842
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1843
    .local v15, "N":I
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_31

    if-lez v15, :cond_31

    .line 1847
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v16

    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1851
    .end local v15    # "N":I
    :cond_31
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_32

    .line 1852
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 1855
    :cond_32
    const/16 v3, 0x7537

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1858
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 1859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1860
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    .line 1861
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 1862
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    .line 1863
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v6

    move-object/from16 v0, v32

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 1866
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1896
    const/4 v3, 0x1

    :try_start_2
    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1897
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1907
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1930
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27    # "notUpdated":Z
    :goto_10
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1869
    .restart local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27    # "notUpdated":Z
    :catch_1
    move-exception v20

    .line 1873
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1874
    if-eqz v22, :cond_33

    .line 1875
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1877
    :cond_33
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restarting because process died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_35

    .line 1879
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1888
    :cond_34
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1890
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1880
    :cond_35
    if-eqz v22, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_11

    .line 1898
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_2
    move-exception v20

    .line 1901
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1902
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "resume-exception"

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1905
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1911
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27    # "notUpdated":Z
    :cond_36
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_37

    .line 1912
    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1926
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_10

    .line 1915
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, v24

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, v24

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, v24

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    goto :goto_12

    .line 1706
    .end local v17    # "anim":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v32    # "resumeAnimOptions":Landroid/os/Bundle;
    :catch_3
    move-exception v3

    goto/16 :goto_7
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1462
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 1479
    :goto_0
    return v0

    .line 1467
    :cond_0
    const/4 v0, 0x0

    .line 1470
    .local v0, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    .line 1471
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    if-ne v2, v4, :cond_1

    .line 1472
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    .line 1473
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    .line 1475
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1477
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v1, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3142
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3146
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .line 3148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 3102
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3103
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3104
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3105
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 760
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-eqz v1, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-object v0

    .line 765
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v1, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    .line 773
    .local v3, "w":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v1, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    .line 774
    .local v4, "h":I
    if-lez v3, :cond_2

    .line 776
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    sget-boolean v5, Lcom/android/server/am/ActivityStack;->SCREENSHOT_FORCE_565:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 779
    :cond_2
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid thumbnail dimensions: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .line 2487
    if-lez p1, :cond_0

    .line 2488
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    .line 2495
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 2497
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2500
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2508
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 2502
    :catch_0
    move-exception v6

    .line 2503
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2507
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const-wide/16 v2, 0x0

    .line 686
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 688
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    .line 690
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces()V

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 3356
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3357
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    .line 3359
    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2875
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2906
    :cond_0
    :goto_0
    return v2

    .line 2883
    :cond_1
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->isDocument()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2886
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-nez v4, :cond_0

    .line 2891
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2892
    .local v1, "taskIdx":I
    if-gtz v1, :cond_2

    .line 2893
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2894
    goto :goto_0

    .line 2896
    :cond_2
    if-eqz v1, :cond_0

    .line 2900
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 2901
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_3
    move v2, v3

    .line 2906
    goto :goto_0
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1974
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v18, v0

    .line 1975
    .local v18, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .line 1977
    .local v22, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    .line 1981
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 1984
    :cond_1
    const/16 v21, 0x0

    .line 1985
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_8

    .line 1987
    const/16 v20, 0x1

    .line 1988
    .local v20, "startIt":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v23, v3, -0x1

    .local v23, "taskNdx":I
    :goto_0
    if-ltz v23, :cond_8

    .line 1989
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    check-cast v21, Lcom/android/server/am/TaskRecord;

    .line 1990
    .restart local v21    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1988
    :cond_2
    :goto_1
    add-int/lit8 v23, v23, -0x1

    goto :goto_0

    .line 1994
    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_7

    .line 1998
    if-nez v20, :cond_8

    .line 2001
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2002
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2003
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2011
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2134
    .end local v20    # "startIt":Z
    .end local v23    # "taskNdx":I
    :cond_4
    :goto_4
    return-void

    .line 2003
    .restart local v20    # "startIt":Z
    .restart local v23    # "taskNdx":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 2015
    :cond_7
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v3, :cond_2

    .line 2016
    const/16 v20, 0x0

    goto :goto_1

    .line 2027
    .end local v20    # "startIt":Z
    .end local v23    # "taskNdx":I
    :cond_8
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v21

    if-ne v0, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_9

    .line 2028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2033
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v21, v0

    .line 2038
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    .line 2039
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    .line 2041
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    .line 2042
    sget-object v3, Lcom/android/server/am/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/app/ActivityTrigger;->activityStartTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 2043
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    if-lez v3, :cond_1b

    .line 2047
    :cond_a
    move/from16 v19, p2

    .line 2048
    .local v19, "showStartingIcon":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    .line 2049
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_b

    .line 2050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 2052
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_b
    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_d

    .line 2053
    :cond_c
    const/16 v19, 0x1

    .line 2057
    :cond_d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_10

    .line 2058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    move/from16 v0, p4

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2068
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_13

    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_14

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2072
    const/4 v15, 0x1

    .line 2073
    .local v15, "doShow":Z
    if-eqz p2, :cond_16

    .line 2079
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_e

    .line 2080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 2081
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object/from16 v0, p1

    if-ne v3, v0, :cond_15

    const/4 v15, 0x1

    .line 2087
    :cond_e
    :goto_8
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_17

    .line 2090
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2091
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2131
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "showStartingIcon":Z
    :cond_f
    :goto_9
    if-eqz p3, :cond_4

    .line 2132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    goto/16 :goto_4

    .line 2061
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v19    # "showStartingIcon":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_12

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_11

    const/16 v3, 0x10

    :goto_a
    move/from16 v0, p4

    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 2061
    :cond_11
    const/16 v3, 0x8

    goto :goto_a

    :cond_12
    const/4 v3, 0x6

    goto :goto_a

    .line 2068
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v13, 0x0

    goto :goto_7

    .line 2081
    .restart local v15    # "doShow":Z
    :cond_15
    const/4 v15, 0x0

    goto :goto_8

    .line 2083
    :cond_16
    if-eqz p5, :cond_e

    new-instance v3, Landroid/app/ActivityOptions;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_e

    .line 2085
    const/4 v15, 0x0

    goto :goto_8

    .line 2092
    :cond_17
    if-eqz v15, :cond_f

    .line 2097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v16, v0

    .line 2098
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_18

    .line 2101
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v3, v4, :cond_19

    .line 2102
    const/16 v16, 0x0

    .line 2109
    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    if-eqz v16, :cond_1a

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_c
    move/from16 v14, v19

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 2115
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    goto/16 :goto_9

    .line 2105
    :cond_19
    move-object/from16 v0, v16

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_18

    .line 2106
    const/16 v16, 0x0

    goto :goto_b

    .line 2109
    :cond_1a
    const/4 v13, 0x0

    goto :goto_c

    .line 2120
    .end local v15    # "doShow":Z
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v19    # "showStartingIcon":Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v13, :cond_1d

    const/4 v13, 0x1

    :goto_e
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 2124
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 2125
    const/16 p5, 0x0

    goto/16 :goto_9

    .line 2120
    :cond_1c
    const/4 v10, 0x0

    goto :goto_d

    :cond_1d
    const/4 v13, 0x0

    goto :goto_e
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    .line 800
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 803
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 804
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    .line 805
    if-nez p3, :cond_1

    .line 806
    const-string v0, "ActivityManager"

    const-string v2, "Trying to pause when nothing is resumed"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 809
    :cond_1
    const/4 v0, 0x0

    .line 899
    :goto_0
    return v0

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_3

    .line 814
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    .line 819
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 820
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 821
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 822
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    :cond_4
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    .line 824
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 825
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 826
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    .line 828
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_6

    if-eqz v10, :cond_5

    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_5

    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v0, v2, :cond_5

    if-eqz p2, :cond_6

    .line 829
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 831
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    .line 833
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 835
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_a

    .line 838
    const/16 v0, 0x753d

    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 841
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 842
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v5, p1

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 859
    :goto_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 860
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 863
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_c

    .line 868
    if-nez p2, :cond_8

    .line 869
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 874
    :cond_8
    if-eqz p4, :cond_b

    .line 877
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    .line 878
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 822
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 844
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v8

    .line 846
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 847
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 848
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 852
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .line 884
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 885
    .local v9, "msg":Landroid/os/Message;
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 886
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    .line 887
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 889
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 896
    .end local v9    # "msg":Landroid/os/Message;
    :cond_c
    if-nez p3, :cond_d

    .line 897
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 899
    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2529
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 2531
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 2532
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2536
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const-string v4, "no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2545
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    .line 2546
    const-string v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 2547
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2549
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2552
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2555
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_2

    .line 2556
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2558
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 2559
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2560
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    .line 2562
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2563
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2578
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    return-void

    .line 2564
    :catch_0
    move-exception v6

    .line 2568
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    const-string v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2570
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2572
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2573
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v0, :cond_4

    .line 2574
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 631
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v3, p1, :cond_1

    .line 654
    :cond_0
    return-void

    .line 634
    :cond_1
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    .line 637
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 638
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 639
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 640
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 644
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 648
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 456
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 458
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    .line 462
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v0

    .line 456
    .restart local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 462
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    .line 435
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    .line 436
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 437
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 439
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    .line 444
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_2
    return-object v2

    .line 437
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 435
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 444
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .line 417
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    .line 418
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 419
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    .line 417
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 423
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 424
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 426
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 431
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 423
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 431
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 384
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 385
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 386
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 390
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 384
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 390
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 394
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 395
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 396
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 397
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 399
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :goto_2
    return-object v2

    .line 397
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 394
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 404
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 449
    .local v0, "size":I
    if-lez v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 452
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unhandledBackLocked()V
    .locals 9

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 3962
    .local v8, "top":I
    if-ltz v8, :cond_0

    .line 3963
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3964
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .line 3965
    .local v7, "activityTop":I
    if-lez v7, :cond_0

    .line 3966
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "unhandled-back"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3970
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_0
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 480
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    return v0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .line 3484
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    .line 3485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 3489
    if-nez p2, :cond_0

    .line 3490
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 3493
    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 3472
    if-eqz p2, :cond_0

    .line 3473
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 3474
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    .line 3475
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 3480
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 3481
    return-void

    .line 3477
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    .prologue
    .line 2137
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 2138
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 2139
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2140
    .local v4, "numTasks":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 2141
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 2142
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2143
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2140
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2146
    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    .line 2147
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    .line 2148
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2149
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2150
    .local v3, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 2151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2152
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2150
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2155
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    .line 2156
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3823
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 3824
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3825
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 3826
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 3827
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_1

    move v6, v5

    .line 3841
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_0
    :goto_2
    return v6

    .line 3830
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    :cond_1
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_0

    .line 3825
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3823
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3835
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 3836
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 3839
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    const-string v4, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    move v6, v4

    goto :goto_2

    :cond_6
    move v4, v6

    goto :goto_3
.end method
