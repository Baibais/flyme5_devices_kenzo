.class public final Landroid/bluetooth/BluetoothMasInstance;
.super Ljava/lang/Object;
.source "BluetoothMasInstance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMasInstance$MessageType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothMasInstance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mId:I

.field private final mL2capPsm:I

.field private final mMsgTypes:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/bluetooth/BluetoothMasInstance$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothMasInstance$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothMasInstance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;III)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "channel"    # I
    .param p4, "msgTypes"    # I
    .param p5, "l2capPsm"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    .line 32
    iput-object p2, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    .line 33
    iput p3, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    .line 34
    iput p4, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    .line 35
    iput p5, p0, Landroid/bluetooth/BluetoothMasInstance;->mL2capPsm:I

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 40
    instance-of v1, p1, Landroid/bluetooth/BluetoothMasInstance;

    if-eqz v1, :cond_0

    .line 41
    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    check-cast p1, Landroid/bluetooth/BluetoothMasInstance;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 43
    :cond_0
    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    return v0
.end method

.method public getL2capPsm()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mL2capPsm:I

    return v0
.end method

.method public getMsgTypes()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    return v0
.end method

.method public msgSupported(I)Z
    .locals 1
    .param p1, "msg"    # I

    .prologue
    .line 108
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothMasInstance;->mL2capPsm:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 73
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mMsgTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/bluetooth/BluetoothMasInstance;->mL2capPsm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    return-void
.end method
