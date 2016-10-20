.class public final Lcom/qti/dpm/DpmNsrm;
.super Ljava/lang/Object;
.source "DpmNsrm.java"


# static fields
.field private static final MAX_FILE_PATH_LENGTH:I = 0x400

.field private static final MAX_NSRM_FILE_SIZE:J = 0xc800L

.field public static final NSRM_FEATURE_OFF:I = 0x1

.field public static final NSRM_FEATURE_SYNC_CONNECT_DNS:I = 0x2

.field public static final NSRM_FEATURE_SYNC_CONNECT_DNS_WRITE:I = 0x3

.field public static final POLICY_TYPE_NSRM:I = 0x1

.field private static final SUB_TYPE:Ljava/lang/String; = "DPM:NSRM"

.field private static isNsrmConfigUpdateBusy:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDpm:Lcom/qti/dpm/DpmService;

.field private mNSRMFeatureEnabled:I

.field private mNSRMFeatureRequestedState:I

.field mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

.field private nsrmConfigHasBeenInit:Z

.field private nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpm"    # Lcom/qti/dpm/DpmService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    .line 25
    iput-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 31
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 32
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    .line 41
    iput-object p1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    .line 44
    new-instance v0, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-direct {v0, v1, v2}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;-><init>(Landroid/content/Context;Lcom/qti/dpm/DpmService;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    .line 45
    new-instance v0, Lcom/qti/dpm/DpmNsrmConfigParser;

    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qti/dpm/DpmNsrmConfigParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    .line 46
    return-void
.end method

.method private setPolicyConfigUpdateBusy(IZ)V
    .locals 3
    .param p1, "policyType"    # I
    .param p2, "tryLater"    # Z

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 176
    :goto_0
    return-void

    .line 168
    :pswitch_0
    monitor-enter p0

    .line 169
    :try_start_0
    sput-boolean p2, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNsrmConfigUpdateBusy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateNsrmConfig(Ljava/lang/String;)I
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    const/4 v0, -0x1

    .line 143
    .local v0, "retVal":I
    sget-boolean v1, Lcom/qti/dpm/DpmNsrm;->isNsrmConfigUpdateBusy:Z

    if-nez v1, :cond_3

    .line 144
    const-string v1, "DPM:NSRM"

    const-string v2, "Updating NSRM Config"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "DPM:NSRM"

    const-string v2, "nsrmConfigParser object is null"

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v1, -0x1

    .line 162
    :goto_0
    return v1

    .line 149
    :cond_0
    invoke-direct {p0, v3, v3}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 150
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-virtual {v1, p1}, Lcom/qti/dpm/DpmNsrmConfigParser;->updateConfig(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v1}, Lcom/qti/dpm/DpmService;->nsrmConfigRefresh()Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    const/4 v0, -0x1

    .line 153
    invoke-direct {p0, v3, v4}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    :cond_1
    :goto_1
    move v1, v0

    .line 162
    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    goto :goto_1

    .line 159
    :cond_3
    const-string v1, "DPM:NSRM"

    const-string v2, "Previous request in process try later..."

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v1, -0x2

    goto :goto_0
.end method


# virtual methods
.method public getNSRMEnabled()I
    .locals 2

    .prologue
    .line 115
    const-string v0, "DPM:NSRM"

    const-string v1, "getNSRMEnabled()"

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v0, v1}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const/4 v0, -0x4

    monitor-exit p0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    monitor-exit p0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPolicyVersion(I)I
    .locals 3
    .param p1, "policyType"    # I

    .prologue
    .line 65
    packed-switch p1, :pswitch_data_0

    .line 73
    const-string v0, "DPM:NSRM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PolicyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v1, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v0, v1}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const/4 v0, -0x4

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/qti/dpm/DpmNsrmConfigParser$Version;->getInt()I

    move-result v0

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public handleFeatureStatusNotification(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    .local v0, "featureStatus":I
    monitor-enter p0

    .line 181
    :try_start_0
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 182
    iput v0, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleFeatureStatusSetResponse(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 190
    .local v1, "featureStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .local v0, "error":I
    const-string v3, "DPM:NSRM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleFeatureStatusSetResponse(): feature status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qti/dpm/DpmMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iput v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 195
    iput v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget v2, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureEnabled:I

    .line 198
    .local v2, "state":I
    iget-object v3, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v3, v6, v6, v2}, Lcom/qti/dpm/DpmService;->sendPrefChangedBroadcast(III)V

    .line 199
    return-void

    .line 196
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public handleNsrmRefreshResponse(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    .line 203
    const-string v2, "DPM:NSRM"

    const-string v3, "handleNsrmrefreshResponse called"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "policy":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 206
    .local v1, "result":I
    if-ne v0, v4, :cond_0

    .line 209
    const/4 v2, 0x0

    invoke-direct {p0, v4, v2}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 211
    :cond_0
    return-void
.end method

.method public nsrmPostInit()V
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/qti/dpm/DpmNsrm;->setPolicyConfigUpdateBusy(IZ)V

    .line 51
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigParser:Lcom/qti/dpm/DpmNsrmConfigParser;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrmConfigParser;->initialize()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    .line 53
    iget-boolean v0, p0, Lcom/qti/dpm/DpmNsrm;->nsrmConfigHasBeenInit:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmService;->nsrmConfigRefresh()Z

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mNsrmEventHdlr:Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;

    invoke-virtual {v0}, Lcom/qti/dpm/DpmNsrmBackgroundEventHdlr;->recoverNSRMEventStates()V

    .line 61
    :cond_1
    return-void
.end method

.method public setNSRMEnabled(I)I
    .locals 4
    .param p1, "nsrmSetType"    # I

    .prologue
    const/16 v0, 0x3e8

    .line 125
    const-string v1, "DPM:NSRM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNSRMEnabled() nsrmSetType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qti/dpm/DpmMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v2, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v1, v2}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const/4 v0, -0x4

    monitor-exit p0

    .line 136
    :goto_0
    return v0

    .line 130
    :cond_0
    iget v1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    if-ne v1, p1, :cond_1

    .line 131
    monitor-exit p0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 133
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    .line 135
    iget-object v1, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const/4 v2, 0x3

    iget v3, p0, Lcom/qti/dpm/DpmNsrm;->mNSRMFeatureRequestedState:I

    invoke-virtual {v1, v2, v3}, Lcom/qti/dpm/DpmService;->requestFeatureSettingsChange(II)Z

    .line 136
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updatePolicy(ILjava/lang/String;)I
    .locals 6
    .param p1, "policyType"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_0

    .line 81
    const-string v2, "DPM:NSRM"

    const-string v3, "Path length too long"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v2, -0x7

    .line 110
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 87
    .local v1, "uid":I
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const-string v2, "/system/etc/dpm/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    const-string v2, "/data/dpm/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x3e8

    if-le v1, v2, :cond_2

    .line 89
    const-string v2, "DPM:NSRM"

    const-string v3, "This path is not allowed to access"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v2, -0x6

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "file":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    .line 109
    const-string v2, "DPM:NSRM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PolicyType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v2, -0x3

    goto :goto_0

    .line 97
    :pswitch_0
    iget-object v2, p0, Lcom/qti/dpm/DpmNsrm;->mDpm:Lcom/qti/dpm/DpmService;

    sget-object v3, Lcom/qti/dpm/DpmService$FeatureType;->NSRM:Lcom/qti/dpm/DpmService$FeatureType;

    invoke-virtual {v2, v3}, Lcom/qti/dpm/DpmService;->checkFeatureEnabled(Lcom/qti/dpm/DpmService$FeatureType;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 98
    const/4 v2, -0x4

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0xc800

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 102
    const-string v2, "DPM:NSRM"

    const-string v3, "File size not supported"

    invoke-static {v2, v3}, Lcom/qti/dpm/DpmMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v2, -0x5

    goto :goto_0

    .line 106
    :cond_4
    invoke-direct {p0, p2}, Lcom/qti/dpm/DpmNsrm;->updateNsrmConfig(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
