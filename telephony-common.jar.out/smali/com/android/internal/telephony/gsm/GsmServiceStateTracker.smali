.class final Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "GsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;
    }
.end annotation


# static fields
.field static final CS_DISABLED:I = 0x3ec

.field static final CS_EMERGENCY_ENABLED:I = 0x3ee

.field static final CS_ENABLED:I = 0x3eb

.field static final CS_NORMAL_ENABLED:I = 0x3ed

.field static final CS_NOTIFICATION:I = 0x3e7

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field static final PS_DISABLED:I = 0x3ea

.field static final PS_ENABLED:I = 0x3e9

.field static final PS_NOTIFICATION:I = 0x378

.field static final VDBG:Z = false

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"


# instance fields
.field private final ACTION_RAC_CHANGED:Ljava/lang/String;

.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurPlmn:Ljava/lang/String;

.field private mCurShowPlmn:Z

.field private mCurShowSpn:Z

.field private mCurSpn:Ljava/lang/String;

.field private mDataRoaming:Z

.field private mEmergencyOnly:Z

.field private mGotCountryCode:Z

.field private mGsmRoaming:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxDataCalls:I

.field private mNeedFixZoneAfterNitz:Z

.field mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

.field private mNewMaxDataCalls:I

.field private mNewReasonDataDenied:I

.field private mNitzUpdatedTime:Z

.field private mNotification:Landroid/app/Notification;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mPlmnOverride:Lcom/android/internal/telephony/uicc/PlmnOverride;

.field mPreferredNetworkType:I

.field private mRac:I

.field private mRat:I

.field private mReasonDataDenied:I

.field private mReportedGprsNoReg:Z

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mShowRoamingMessage:Z

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mStartedGprsRegCheck:Z

.field private mTac:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J

.field private final rac_change:Ljava/lang/String;

.field private final rat_info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 10
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 243
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v7, Landroid/telephony/CellInfoGsm;

    invoke-direct {v7}, Landroid/telephony/CellInfoGsm;-><init>()V

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 114
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 115
    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 116
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 117
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 123
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 129
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 141
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 145
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 149
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 156
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 159
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 160
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mShowRoamingMessage:Z

    .line 172
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 173
    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 174
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 175
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 189
    const-string v6, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ACTION_RAC_CHANGED:Ljava/lang/String;

    .line 190
    const-string v6, "rat"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rat_info:Ljava/lang/String;

    .line 191
    const-string v6, "rac"

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rac_change:Ljava/lang/String;

    .line 195
    iput v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTac:I

    .line 197
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 234
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 245
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 246
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 247
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 248
    new-instance v6, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 249
    new-instance v6, Lcom/android/internal/telephony/uicc/PlmnOverride;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/PlmnOverride;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPlmnOverride:Lcom/android/internal/telephony/uicc/PlmnOverride;

    .line 251
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 253
    .local v3, "powerManager":Landroid/os/PowerManager;
    const-string v6, "ServiceStateTracker"

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 255
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xd

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 256
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 258
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 259
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xb

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 260
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x17

    invoke-interface {v6, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnRestrictedStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 266
    .local v0, "airplaneMode":I
    if-gtz v0, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 269
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "auto_time"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 272
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v6, "auto_time_zone"

    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 276
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 279
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 284
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 285
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v4, "qualcomm.intent.action.ACTION_RAC_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRac:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRat:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetDataBlocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z
    .locals 6
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1616
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1618
    .local v2, "simNumeric":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1619
    .local v1, "operatorNumeric":Ljava/lang/String;
    const/4 v0, 0x1

    .line 1622
    .local v0, "equalsMcc":Z
    const/4 v3, 0x0

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1626
    :goto_0
    return v0

    .line 1624
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1422
    move v5, p1

    .line 1423
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 1424
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 1426
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 1427
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1428
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 1429
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 1430
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 1431
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 1433
    move-object v2, v6

    .line 1438
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 1429
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1935
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1938
    :goto_0
    return v1

    .line 1935
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1937
    :catch_0
    move-exception v0

    .line 1938
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1944
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 1947
    :goto_0
    return v1

    .line 1944
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1946
    :catch_0
    move-exception v0

    .line 1947
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getCombinedRegState()I
    .locals 3

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    .line 712
    .local v1, "regState":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 714
    .local v0, "dataRegState":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 716
    const-string v2, "getCombinedRegState: return STATE_IN_SERVICE as Data is in service"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 717
    move v1, v0

    .line 720
    :cond_0
    return v1
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 1412
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1413
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 1415
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 1417
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1418
    return-object v0

    .line 1415
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1417
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method private isGprsConsistent(II)Z
    .locals 1
    .param p1, "dataRegState"    # I
    .param p2, "voiceRegState"    # I

    .prologue
    .line 1404
    if-nez p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 1640
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1641
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:array@config_operatorConsideredNonRoaming#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, "numericArray":[Ljava/lang/String;
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 1653
    :cond_0
    :goto_0
    return v6

    .line 1648
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1649
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1650
    const/4 v6, 0x1

    goto :goto_0

    .line 1648
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v6, 0x0

    .line 1657
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 1658
    .local v5, "operatorNumeric":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, #android:array@config_sameNamedOperatorConsideredRoaming#t

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1661
    .local v4, "numericArray":[Ljava/lang/String;
    array-length v7, v4

    if-eqz v7, :cond_0

    if-nez v5, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return v6

    .line 1665
    :cond_1
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1666
    .local v3, "numeric":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1667
    const/4 v6, 0x1

    goto :goto_0

    .line 1665
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isSameNamedOperators(Landroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1598
    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1600
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 1601
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 1603
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v0, v5

    .line 1604
    .local v0, "equalsOnsl":Z
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    .line 1606
    .local v1, "equalsOnss":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->currentMccEqualsSimMcc(Landroid/telephony/ServiceState;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    :goto_2
    return v5

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_1
    move v0, v6

    .line 1603
    goto :goto_0

    .restart local v0    # "equalsOnsl":Z
    :cond_2
    move v1, v6

    .line 1604
    goto :goto_1

    .restart local v1    # "equalsOnss":Z
    :cond_3
    move v5, v6

    .line 1606
    goto :goto_2
.end method

.method private onRestrictedStateChanged(Landroid/os/AsyncResult;)V
    .locals 10
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v9, 0x3ed

    const/16 v8, 0x3ec

    const/16 v7, 0x3eb

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1467
    new-instance v1, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v1}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    .line 1469
    .local v1, "newRs":Lcom/android/internal/telephony/RestrictedState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestrictedStateChanged: E rs "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1471
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_5

    .line 1472
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .line 1473
    .local v0, "ints":[I
    aget v2, v0, v4

    .line 1475
    .local v2, "state":I
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_6

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsEmergencyRestricted(Z)V

    .line 1479
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v6, :cond_2

    .line 1480
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_7

    :cond_1
    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/RestrictedState;->setCsNormalRestricted(Z)V

    .line 1483
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_8

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/RestrictedState;->setPsRestricted(Z)V

    .line 1487
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: new rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1489
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1490
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1491
    const/16 v3, 0x3e9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1502
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1503
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1505
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    .line 1550
    :cond_4
    :goto_4
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 1552
    .end local v0    # "ints":[I
    .end local v2    # "state":I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestrictedStateChanged: X rs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1553
    return-void

    .restart local v0    # "ints":[I
    .restart local v2    # "state":I
    :cond_6
    move v3, v4

    .line 1475
    goto :goto_0

    :cond_7
    move v3, v4

    .line 1480
    goto :goto_1

    :cond_8
    move v5, v4

    .line 1483
    goto :goto_2

    .line 1492
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1493
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1494
    const/16 v3, 0x3ea

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_3

    .line 1506
    :cond_a
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1508
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1509
    :cond_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1511
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1513
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-nez v3, :cond_f

    .line 1515
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1517
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1518
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1520
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1521
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1523
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto :goto_4

    .line 1525
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1527
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-nez v3, :cond_10

    .line 1529
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1530
    :cond_10
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1532
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1533
    :cond_11
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1535
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1538
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1540
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1541
    :cond_13
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1543
    const/16 v3, 0x3ee

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4

    .line 1544
    :cond_14
    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1546
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setNotification(I)V

    goto/16 :goto_4
.end method

.method private pollStateDone()V
    .locals 44

    .prologue
    .line 1054
    sget-boolean v40, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v40, :cond_0

    const-string v40, "telephony.test.forceRoaming"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1057
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 1061
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Poll ServiceState done:  oldSS=["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "] newSS=["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " oldMaxDataCalls="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mNewMaxDataCalls="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " oldReasonDataDenied="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mNewReasonDataDenied="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v40

    if-eqz v40, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v40

    if-nez v40, :cond_14

    const/16 v20, 0x1

    .line 1073
    .local v20, "hasRegistered":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v40

    if-nez v40, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v40

    if-eqz v40, :cond_15

    const/4 v15, 0x1

    .line 1077
    .local v15, "hasDeregistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    if-eqz v40, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    if-nez v40, :cond_16

    const/16 v16, 0x1

    .line 1081
    .local v16, "hasGprsAttached":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    if-nez v40, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    if-eqz v40, :cond_17

    const/16 v17, 0x1

    .line 1085
    .local v17, "hasGprsDetached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_18

    const/4 v14, 0x1

    .line 1088
    .local v14, "hasDataRegStateChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_19

    const/16 v25, 0x1

    .line 1091
    .local v25, "hasVoiceRegStateChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1a

    const/16 v22, 0x1

    .line 1094
    .local v22, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_1b

    const/16 v21, 0x1

    .line 1097
    .local v21, "hasRilDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1c

    const/4 v13, 0x1

    .line 1099
    .local v13, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-nez v40, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_1d

    const/16 v24, 0x1

    .line 1101
    .local v24, "hasRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-nez v40, :cond_1e

    const/16 v23, 0x1

    .line 1103
    .local v23, "hasRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/telephony/gsm/GsmCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_1f

    const/16 v19, 0x1

    .line 1105
    .local v19, "hasLocationChanged":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_20

    const/16 v18, 0x1

    .line 1107
    .local v18, "hasLacChanged":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_21

    const/16 v29, 0x1

    .line 1110
    .local v29, "needNotifyData":Z
    :goto_d
    if-nez v25, :cond_1

    if-eqz v14, :cond_2

    .line 1111
    :cond_1
    const v40, 0xc3c2

    const/16 v41, 0x4

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1119
    :cond_2
    if-eqz v22, :cond_4

    .line 1120
    const/4 v9, -0x1

    .line 1121
    .local v9, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v27, v0

    .line 1122
    .local v27, "loc":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v27, :cond_3

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v9

    .line 1127
    :cond_3
    const v40, 0xc3cb

    const/16 v41, 0x3

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    const/16 v42, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    aput-object v43, v41, v42

    invoke-static/range {v40 .. v41}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1131
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "RAT switched "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v41

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " -> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v41

    invoke-static/range {v41 .. v41}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " at cell "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1140
    .end local v9    # "cid":I
    .end local v27    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v34, v0

    .line 1141
    .local v34, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 1142
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v32, v0

    .line 1148
    .local v32, "tcl":Landroid/telephony/gsm/GsmCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1149
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    .line 1154
    if-eqz v22, :cond_5

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 1158
    :cond_5
    if-eqz v21, :cond_6

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v42

    invoke-static/range {v42 .. v42}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v40

    if-eqz v40, :cond_6

    const/16 v40, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 1165
    const-string v40, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1170
    :cond_6
    if-eqz v20, :cond_7

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1174
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: registering current mNitzUpdatedTime="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " changing to false"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1177
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1180
    :cond_7
    if-eqz v13, :cond_9

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 1185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v40, "gsm.operator.numeric"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 1190
    .local v31, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v30

    .line 1191
    .local v30, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.numeric"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1194
    if-nez v30, :cond_22

    .line 1195
    const-string v40, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.iso-country"

    const-string v42, ""

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1198
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1311
    :cond_8
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v41, v0

    const-string v42, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v40

    if-eqz v40, :cond_2d

    const-string v40, "true"

    :goto_f
    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1322
    .end local v30    # "operatorNumeric":Ljava/lang/String;
    .end local v31    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_a

    .line 1323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1326
    :cond_a
    if-nez v14, :cond_b

    if-eqz v21, :cond_c

    .line 1327
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1329
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v40

    if-eqz v40, :cond_2e

    const/16 v40, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v41

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2e

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "iwlanAvailable"

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1333
    const/16 v29, 0x0

    .line 1334
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIwlanRatAvailable:Z

    .line 1342
    :cond_c
    :goto_10
    if-eqz v29, :cond_d

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1346
    :cond_d
    if-eqz v16, :cond_e

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1350
    :cond_e
    if-eqz v24, :cond_f

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1354
    :cond_f
    if-eqz v23, :cond_10

    .line 1355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1358
    :cond_10
    if-eqz v19, :cond_11

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 1362
    :cond_11
    if-eqz v18, :cond_12

    .line 1364
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetDataBlocked()V

    .line 1367
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v41

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v40

    if-nez v40, :cond_2f

    .line 1368
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    move/from16 v40, v0

    if-nez v40, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    move/from16 v40, v0

    if-nez v40, :cond_13

    .line 1369
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    const-string v41, "gprs_register_check_period_ms"

    const v42, 0xea60

    invoke-static/range {v40 .. v42}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1375
    .local v8, "check_period":I
    const/16 v40, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    int-to-long v0, v8

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1382
    .end local v8    # "check_period":I
    :cond_13
    :goto_11
    return-void

    .line 1069
    .end local v13    # "hasChanged":Z
    .end local v14    # "hasDataRegStateChanged":Z
    .end local v15    # "hasDeregistered":Z
    .end local v16    # "hasGprsAttached":Z
    .end local v17    # "hasGprsDetached":Z
    .end local v18    # "hasLacChanged":Z
    .end local v19    # "hasLocationChanged":Z
    .end local v20    # "hasRegistered":Z
    .end local v21    # "hasRilDataRadioTechnologyChanged":Z
    .end local v22    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v23    # "hasRoamingOff":Z
    .end local v24    # "hasRoamingOn":Z
    .end local v25    # "hasVoiceRegStateChanged":Z
    .end local v29    # "needNotifyData":Z
    .end local v32    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_14
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1073
    .restart local v20    # "hasRegistered":Z
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1077
    .restart local v15    # "hasDeregistered":Z
    :cond_16
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1081
    .restart local v16    # "hasGprsAttached":Z
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 1085
    .restart local v17    # "hasGprsDetached":Z
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 1088
    .restart local v14    # "hasDataRegStateChanged":Z
    :cond_19
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 1091
    .restart local v25    # "hasVoiceRegStateChanged":Z
    :cond_1a
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 1094
    .restart local v22    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 1097
    .restart local v21    # "hasRilDataRadioTechnologyChanged":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 1099
    .restart local v13    # "hasChanged":Z
    :cond_1d
    const/16 v24, 0x0

    goto/16 :goto_9

    .line 1101
    .restart local v24    # "hasRoamingOn":Z
    :cond_1e
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1103
    .restart local v23    # "hasRoamingOff":Z
    :cond_1f
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 1105
    .restart local v19    # "hasLocationChanged":Z
    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_c

    .line 1107
    .restart local v18    # "hasLacChanged":Z
    :cond_21
    const/16 v29, 0x0

    goto/16 :goto_d

    .line 1200
    .restart local v29    # "needNotifyData":Z
    .restart local v30    # "operatorNumeric":Ljava/lang/String;
    .restart local v31    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v32    # "tcl":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v34    # "tss":Landroid/telephony/ServiceState;
    :cond_22
    const-string v26, ""

    .line 1201
    .local v26, "iso":Ljava/lang/String;
    const-string v28, ""

    .line 1203
    .local v28, "mcc":Ljava/lang/String;
    const/16 v40, 0x0

    const/16 v41, 0x3

    :try_start_0
    move-object/from16 v0, v30

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1204
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    invoke-static/range {v40 .. v40}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 1211
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    const-string v41, "gsm.operator.iso-country"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1214
    const/16 v38, 0x0

    .line 1216
    .local v38, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    move/from16 v40, v0

    if-nez v40, :cond_24

    const-string v40, "000"

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_24

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_24

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v40

    if-eqz v40, :cond_24

    .line 1220
    const-string v40, "telephony.test.ignore.nitz"

    const/16 v41, 0x0

    invoke-static/range {v40 .. v41}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v40

    const-wide/16 v42, 0x1

    and-long v40, v40, v42

    const-wide/16 v42, 0x0

    cmp-long v40, v40, v42

    if-nez v40, :cond_26

    const/16 v33, 0x1

    .line 1224
    .local v33, "testOneUniqueOffsetPath":Z
    :goto_13
    invoke-static/range {v26 .. v26}, Landroid/util/TimeUtils;->getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v35

    .line 1225
    .local v35, "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_23

    if-eqz v33, :cond_27

    .line 1226
    :cond_23
    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "zone":Ljava/util/TimeZone;
    check-cast v38, Ljava/util/TimeZone;

    .line 1228
    .restart local v38    # "zone":Ljava/util/TimeZone;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: no nitz but one TZ for iso-cc="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " with zone.getID="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " testOneUniqueOffsetPath="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1232
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1243
    .end local v33    # "testOneUniqueOffsetPath":Z
    .end local v35    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_24
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 1248
    const-string v40, "persist.sys.timezone"

    invoke-static/range {v40 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1250
    .local v39, "zoneName":Ljava/lang/String;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: fix time zone zoneName=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\' mZoneOffset="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " mZoneDst="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " iso-cc=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\' iso-cc-idx="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-object v41, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1256
    const-string v40, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v40, v0

    if-eqz v40, :cond_28

    .line 1259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v38

    .line 1260
    const-string v40, "pollStateDone: using NITZ TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1297
    :goto_15
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1299
    if-eqz v38, :cond_2c

    .line 1300
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: zone != null zone.getID="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v40

    if-eqz v40, :cond_25

    .line 1302
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1304
    :cond_25
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1205
    .end local v38    # "zone":Ljava/util/TimeZone;
    .end local v39    # "zoneName":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 1206
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1207
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 1208
    .local v12, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: countryCodeForMcc error"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 1220
    .end local v12    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v38    # "zone":Ljava/util/TimeZone;
    :cond_26
    const/16 v33, 0x0

    goto/16 :goto_13

    .line 1235
    .restart local v33    # "testOneUniqueOffsetPath":Z
    .restart local v35    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_27
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: there are "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " unique offsets for iso-cc=\'"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " testOneUniqueOffsetPath="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "\', do nothing"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 1268
    .end local v33    # "testOneUniqueOffsetPath":Z
    .end local v35    # "uniqueZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v39    # "zoneName":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    if-nez v40, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v40, v0

    if-nez v40, :cond_2b

    if-eqz v39, :cond_2b

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v40

    if-lez v40, :cond_2b

    sget-object v40, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v40

    if-gez v40, :cond_2b

    .line 1271
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v38

    .line 1272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    move/from16 v40, v0

    if-eqz v40, :cond_29

    .line 1275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1276
    .local v10, "ctm":J
    move-object/from16 v0, v38

    invoke-virtual {v0, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v36, v0

    .line 1278
    .local v36, "tzOffset":J
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: tzOffset="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " ltod="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v40

    if-eqz v40, :cond_2a

    .line 1282
    sub-long v6, v10, v36

    .line 1283
    .local v6, "adj":J
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pollStateDone: adj ltod="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v6, v7}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1291
    .end local v6    # "adj":J
    .end local v10    # "ctm":J
    .end local v36    # "tzOffset":J
    :cond_29
    :goto_16
    const-string v40, "pollStateDone: using default TimeZone"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1288
    .restart local v10    # "ctm":J
    .restart local v36    # "tzOffset":J
    :cond_2a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    move-wide/from16 v40, v0

    sub-long v40, v40, v36

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    goto :goto_16

    .line 1293
    .end local v10    # "ctm":J
    .end local v36    # "tzOffset":J
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    move-wide/from16 v42, v0

    move/from16 v0, v40

    move/from16 v1, v41

    move-wide/from16 v2, v42

    move-object/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v38

    .line 1294
    const-string v40, "pollStateDone: using getTimeZone(off, dst, time, iso)"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1306
    :cond_2c
    const-string v40, "pollStateDone: zone == null"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1311
    .end local v26    # "iso":Ljava/lang/String;
    .end local v28    # "mcc":Ljava/lang/String;
    .end local v38    # "zone":Ljava/util/TimeZone;
    .end local v39    # "zoneName":Ljava/lang/String;
    :cond_2d
    const-string v40, "false"

    goto/16 :goto_f

    .line 1336
    .end local v30    # "operatorNumeric":Ljava/lang/String;
    .end local v31    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->processIwlanToWwanTransition(Landroid/telephony/ServiceState;)V

    .line 1337
    const/16 v29, 0x1

    .line 1338
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIwlanRatAvailable:Z

    goto/16 :goto_10

    .line 1379
    :cond_2f
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    goto/16 :goto_11
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 1442
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 1457
    :goto_0
    return-void

    .line 1450
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1451
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1456
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 1587
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1557
    packed-switch p1, :pswitch_data_0

    .line 1576
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1577
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    move v0, v1

    .line 1569
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1573
    goto :goto_0

    .line 1557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resetDataBlocked()V
    .locals 3

    .prologue
    .line 1389
    new-instance v0, Landroid/net/ZeroBalanceHelper;

    invoke-direct {v0}, Landroid/net/ZeroBalanceHelper;-><init>()V

    .line 1390
    .local v0, "helper":Landroid/net/ZeroBalanceHelper;
    invoke-virtual {v0}, Landroid/net/ZeroBalanceHelper;->getBgDataProperty()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1391
    const-string v1, "GsmSST"

    const-string v2, "Enabling the background data on LAU/RAU"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v1, "false"

    invoke-virtual {v0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 1394
    :cond_0
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 1997
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 2002
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ Time: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2005
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 2006
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting to NITZ TimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2017
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveNitzTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1956
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    .line 1957
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    .line 1958
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 1953
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1989
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1990
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1991
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1992
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1993
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1994
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 1967
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1968
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1970
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 1971
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1972
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1973
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAndBroadcastNetworkSetTimeZone: call alarm.setTimeZone and broadcast zoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1979
    return-void
.end method

.method private setNotification(I)V
    .locals 12
    .param p1, "notifyType"    # I

    .prologue
    .line 2029
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNotification: create notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2032
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_user_notification_of_restrictied_mobile_access#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 2034
    .local v4, "isSetNotification":Z
    if-nez v4, :cond_1

    .line 2035
    const-string v8, "Ignore all the notifications"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2039
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2041
    .local v0, "context":Landroid/content/Context;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    .line 2042
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v8, Landroid/app/Notification;->when:J

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const v9, #android:drawable@stat_sys_warning#t

    iput v9, v8, Landroid/app/Notification;->icon:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    const/high16 v10, 0x10000000

    invoke-static {v0, v9, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2049
    const-string v2, ""

    .line 2050
    .local v2, "details":Ljava/lang/CharSequence;
    const v8, #android:string@RestrictedChangedTitle#t

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2051
    .local v7, "title":Ljava/lang/CharSequence;
    const/16 v5, 0x3e7

    .line 2053
    .local v5, "notificationId":I
    packed-switch p1, :pswitch_data_0

    .line 2079
    :goto_1
    :pswitch_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNotification: put notification "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2080
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v7, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2081
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, #android:color@system_notification_accent_color#t

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v8, Landroid/app/Notification;->color:I

    .line 2083
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v0, v7, v2, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2086
    const-string v8, "notification"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 2089
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    const/16 v8, 0x3ea

    if-eq p1, v8, :cond_2

    const/16 v8, 0x3ec

    if-ne p1, v8, :cond_3

    .line 2091
    :cond_2
    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 2055
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2056
    .local v1, "dataSubId":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v8

    if-ne v1, v8, :cond_0

    const/16 v5, 0x378

    const v8, #android:string@RestrictedOnData#t

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .end local v1    # "dataSubId":I
    :pswitch_2
    const/16 v5, 0x378

    goto :goto_1

    :pswitch_3
    const v8, #android:string@RestrictedOnAllVoice#t

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2067
    goto :goto_1

    .line 2069
    :pswitch_4
    const v8, #android:string@RestrictedOnNormal#t

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2070
    goto :goto_1

    .line 2072
    :pswitch_5
    const v8, #android:string@RestrictedOnEmergency#t

    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2073
    goto/16 :goto_1

    .line 2094
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    :cond_3
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v6, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2053
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 974
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 975
    return-void
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 32
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 1773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1774
    .local v20, "start":J
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " start="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " delay="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sub-long v28, v20, p2

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1781
    :try_start_0
    const-string v26, "GMT"

    invoke-static/range {v26 .. v26}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    .line 1783
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->clear()V

    .line 1784
    const/16 v26, 0x10

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1786
    const-string v26, "[/:,+-]"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1788
    .local v17, "nitzSubs":[Ljava/lang/String;
    const/16 v26, 0x0

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move/from16 v0, v26

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v24, v0

    .line 1789
    .local v24, "year":I
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1792
    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v16, v26, -0x1

    .line 1793
    .local v16, "month":I
    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1795
    const/16 v26, 0x2

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1796
    .local v7, "date":I
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-virtual {v6, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 1798
    const/16 v26, 0x3

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1799
    .local v10, "hour":I
    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v6, v0, v10}, Ljava/util/Calendar;->set(II)V

    .line 1801
    const/16 v26, 0x4

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1802
    .local v13, "minute":I
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v6, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 1804
    const/16 v26, 0x5

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1805
    .local v18, "second":I
    const/16 v26, 0xd

    move/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 1807
    const/16 v26, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 1809
    .local v19, "sign":Z
    :goto_0
    const/16 v26, 0x6

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1811
    .local v22, "tzOffset":I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_7

    const/16 v26, 0x7

    aget-object v26, v17, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1821
    .local v8, "dst":I
    :goto_1
    if-eqz v19, :cond_8

    const/16 v26, 0x1

    :goto_2
    mul-int v26, v26, v22

    mul-int/lit8 v26, v26, 0xf

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    .line 1823
    const/16 v25, 0x0

    .line 1829
    .local v25, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 1830
    const/16 v26, 0x8

    aget-object v26, v17, v26

    const/16 v27, 0x21

    const/16 v28, 0x2f

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v23

    .line 1831
    .local v23, "tzname":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 1834
    .end local v23    # "tzname":Ljava/lang/String;
    :cond_0
    const-string v26, "gsm.operator.iso-country"

    const-string v27, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1836
    .local v12, "iso":Ljava/lang/String;
    if-nez v25, :cond_1

    .line 1838
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1839
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_a

    .line 1840
    if-eqz v8, :cond_9

    const/16 v26, 0x1

    :goto_3
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move/from16 v0, v22

    move/from16 v1, v26

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v2, v3, v12}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v25

    .line 1853
    :cond_1
    :goto_4
    if-eqz v25, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    move/from16 v27, v0

    if-eqz v8, :cond_c

    const/16 v26, 0x1

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v26

    if-eq v0, v1, :cond_3

    .line 1858
    :cond_2
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    .line 1859
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    .line 1860
    if-eqz v8, :cond_d

    const/16 v26, 0x1

    :goto_6
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    .line 1861
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    .line 1864
    :cond_3
    if-eqz v25, :cond_5

    .line 1865
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTimeZone()Z

    move-result v26

    if-eqz v26, :cond_4

    .line 1866
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 1868
    :cond_4
    invoke-virtual/range {v25 .. v25}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 1871
    :cond_5
    const-string v26, "gsm.ignore-nitz"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1872
    .local v11, "ignore":Ljava/lang/String;
    if-eqz v11, :cond_e

    const-string v26, "yes"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 1873
    const-string v26, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1931
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    .end local v25    # "zone":Ljava/util/TimeZone;
    :goto_7
    return-void

    .line 1807
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v10    # "hour":I
    .restart local v13    # "minute":I
    .restart local v16    # "month":I
    .restart local v17    # "nitzSubs":[Ljava/lang/String;
    .restart local v18    # "second":I
    .restart local v24    # "year":I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1811
    .restart local v19    # "sign":Z
    .restart local v22    # "tzOffset":I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1821
    .restart local v8    # "dst":I
    :cond_8
    const/16 v26, -0x1

    goto/16 :goto_2

    .line 1840
    .restart local v12    # "iso":Ljava/lang/String;
    .restart local v25    # "zone":Ljava/util/TimeZone;
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1848
    :cond_a
    if-eqz v8, :cond_b

    const/16 v26, 0x1

    :goto_8
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v26

    move-wide/from16 v3, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    goto/16 :goto_4

    :cond_b
    const/16 v26, 0x0

    goto :goto_8

    .line 1853
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 1860
    :cond_d
    const/16 v26, 0x0

    goto :goto_6

    .line 1878
    .restart local v11    # "ignore":Ljava/lang/String;
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1880
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAutoTime()Z

    move-result v26

    if-eqz v26, :cond_11

    .line 1881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v14, v26, p2

    .line 1884
    .local v14, "millisSinceNitzReceived":J
    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-gez v26, :cond_f

    .line 1887
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1926
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 1928
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v7    # "date":I
    .end local v8    # "dst":I
    .end local v10    # "hour":I
    .end local v11    # "ignore":Ljava/lang/String;
    .end local v12    # "iso":Ljava/lang/String;
    .end local v13    # "minute":I
    .end local v14    # "millisSinceNitzReceived":J
    .end local v16    # "month":I
    .end local v17    # "nitzSubs":[Ljava/lang/String;
    .end local v18    # "second":I
    .end local v19    # "sign":Z
    .end local v22    # "tzOffset":I
    .end local v24    # "year":I
    .end local v25    # "zone":Ljava/util/TimeZone;
    :catch_0
    move-exception v9

    .line 1929
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: Parsing NITZ time "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ex="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1894
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v6    # "c":Ljava/util/Calendar;
    .restart local v7    # "date":I
    .restart local v8    # "dst":I
    .restart local v10    # "hour":I
    .restart local v11    # "ignore":Ljava/lang/String;
    .restart local v12    # "iso":Ljava/lang/String;
    .restart local v13    # "minute":I
    .restart local v14    # "millisSinceNitzReceived":J
    .restart local v16    # "month":I
    .restart local v17    # "nitzSubs":[Ljava/lang/String;
    .restart local v18    # "second":I
    .restart local v19    # "sign":Z
    .restart local v22    # "tzOffset":I
    .restart local v24    # "year":I
    .restart local v25    # "zone":Ljava/util/TimeZone;
    :cond_f
    const-wide/32 v26, 0x7fffffff

    cmp-long v26, v14, v26

    if-lez v26, :cond_10

    .line 1897
    :try_start_3
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: not setting time, processing has taken "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-wide/32 v28, 0x5265c00

    div-long v28, v14, v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " days"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1926
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    .line 1905
    :cond_10
    const/16 v26, 0xe

    long-to-int v0, v14

    move/from16 v27, v0

    :try_start_5
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1908
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "NITZ: Setting time of day to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " NITZ receive delay(ms): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " gained(ms): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    sub-long v28, v28, v30

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1915
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAndBroadcastNetworkSetTime(J)V

    .line 1916
    const-string v26, "GsmSST"

    const-string v27, "NITZ: after Setting time of day"

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    .end local v14    # "millisSinceNitzReceived":J
    :cond_11
    const-string v26, "gsm.nitz.time"

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->saveNitzTime(J)V

    .line 1924
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1926
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_7

    :catchall_0
    move-exception v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v26
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
.end method


# virtual methods
.method public ShowRoamingWarning()V
    .locals 3

    .prologue
    .line 2252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2253
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@international_roaming_warning#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2255
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:string@dialog_alert_title#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, #android:string@no#t

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, #android:string@yes#t

    new-instance v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$5;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2295
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$6;-><init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->post(Ljava/lang/Runnable;)Z

    .line 2303
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->checkCorrectThread()V

    .line 296
    const-string v0, "ServiceStateTracker dispose"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnRestrictedStateChanged(Landroid/os/Handler;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 310
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2144
    const-string v0, "GsmServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreferredNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewMaxDataCalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewReasonDataDenied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGsmRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEmergencyOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZoneAfterNitz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNeedFixZoneAfterNitz:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNitzUpdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStartedGprsRegCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReportedGprsNoReg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowSpn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurShowPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2178
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 314
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 13

    .prologue
    const v12, 0x7fffffff

    .line 1701
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-ltz v10, :cond_0

    .line 1702
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X good mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1703
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    .line 1761
    :goto_0
    return-object v6

    .line 1705
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 1706
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v9, :cond_6

    .line 1719
    new-instance v6, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v6}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    .line 1720
    .local v6, "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 1721
    .local v7, "ci":Landroid/telephony/CellInfo;
    instance-of v10, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_2

    move-object v3, v7

    .line 1722
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .line 1723
    .local v3, "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 1724
    .local v0, "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v10

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1726
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1727
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret GSM info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1729
    .end local v0    # "cellIdentityGsm":Landroid/telephony/CellIdentityGsm;
    .end local v3    # "cellInfoGsm":Landroid/telephony/CellInfoGsm;
    :cond_2
    instance-of v10, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_3

    move-object v5, v7

    .line 1730
    check-cast v5, Landroid/telephony/CellInfoWcdma;

    .line 1731
    .local v5, "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 1732
    .local v2, "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v10

    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1734
    invoke-virtual {v2}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1735
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret WCDMA info="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1737
    .end local v2    # "cellIdentityWcdma":Landroid/telephony/CellIdentityWcdma;
    .end local v5    # "cellInfoWcdma":Landroid/telephony/CellInfoWcdma;
    :cond_3
    instance-of v10, v7, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    if-ltz v10, :cond_4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v10

    if-gez v10, :cond_1

    :cond_4
    move-object v4, v7

    .line 1740
    check-cast v4, Landroid/telephony/CellInfoLte;

    .line 1741
    .local v4, "cellInfoLte":Landroid/telephony/CellInfoLte;
    invoke-virtual {v4}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v1

    .line 1742
    .local v1, "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    if-eq v10, v12, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v10

    if-eq v10, v12, :cond_1

    .line 1744
    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v10

    invoke-virtual {v1}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 1746
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    .line 1748
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): possible LTE cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1754
    .end local v1    # "cellIdentityLte":Landroid/telephony/CellIdentityLte;
    .end local v4    # "cellInfoLte":Landroid/telephony/CellInfoLte;
    .end local v7    # "ci":Landroid/telephony/CellInfo;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X ret best answer cellLocOther="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1759
    .end local v6    # "cellLocOther":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCellLocation(): X empty mCellLoc and CellInfo mCellLoc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1761
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    goto/16 :goto_0
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 330
    const-string v18, "GsmSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received message "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] while being destroyed. Ignoring."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 334
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    .line 542
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 342
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v11

    .line 344
    .local v11, "networkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, #android:bool@skip_restoring_network_selection#t

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 349
    .local v15, "skipRestoringSelection":Z
    if-nez v15, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->restoreSavedNetworkSelection(Landroid/os/Message;)V

    .line 353
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto :goto_0

    .line 361
    .end local v11    # "networkType":I
    .end local v15    # "skipRestoringSelection":Z
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 366
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto :goto_0

    .line 373
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 377
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 378
    .local v4, "ar":Landroid/os/AsyncResult;
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 379
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 384
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 386
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_5

    .line 387
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v16, v18

    check-cast v16, [Ljava/lang/String;

    .line 388
    .local v16, "states":[Ljava/lang/String;
    const/4 v8, -0x1

    .line 389
    .local v8, "lac":I
    const/4 v5, -0x1

    .line 390
    .local v5, "cid":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    .line 392
    const/16 v18, 0x1

    :try_start_0
    aget-object v18, v16, v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 393
    const/16 v18, 0x1

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 395
    :cond_3
    const/16 v18, 0x2

    aget-object v18, v16, v18

    if-eqz v18, :cond_4

    const/16 v18, 0x2

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 396
    const/16 v18, 0x2

    aget-object v18, v16, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 402
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyLocationChanged()V

    .line 408
    .end local v5    # "cid":I
    .end local v8    # "lac":I
    .end local v16    # "states":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 398
    .restart local v5    # "cid":I
    .restart local v8    # "lac":I
    .restart local v16    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 399
    .local v7, "ex":Ljava/lang/NumberFormatException;
    const-string v18, "GsmSST"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error parsing location: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 415
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "cid":I
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    .end local v8    # "lac":I
    .end local v16    # "states":[Ljava/lang/String;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 417
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 423
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 427
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 429
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    const/16 v19, 0x0

    aget-object v14, v18, v19

    check-cast v14, Ljava/lang/String;

    .line 430
    .local v14, "nitzString":Ljava/lang/String;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/Object;

    check-cast v18, [Ljava/lang/Object;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 432
    .local v12, "nitzReceiveTime":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 439
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "nitzReceiveTime":J
    .end local v14    # "nitzString":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 443
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDontPollSignalStrength:Z

    .line 445
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 449
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_SIM_RECORDS_LOADED: what="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyOtaspChanged(I)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updatePhoneObject()V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_0

    .line 458
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 460
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    const/16 v19, 0xf

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 466
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 468
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const/16 v18, 0x15

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 469
    .local v10, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 473
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v10    # "message":Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 474
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 475
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    invoke-static/range {v18 .. v18}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v18

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 477
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Message;

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 482
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 484
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 485
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    check-cast v18, [I

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    .line 490
    :goto_2
    const/16 v18, 0x14

    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 491
    .restart local v10    # "message":Landroid/os/Message;
    const/16 v17, 0x7

    .line 493
    .local v17, "toggledNetworkType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 487
    .end local v10    # "message":Landroid/os/Message;
    .end local v17    # "toggledNetworkType":I
    :cond_6
    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_2

    .line 497
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isGprsConsistent(II)Z

    move-result v18

    if-nez v18, :cond_7

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 503
    .local v9, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v19, 0xc3bb

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v18

    const/16 v21, 0x1

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v18

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v20, v21

    invoke-static/range {v19 .. v20}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 505
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mReportedGprsNoReg:Z

    .line 507
    .end local v9    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mStartedGprsRegCheck:Z

    goto/16 :goto_0

    .line 503
    .restart local v9    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/16 v18, -0x1

    goto :goto_3

    .line 514
    .end local v9    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :sswitch_10
    const-string v18, "EVENT_RESTRICTED_STATE_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 518
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->onRestrictedStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 522
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_11
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    .line 523
    .local v6, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 524
    monitor-enter p0

    .line 525
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 526
    const-string v18, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 528
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 532
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 530
    :cond_9
    :try_start_2
    const-string v18, "EVENT_ALL_DATA_DISCONNECTED is stale"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 536
    .end local v6    # "dds":I
    :sswitch_12
    const-string v18, "EVENT_CHANGE_IMS_STATE:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_6
        0x6 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_9
        0xd -> :sswitch_0
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_a
        0x11 -> :sswitch_1
        0x12 -> :sswitch_b
        0x13 -> :sswitch_e
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_f
        0x17 -> :sswitch_10
        0x2d -> :sswitch_12
        0x3e9 -> :sswitch_11
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 27
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 732
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 735
    const/4 v8, 0x0

    .line 737
    .local v8, "err":Lcom/android/internal/telephony/CommandException$Error;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 738
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    check-cast v24, Lcom/android/internal/telephony/CommandException;

    check-cast v24, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v8

    .line 741
    :cond_2
    sget-object v24, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v24

    if-ne v8, v0, :cond_3

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 747
    :cond_3
    sget-object v24, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v24

    if-eq v8, v0, :cond_4

    .line 748
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "RIL implementation has returned an error where it must succeed"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 932
    .end local v8    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v26, v24, v25

    add-int/lit8 v26, v26, -0x1

    aput v26, v24, v25

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    if-nez v24, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    :cond_5
    const/16 v19, 0x1

    .line 949
    .local v19, "roaming":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredRoaming(Landroid/telephony/ServiceState;)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isSameNamedOperators(Landroid/telephony/ServiceState;)Z

    move-result v24

    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 951
    :cond_6
    const/16 v19, 0x0

    .line 954
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsNonRoaming(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 955
    const/16 v19, 0x0

    .line 960
    :cond_8
    :goto_3
    const/16 v24, 0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mShowRoamingMessage:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, #android:bool@config_regional_mcc_mnc_roaming_setting#t

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->ShowRoamingWarning()V

    .line 964
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mShowRoamingMessage:Z

    .line 967
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 969
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 752
    .end local v19    # "roaming":Z
    :cond_a
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 754
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v0, v24

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 755
    .local v20, "states":[Ljava/lang/String;
    const/4 v13, -0x1

    .line 756
    .local v13, "lac":I
    const/4 v5, -0x1

    .line 757
    .local v5, "cid":I
    const/16 v23, 0x0

    .line 758
    .local v23, "type":I
    const/16 v17, 0x4

    .line 759
    .local v17, "regState":I
    const/16 v16, -0x1

    .line 760
    .local v16, "reasonRegStateDenied":I
    const/4 v15, -0x1

    .line 761
    .local v15, "psc":I
    const/4 v6, 0x0

    .line 762
    .local v6, "cssIndicator":I
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v24, :cond_f

    .line 764
    const/16 v24, 0x0

    :try_start_1
    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 765
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 766
    const/16 v24, 0x1

    aget-object v24, v20, v24

    if-eqz v24, :cond_b

    const/16 v24, 0x1

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_b

    .line 767
    const/16 v24, 0x1

    aget-object v24, v20, v24

    const/16 v25, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 769
    :cond_b
    const/16 v24, 0x2

    aget-object v24, v20, v24

    if-eqz v24, :cond_c

    const/16 v24, 0x2

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_c

    .line 770
    const/16 v24, 0x2

    aget-object v24, v20, v24

    const/16 v25, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 774
    :cond_c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    const/16 v24, 0x3

    aget-object v24, v20, v24

    if-eqz v24, :cond_d

    .line 775
    const/16 v24, 0x3

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 778
    :cond_d
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_e

    const/16 v24, 0x7

    aget-object v24, v20, v24

    if-eqz v24, :cond_e

    .line 779
    const/16 v24, 0x7

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 781
    :cond_e
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    .line 782
    const/16 v24, 0xe

    aget-object v24, v20, v24

    if-eqz v24, :cond_f

    const/16 v24, 0xe

    aget-object v24, v20, v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_f

    .line 783
    const/16 v24, 0xe

    aget-object v24, v20, v24

    const/16 v25, 0x10

    invoke-static/range {v24 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 791
    :cond_f
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGsmRoaming:Z

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/telephony/ServiceState;->setState(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 796
    const/16 v24, 0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    const/16 v24, 0xd

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    :cond_10
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_11

    .line 800
    const/16 v24, 0xd

    :try_start_3
    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 802
    .local v18, "rejCode":I
    const/16 v24, 0xa

    move/from16 v0, v18

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 803
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " Posting Managed roaming intent sub = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 805
    new-instance v10, Landroid/content/Intent;

    const-string v24, "codeaurora.intent.action.ACTION_MANAGED_ROAMING_IND"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v10, "intent":Landroid/content/Intent;
    const-string v24, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v25

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 816
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "rejCode":I
    :cond_11
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, #android:bool@config_voice_capable#t

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 818
    .local v12, "isVoiceCapable":Z
    const/16 v24, 0xd

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    const/16 v24, 0xa

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    const/16 v24, 0xc

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    const/16 v24, 0xe

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    :cond_12
    if-eqz v12, :cond_13

    .line 823
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    .line 829
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13, v5}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 928
    .end local v5    # "cid":I
    .end local v6    # "cssIndicator":I
    .end local v12    # "isVoiceCapable":Z
    .end local v13    # "lac":I
    .end local v15    # "psc":I
    .end local v16    # "reasonRegStateDenied":I
    .end local v17    # "regState":I
    .end local v20    # "states":[Ljava/lang/String;
    .end local v23    # "type":I
    :catch_0
    move-exception v9

    .line 929
    .local v9, "ex":Ljava/lang/RuntimeException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 786
    .end local v9    # "ex":Ljava/lang/RuntimeException;
    .restart local v5    # "cid":I
    .restart local v6    # "cssIndicator":I
    .restart local v13    # "lac":I
    .restart local v15    # "psc":I
    .restart local v16    # "reasonRegStateDenied":I
    .restart local v17    # "regState":I
    .restart local v20    # "states":[Ljava/lang/String;
    .restart local v23    # "type":I
    :catch_1
    move-exception v9

    .line 787
    .local v9, "ex":Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "error parsing RegistrationState: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 811
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v9

    .line 812
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "error parsing regCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 825
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .restart local v12    # "isVoiceCapable":Z
    :cond_13
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    goto :goto_6

    .line 835
    .end local v5    # "cid":I
    .end local v6    # "cssIndicator":I
    .end local v12    # "isVoiceCapable":Z
    .end local v13    # "lac":I
    .end local v15    # "psc":I
    .end local v16    # "reasonRegStateDenied":I
    .end local v17    # "regState":I
    .end local v20    # "states":[Ljava/lang/String;
    .end local v23    # "type":I
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v0, v24

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 837
    .restart local v20    # "states":[Ljava/lang/String;
    const/16 v23, 0x0

    .line 838
    .restart local v23    # "type":I
    const/16 v17, 0x4

    .line 839
    .restart local v17    # "regState":I
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 840
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 841
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    if-lez v24, :cond_17

    .line 843
    const/16 v24, 0x0

    :try_start_6
    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 846
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_14

    const/16 v24, 0x3

    aget-object v24, v20, v24

    if-eqz v24, :cond_14

    .line 847
    const/16 v24, 0x3

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 849
    :cond_14
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_15

    const/16 v24, 0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 851
    const/16 v24, 0x4

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewReasonDataDenied:I

    .line 853
    :cond_15
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x6

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_16

    .line 854
    const/16 v24, 0x5

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewMaxDataCalls:I

    .line 857
    :cond_16
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_17

    .line 858
    const/16 v24, 0x6

    aget-object v24, v20, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 859
    .local v22, "tac":I
    const-string v24, "GsmSST"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Updated TAC:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", old TAC:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTac:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTac:I

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 862
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mTac:I

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->resetDataBlocked()V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 870
    .end local v22    # "tac":I
    :cond_17
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    .line 871
    .local v7, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 872
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDataRoaming:Z

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 875
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handlPollStateResultMessage: GsmSST setDataRegState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " regState="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " dataRadioTechnology="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    .end local v7    # "dataRegState":I
    :catch_3
    move-exception v9

    .line 867
    .restart local v9    # "ex":Ljava/lang/NumberFormatException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "error parsing GprsRegistrationState: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 883
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    .end local v17    # "regState":I
    .end local v20    # "states":[Ljava/lang/String;
    .end local v23    # "type":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v0, v24

    check-cast v0, [Ljava/lang/String;

    move-object v14, v0

    .line 885
    .local v14, "opNames":[Ljava/lang/String;
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    .line 887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v24

    if-eqz v24, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getPhoneId()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v4

    .line 889
    .local v4, "brandOverride":Ljava/lang/String;
    :goto_8
    if-eqz v4, :cond_19

    .line 890
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_POLL_STATE_OPERATOR: use brandOverride="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, v14, v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v4, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 887
    .end local v4    # "brandOverride":Ljava/lang/String;
    :cond_18
    const/4 v4, 0x0

    goto :goto_8

    .line 893
    .restart local v4    # "brandOverride":Ljava/lang/String;
    :cond_19
    const/16 v21, 0x0

    .line 894
    .local v21, "strOperatorLong":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, v14, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 895
    const-string v24, "EVENT_POLL_STATE_OPERATOR: use spnOverride"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, v14, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 904
    :goto_9
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "EVENT_POLL_STATE_OPERATOR: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v25, v14, v25

    const/16 v26, 0x2

    aget-object v26, v14, v26

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 897
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPlmnOverride:Lcom/android/internal/telephony/uicc/PlmnOverride;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, v14, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/PlmnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 898
    const-string v24, "EVENT_POLL_STATE_OPERATOR: use plmnOverride"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPlmnOverride:Lcom/android/internal/telephony/uicc/PlmnOverride;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v25, v14, v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/uicc/PlmnOverride;->getPlmn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto :goto_9

    .line 901
    :cond_1b
    const-string v24, "EVENT_POLL_STATE_OPERATOR: use value from ril"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 902
    const/16 v24, 0x0

    aget-object v21, v14, v24

    goto :goto_9

    .line 912
    .end local v4    # "brandOverride":Ljava/lang/String;
    .end local v14    # "opNames":[Ljava/lang/String;
    .end local v21    # "strOperatorLong":Ljava/lang/String;
    :sswitch_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, [I

    move-object/from16 v0, v24

    check-cast v0, [I

    move-object v11, v0

    .line 913
    .local v11, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    const/16 v24, 0x0

    aget v24, v11, v24

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    const/16 v24, 0x1

    :goto_a
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 914
    const/16 v24, 0x0

    aget v24, v11, v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/gsm/GSMPhone;->isManualNetSelAllowed()Z

    move-result v24

    if-nez v24, :cond_4

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 921
    const-string v24, " Forcing Automatic Network Selection, manual selection is not allowed"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 913
    :cond_1c
    const/16 v24, 0x0

    goto :goto_a

    .line 948
    .end local v11    # "ints":[I
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 956
    .restart local v19    # "roaming":Z
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/telephony/gsm/GSMPhone;->isMccMncMarkedAsRoaming(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 957
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 603
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 604
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 608
    return-void
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1689
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2134
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2139
    const-string v0, "GsmSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2105
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return-void

    .line 2109
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2111
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 2112
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 2113
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2114
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2115
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 2116
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2118
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2119
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2121
    :cond_3
    if-eqz v0, :cond_0

    .line 2122
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2123
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 2124
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2125
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2126
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x10

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 987
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 990
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$7;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1036
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 1040
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1041
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 1051
    :goto_0
    return-void

    .line 992
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 993
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 994
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 995
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 996
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 997
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 1001
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNewCellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->setStateInvalid()V

    .line 1003
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 1004
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mGotCountryCode:Z

    .line 1005
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mNitzUpdatedTime:Z

    .line 1006
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1009
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollStateDone()V

    .line 1020
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isIwlanFeatureAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 990
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 2188
    monitor-enter p0

    .line 2189
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_1

    .line 2190
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 2193
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2198
    :cond_0
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2199
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 2231
    .end local v0    # "dds":I
    :cond_1
    :goto_0
    monitor-exit p0

    .line 2233
    return-void

    .line 2203
    .restart local v0    # "dds":I
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2204
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2205
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2206
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->hangupIfAlive()V

    .line 2208
    :cond_3
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 2209
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2211
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2214
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 2216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 2218
    :cond_4
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2219
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2220
    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 2221
    const-wide/16 v2, 0x7530

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2222
    const-string v2, "Wait upto 30s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2223
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_0

    .line 2231
    .end local v0    # "dds":I
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2225
    .restart local v0    # "dds":I
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_5
    :try_start_1
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2226
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->hangupAndPowerOff()V

    .line 2227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 3
    .param p1, "registered"    # Z

    .prologue
    .line 2236
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 2237
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 2238
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 2240
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2241
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2242
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2243
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 2245
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 2250
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 2249
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceShuttingDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDesiredPowerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerOffDelayNeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 558
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v4, :cond_0

    .line 559
    const-string v4, "mAlarmSwitch == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 560
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 561
    .local v1, "context":Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 562
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 563
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 567
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_2

    .line 569
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 572
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPowerOffDelayNeed:Z

    if-eqz v4, :cond_4

    .line 573
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    if-nez v4, :cond_3

    .line 574
    const-string v4, "mImsRegistrationOnOff == true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 576
    .restart local v1    # "context":Landroid/content/Context;
    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 578
    .restart local v0    # "am":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_RADIO_OFF"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v1, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 581
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mAlarmSwitch:Z

    .line 582
    const-string v4, "Alarm setting"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 583
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0xbb8

    add-long/2addr v6, v8

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 586
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 587
    .local v2, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 590
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 591
    .restart local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V

    goto :goto_0

    .line 593
    .end local v2    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected updateSpnDisplay()V
    .locals 15

    .prologue
    const v11, #android:string@lockscreen_carrier_default#t

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 631
    .local v1, "iccRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v3, 0x0

    .line 632
    .local v3, "plmn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 633
    .local v5, "showPlmn":Z
    if-eqz v1, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/uicc/IccRecords;->getDisplayRule(Ljava/lang/String;)I

    move-result v4

    .line 634
    .local v4, "rule":I
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCombinedRegState()I

    move-result v0

    .line 635
    .local v0, "combinedRegState":I
    if-eq v0, v9, :cond_0

    if-ne v0, v13, :cond_7

    .line 637
    :cond_0
    const/4 v5, 0x1

    .line 638
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mEmergencyOnly:Z

    if-eqz v10, :cond_6

    .line 640
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, #android:string@emergency_calls_only#t

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 667
    :goto_2
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    .line 668
    .local v7, "spn":Ljava/lang/String;
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    and-int/lit8 v10, v4, 0x1

    if-ne v10, v9, :cond_b

    move v6, v9

    .line 673
    .local v6, "showSpn":Z
    :goto_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v10

    if-eq v10, v14, :cond_1

    if-eqz v5, :cond_2

    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 675
    :cond_1
    const/4 v7, 0x0

    .line 676
    const/4 v6, 0x0

    .line 680
    :cond_2
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    if-ne v5, v10, :cond_3

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    if-ne v6, v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 685
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: changed sending intent rule="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " showPlmn=\'%b\' plmn=\'%s\' showSpn=\'%b\' spn=\'%s\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    aput-object v3, v11, v9

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v11, v13

    aput-object v7, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 690
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 691
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v8, 0x20000000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    const-string v8, "showSpn"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 693
    const-string v8, "spn"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v8, "showPlmn"

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 695
    const-string v8, "plmn"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v8

    invoke-static {v2, v8}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 697
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 700
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowSpn:Z

    .line 701
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurShowPlmn:Z

    .line 702
    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 703
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 704
    return-void

    .end local v0    # "combinedRegState":I
    .end local v4    # "rule":I
    .end local v6    # "showSpn":Z
    .end local v7    # "spn":Ljava/lang/String;
    :cond_5
    move v4, v8

    .line 633
    goto/16 :goto_0

    .line 644
    .restart local v0    # "combinedRegState":I
    .restart local v4    # "rule":I
    :cond_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 649
    :cond_7
    if-nez v0, :cond_9

    .line 651
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    and-int/lit8 v10, v4, 0x2

    if-ne v10, v13, :cond_8

    move v5, v9

    :goto_5
    goto/16 :goto_2

    :cond_8
    move v5, v8

    goto :goto_5

    .line 657
    :cond_9
    const/4 v5, 0x1

    .line 658
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 660
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " plmn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 667
    :cond_a
    const-string v7, ""

    goto/16 :goto_3

    .restart local v7    # "spn":Ljava/lang/String;
    :cond_b
    move v6, v8

    .line 668
    goto/16 :goto_4
.end method

.method public compareTwoRadioTechnology(II)Z
    .locals 4
    .param p1, "nRadioTechnology1"    # I
    .param p2, "nRadioTechnology2"    # I

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xe

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eq p2, v2, :cond_0

    if-eq p1, v3, :cond_0

    if-ne p2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-le p1, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public mzGetNetworkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "OperatorNumeric"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v4, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v4, "locale":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .local v1, "locCountry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .local v2, "locLanguage":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/MzOperatorHelper;->getInstance()Landroid/telephony/MzOperatorHelper;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_r"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/telephony/MzOperatorHelper;->getOperatorAlphaLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "locPlmn":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .end local v1    # "locCountry":Ljava/lang/String;
    .end local v2    # "locLanguage":Ljava/lang/String;
    .end local v3    # "locPlmn":Ljava/lang/String;
    .end local v4    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
