.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullRestoreBuffer:[B

.field private mFullRestorePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullRestoreSetDir:Ljava/io/File;

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreToken:J

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 390
    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    return-void

    :array_0
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    .line 77
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 103
    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    .line 104
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 105
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 106
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 107
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "LocalTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELinux restorecon failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 535
    .local v0, "allFiles":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-nez v6, :cond_1

    .line 536
    :cond_0
    const/4 v2, 0x0

    .line 545
    :goto_0
    return-object v2

    .line 540
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v2, "contents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 542
    .local v3, "f":Ljava/io/File;
    new-instance v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v6, v3}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 544
    .end local v3    # "f":Ljava/io/File;
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private deleteContents(Ljava/io/File;)V
    .locals 6
    .param p1, "dirname"    # Ljava/io/File;

    .prologue
    .line 235
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 236
    .local v1, "contents":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 237
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 238
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 241
    invoke-direct {p0, v2}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 243
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method

.method private resetFullRestoreState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 562
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 563
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 564
    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 565
    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 299
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, -0x3e8

    .line 296
    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 656
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 657
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 660
    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 661
    return v2
.end method

.method public cancelFullBackup()V
    .locals 2

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 382
    .local v0, "archive":Ljava/io/File;
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    .line 383
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 386
    :cond_0
    return-void
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 9
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 252
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v5, "packageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 254
    .local v2, "fileset":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 255
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 256
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 261
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    new-instance v5, Ljava/io/File;

    .end local v5    # "packageDir":Ljava/io/File;
    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v8, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    .restart local v5    # "packageDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 263
    .local v6, "tarballs":[Ljava/io/File;
    if-eqz v6, :cond_3

    .line 264
    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 265
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 267
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 270
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_3
    const/4 v7, 0x0

    return v7
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    const v1, 0x10406e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .locals 1

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 551
    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 555
    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 18

    .prologue
    .line 394
    sget-object v12, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    new-array v4, v12, [J

    .line 395
    .local v4, "existing":[J
    const/4 v8, 0x0

    .line 398
    .local v8, "num":I
    sget-object v2, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    .local v2, "arr$":[J
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v9, v8

    .end local v8    # "num":I
    .local v9, "num":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-wide v10, v2, v6

    .line 399
    .local v10, "token":J
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 400
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "num":I
    .restart local v8    # "num":I
    aput-wide v10, v4, v9

    .line 398
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move v9, v8

    .end local v8    # "num":I
    .restart local v9    # "num":I
    goto :goto_0

    .line 404
    .end local v10    # "token":J
    :cond_0
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "num":I
    .restart local v8    # "num":I
    const-wide/16 v12, 0x1

    aput-wide v12, v4, v9

    .line 406
    new-array v3, v8, [Landroid/app/backup/RestoreSet;

    .line 407
    .local v3, "available":[Landroid/app/backup/RestoreSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v12, v3

    if-ge v5, v12, :cond_1

    .line 408
    new-instance v12, Landroid/app/backup/RestoreSet;

    const-string v13, "Local disk image"

    const-string v14, "flash"

    aget-wide v16, v4, v5

    move-wide/from16 v0, v16

    invoke-direct {v12, v13, v14, v0, v1}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v12, v3, v5

    .line 407
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 410
    :cond_1
    return-object v3

    .end local v3    # "available":[Landroid/app/backup/RestoreSet;
    .end local v5    # "i":I
    .end local v8    # "num":I
    .restart local v9    # "num":I
    .restart local v10    # "token":J
    :cond_2
    move v8, v9

    .end local v9    # "num":I
    .restart local v8    # "num":I
    goto :goto_1
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 416
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 7
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 591
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 592
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Asked for full restore data for non-stream package"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 596
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 599
    .local v3, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 601
    .local v0, "dataset":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    .line 609
    const/16 v4, 0x800

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    .line 614
    .end local v0    # "dataset":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 615
    .local v2, "nRead":I
    if-gez v2, :cond_2

    .line 617
    const/4 v2, -0x1

    .line 638
    .end local v2    # "nRead":I
    :goto_0
    return v2

    .line 602
    .restart local v0    # "dataset":Ljava/io/File;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "LocalTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to read archive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/16 v2, -0x3ea

    goto :goto_0

    .line 618
    .end local v0    # "dataset":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "nRead":I
    :cond_2
    if-nez v2, :cond_3

    .line 622
    :try_start_2
    const-string v4, "LocalTransport"

    const-string v5, "read() of archive file returned 0; treating as EOF"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v2, -0x1

    goto :goto_0

    .line 628
    :cond_3
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 630
    .end local v2    # "nRead":I
    :catch_1
    move-exception v1

    .line 631
    .restart local v1    # "e":Ljava/io/IOException;
    const/16 v2, -0x3e8

    goto :goto_0

    .line 632
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 14
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v10, -0x3e8

    .line 471
    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v11, :cond_0

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "startRestore not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 472
    :cond_0
    iget v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v11, :cond_1

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "nextRestorePackage not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 473
    :cond_1
    iget v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 474
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 476
    :cond_2
    new-instance v8, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    iget-object v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v13, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v12, v12, v13

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    .local v8, "packageDir":Ljava/io/File;
    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 485
    .local v0, "blobs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/backup/LocalTransport$DecodedFilename;>;"
    if-nez v0, :cond_3

    .line 486
    const-string v11, "LocalTransport"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No keys for package: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_0
    return v10

    .line 492
    :cond_3
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 494
    .local v7, "out":Landroid/app/backup/BackupDataOutput;
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    .line 495
    .local v6, "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    iget-object v3, v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    .line 496
    .local v3, "f":Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v9, v12

    .line 499
    .local v9, "size":I
    new-array v1, v9, [B

    .line 500
    .local v1, "buf":[B
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 502
    iget-object v11, v6, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v7, v11, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 503
    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 509
    .end local v1    # "buf":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    .end local v9    # "size":I
    :catch_0
    move-exception v2

    .line 510
    .local v2, "e":Ljava/io/IOException;
    const-string v11, "LocalTransport"

    const-string v12, "Unable to read backup records"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 505
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :catchall_0
    move-exception v11

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    throw v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 508
    .end local v3    # "f":Ljava/io/File;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "keyEntry":Lcom/android/internal/backup/LocalTransport$DecodedFilename;
    :cond_4
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public initializeDevice()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 8

    .prologue
    .line 434
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "startRestore not called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 436
    :cond_0
    const/4 v1, 0x0

    .line 437
    .local v1, "found":Z
    :cond_1
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 438
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 442
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "contents":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    .line 445
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 446
    const/4 v1, 0x1

    .line 449
    :cond_2
    if-nez v1, :cond_3

    .line 451
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    .local v2, "maybeFullData":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 454
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    .line 455
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    .line 456
    const/4 v1, 0x1

    .line 460
    .end local v2    # "maybeFullData":Ljava/io/File;
    :cond_3
    if-eqz v1, :cond_1

    .line 461
    new-instance v4, Landroid/app/backup/RestoreDescription;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    .line 466
    .end local v0    # "contents":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_4
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    goto :goto_0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "data"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 170
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v11, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v9, "packageDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 177
    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    .line 179
    .local v3, "changeSet":Landroid/app/backup/BackupDataInput;
    const/16 v2, 0x200

    .line 180
    .local v2, "bufSize":I
    :try_start_0
    new-array v1, v2, [B

    .line 181
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 182
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "key":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 184
    .local v0, "base64Key":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v7, "entityFile":Ljava/io/File;
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    .line 191
    .local v4, "dataSize":I
    if-ltz v4, :cond_2

    .line 192
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 193
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 195
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v6, "entity":Ljava/io/FileOutputStream;
    if-le v4, v2, :cond_1

    .line 198
    move v2, v4

    .line 199
    new-array v1, v2, [B

    .line 201
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v3, v1, v10, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v6, v1, v10, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 226
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v1    # "buf":[B
    .end local v4    # "dataSize":I
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 228
    .local v5, "e":Ljava/io/IOException;
    const-string v10, "LocalTransport"

    const-string v11, "Exception reading backup input:"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    const/16 v10, -0x3e8

    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    return v10

    .line 215
    .restart local v0    # "base64Key":Ljava/lang/String;
    .restart local v1    # "buf":[B
    .restart local v4    # "dataSize":I
    .restart local v6    # "entity":Ljava/io/FileOutputStream;
    .restart local v7    # "entityFile":Ljava/io/File;
    .restart local v8    # "key":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 216
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_3
    const-string v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update key file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    const/16 v10, -0x3e8

    .line 219
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v10

    .line 222
    .end local v6    # "entity":Ljava/io/FileOutputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 225
    .end local v0    # "base64Key":Ljava/lang/String;
    .end local v4    # "dataSize":I
    .end local v7    # "entityFile":Ljava/io/File;
    .end local v8    # "key":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 6
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/16 v3, -0x3e8

    .line 313
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_0

    .line 314
    const-string v4, "LocalTransport"

    const-string v5, "Attempt to initiate full backup while one is in progress"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_0
    return v3

    .line 326
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 327
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    .line 336
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 337
    .local v1, "tarball":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    .local v2, "tarstream":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    .line 342
    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 344
    const/4 v3, 0x0

    goto :goto_0

    .line 328
    .end local v1    # "tarball":Ljava/io/File;
    .end local v2    # "tarstream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "LocalTransport"

    const-string v5, "Unable to process socket for full backup"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_0
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 147
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .prologue
    .line 308
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 7
    .param p1, "numBytes"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x3e8

    .line 349
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    if-nez v4, :cond_0

    .line 350
    const-string v3, "LocalTransport"

    const-string v4, "Attempted sendBackupData before performFullBackup"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_0
    return v2

    .line 354
    :cond_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v4, v4

    if-le p1, v4, :cond_1

    .line 355
    new-array v4, p1, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    .line 357
    :cond_1
    :goto_1
    if-lez p1, :cond_3

    .line 359
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 360
    .local v1, "nRead":I
    if-gez v1, :cond_2

    .line 362
    const-string v3, "LocalTransport"

    const-string v4, "Unexpected EOD; failing backup"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    .end local v1    # "nRead":I
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "LocalTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error handling backup data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "nRead":I
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    sub-int/2addr p1, v1

    goto :goto_1

    .end local v1    # "nRead":I
    :cond_3
    move v2, v3

    .line 372
    goto :goto_0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 3
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .prologue
    .line 423
    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    .line 424
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    .line 425
    iput-wide p1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreToken:J

    .line 426
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    .line 428
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
