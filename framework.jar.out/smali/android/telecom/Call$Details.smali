.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final ADD_PARTICIPANT:I = 0x8000

.field public static final CALL_TYPE_MODIFIABLE:I = 0x20000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_GENERIC_CONFERENCE:I = 0x4000

.field public static final CAPABILITY_HIGH_DEF_AUDIO:I = 0x400

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_LOCAL:I = 0x80000

.field public static final CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_REMOTE:I = 0x100000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE:I = 0x200

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED:I = 0x10

.field public static final CAPABILITY_VoWIFI:I = 0x800

.field public static final FDN_ENABLED:I = 0x40000


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallCapabilities:I

.field private final mCallProperties:I

.field private final mCallSubstate:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConnectTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoState:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "handlePresentation"    # I
    .param p3, "callerDisplayName"    # Ljava/lang/String;
    .param p4, "callerDisplayNamePresentation"    # I
    .param p5, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p6, "capabilities"    # I
    .param p7, "properties"    # I
    .param p8, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p9, "connectTimeMillis"    # J
    .param p11, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p12, "videoState"    # I
    .param p13, "statusHints"    # Landroid/telecom/StatusHints;
    .param p14, "extras"    # Landroid/os/Bundle;
    .param p15, "callSubstate"    # I

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 482
    iput p2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 483
    iput-object p3, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 484
    iput p4, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 485
    iput-object p5, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 486
    iput p6, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 487
    iput p7, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 488
    iput-object p8, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 489
    iput-wide p9, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 490
    iput-object p11, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 491
    iput p12, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 492
    move-object/from16 v0, p13

    iput-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 493
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 494
    move/from16 v0, p15

    iput v0, p0, Landroid/telecom/Call$Details;->mCallSubstate:I

    .line 495
    return-void
.end method

.method public static can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 238
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 274
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 277
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 280
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 283
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 286
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    :cond_8
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 289
    const-string v1, " CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_9
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 292
    const-string v1, " CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_a
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 295
    const-string v1, " CAPABILITY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_b
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 298
    const-string v1, " CAPABILITY_VoWIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_c
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 301
    const-string v1, " CAPABILITY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_d
    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 304
    const-string v1, " CALL_TYPE_MODIFIABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_e
    const v1, 0x8000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 307
    const-string v1, " ADD_PARTICIPANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_f
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 249
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 424
    instance-of v2, p1, Landroid/telecom/Call$Details;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 425
    check-cast v0, Landroid/telecom/Call$Details;

    .line 426
    .local v0, "d":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallSubstate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallSubstate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 443
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_0
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallCapabilities()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    return v0
.end method

.method public getCallProperties()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    return v0
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/telecom/Call$Details;->mCallSubstate:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 382
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telecom/Call$Details;->mCallSubstate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "handlePresentation"    # I
    .param p3, "callerDisplayName"    # Ljava/lang/String;
    .param p4, "callerDisplayNamePresentation"    # I
    .param p5, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p6, "capabilities"    # I
    .param p7, "properties"    # I
    .param p8, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p9, "connectTimeMillis"    # J
    .param p11, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p12, "videoState"    # I
    .param p13, "statusHints"    # Landroid/telecom/StatusHints;
    .param p14, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    invoke-direct/range {v1 .. v18}, Landroid/telecom/Call$Details;-><init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JJLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;I)V

    return-void
.end method