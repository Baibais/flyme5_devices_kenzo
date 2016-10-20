.class Landroid/media/MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1051
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1052
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1053
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1054
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1055
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1056
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1069
    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 1065
    const/16 v0, 0xc

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1058
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1059
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1077
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 1078
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1073
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1074
    return-void
.end method
