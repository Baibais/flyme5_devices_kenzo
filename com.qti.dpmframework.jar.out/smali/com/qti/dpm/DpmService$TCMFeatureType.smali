.class final enum Lcom/qti/dpm/DpmService$TCMFeatureType;
.super Ljava/lang/Enum;
.source "DpmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/dpm/DpmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TCMFeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qti/dpm/DpmService$TCMFeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qti/dpm/DpmService$TCMFeatureType;

.field public static final enum OFF:Lcom/qti/dpm/DpmService$TCMFeatureType;

.field public static final enum ON:Lcom/qti/dpm/DpmService$TCMFeatureType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 171
    new-instance v0, Lcom/qti/dpm/DpmService$TCMFeatureType;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3, v2}, Lcom/qti/dpm/DpmService$TCMFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->OFF:Lcom/qti/dpm/DpmService$TCMFeatureType;

    .line 172
    new-instance v0, Lcom/qti/dpm/DpmService$TCMFeatureType;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2, v4}, Lcom/qti/dpm/DpmService$TCMFeatureType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->ON:Lcom/qti/dpm/DpmService$TCMFeatureType;

    .line 170
    new-array v0, v4, [Lcom/qti/dpm/DpmService$TCMFeatureType;

    sget-object v1, Lcom/qti/dpm/DpmService$TCMFeatureType;->OFF:Lcom/qti/dpm/DpmService$TCMFeatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qti/dpm/DpmService$TCMFeatureType;->ON:Lcom/qti/dpm/DpmService$TCMFeatureType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->$VALUES:[Lcom/qti/dpm/DpmService$TCMFeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 177
    iput p3, p0, Lcom/qti/dpm/DpmService$TCMFeatureType;->value:I

    .line 178
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qti/dpm/DpmService$TCMFeatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v0, Lcom/qti/dpm/DpmService$TCMFeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qti/dpm/DpmService$TCMFeatureType;

    return-object v0
.end method

.method public static values()[Lcom/qti/dpm/DpmService$TCMFeatureType;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/qti/dpm/DpmService$TCMFeatureType;->$VALUES:[Lcom/qti/dpm/DpmService$TCMFeatureType;

    invoke-virtual {v0}, [Lcom/qti/dpm/DpmService$TCMFeatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qti/dpm/DpmService$TCMFeatureType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/qti/dpm/DpmService$TCMFeatureType;->value:I

    return v0
.end method
