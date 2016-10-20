.class public Landroid/drm/OmaDrmHelper;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;,
        Landroid/drm/OmaDrmHelper$OmdDrmConstraints;,
        Landroid/drm/OmaDrmHelper$OmaDrmStrings;,
        Landroid/drm/OmaDrmHelper$DrmDeliveryType;
    }
.end annotation


# static fields
.field private static final ACTION_STRING_COPY_DATA:Ljava/lang/String; = "copy"

.field public static final DRM_MIMETYPE_RIGHTS_WXML:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field public static final DRM_MIMETYPE_RIGHTS_XML:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final EXTENSION_DCF:Ljava/lang/String; = ".dcf"

.field public static final EXTENSION_DM:Ljava/lang/String; = ".dm"

.field public static final EXTENSION_FL:Ljava/lang/String; = ".fl"

.field private static final FAKE_ACTION:Ljava/lang/String; = "0"

.field public static final MIDI_MIME_TYPES:[Ljava/lang/String;

.field public static final MIMETYPE_DRM_CONTENT:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static OMA_DRM_ENGINE_APP:Ljava/lang/String; = null

.field private static final OMA_DRM_SCHEMA:Ljava/lang/String; = "omadrm://"

.field public static final TAG:Ljava/lang/String; = "OmaDrm/OmaDrmHelper"

.field private static sIsOmaDrmEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    const-string v6, "com.oma.drm"

    sput-object v6, Landroid/drm/OmaDrmHelper;->OMA_DRM_ENGINE_APP:Ljava/lang/String;

    .line 96
    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "audio/mid"

    aput-object v7, v6, v9

    const-string v7, "audio/midi"

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const-string v8, "audio/x-mid"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "audio/x-midi"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "audio/sp-mid"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "audio/sp-midi"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "audio/imy"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "audio/imelody"

    aput-object v8, v6, v7

    sput-object v6, Landroid/drm/OmaDrmHelper;->MIDI_MIME_TYPES:[Ljava/lang/String;

    .line 100
    sput-boolean v9, Landroid/drm/OmaDrmHelper;->sIsOmaDrmEnabled:Z

    .line 103
    new-instance v0, Ljava/io/File;

    const-string v6, "/vendor/lib/drm/libomadrmengine.so"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "file1":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, "/vendor/lib64/drm/libomadrmengine.so"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "file2":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/lib/drm/libomadrmengine.so"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v2, "file3":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v6, "/system/lib64/drm/libomadrmengine.so"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v3, "file4":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    :cond_0
    sput-boolean v10, Landroid/drm/OmaDrmHelper;->sIsOmaDrmEnabled:Z

    .line 110
    new-instance v4, Ljava/io/File;

    const-string v6, "/system/lib/libomadrmhelper_jni.so"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v4, "fileomadrmhelper1":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/lib64/libomadrmhelper_jni.so"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, "fileomadrmhelper2":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 115
    :cond_1
    const-string/jumbo v6, "omadrmhelper_jni"

    invoke-static {v6}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 118
    .end local v4    # "fileomadrmhelper1":Ljava/io/File;
    .end local v5    # "fileomadrmhelper2":Ljava/io/File;
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/drm/OmaDrmHelper;->OMA_DRM_ENGINE_APP:Ljava/lang/String;

    return-object v0
.end method

.method private static buyLicense(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const v1, 0x1080027

    .line 1270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "license_expired"

    invoke-static {p0, v1}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "license_renew_not_possible"

    invoke-static {p0, v1}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Landroid/drm/OmaDrmHelper$4;

    invoke-direct {v2, p3}, Landroid/drm/OmaDrmHelper$4;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/drm/OmaDrmHelper$3;

    invoke-direct {v1, p3}, Landroid/drm/OmaDrmHelper$3;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1359
    :goto_0
    return-void

    .line 1303
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "license_expired"

    invoke-static {p0, v1}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "license_renew"

    invoke-static {p0, v1}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Landroid/drm/OmaDrmHelper$7;

    invoke-direct {v2, p1, p0, p2}, Landroid/drm/OmaDrmHelper$7;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Landroid/drm/OmaDrmHelper$6;

    invoke-direct {v2, p3}, Landroid/drm/OmaDrmHelper$6;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Landroid/drm/OmaDrmHelper$5;

    invoke-direct {v1, p3}, Landroid/drm/OmaDrmHelper$5;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static final checkRightsStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v3, -0x1

    .line 402
    .local v3, "status":I
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_0
    new-instance v1, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v1, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    .end local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .local v1, "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_1
    invoke-static {v1, p1, p2}, Landroid/drm/OmaDrmHelper;->checkRightsStatus(Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 410
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 415
    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :cond_0
    :goto_0
    return v3

    .line 407
    .restart local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "OmaDrm/OmaDrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while checking rights. Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    goto :goto_0

    .line 410
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_1
    throw v4

    .line 410
    .end local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    goto :goto_2

    .line 407
    .end local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v0    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    goto :goto_1
.end method

.method public static final checkRightsStatus(Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "drmClient"    # Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x1

    .line 423
    const/4 v0, -0x1

    .line 424
    .local v0, "status":I
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/drm/OmaDrmHelper;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 426
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0, p1, v3}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 432
    :cond_2
    invoke-virtual {p0, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 433
    invoke-static {p2}, Landroid/drm/OmaDrmHelper;->isSupportedMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    const-string v1, "image"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {p0, p1, v3}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 438
    :cond_3
    invoke-virtual {p0, p1, v2}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static consumeDrmRights(Ljava/lang/String;)Z
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 999
    const/4 v4, 0x0

    .line 1000
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1002
    .local v6, "result":Z
    const/4 v1, 0x0

    .line 1003
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1004
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1005
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    move-object v4, v5

    .line 1008
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/drm/OmaDrmHelper;->nativeConsumeDrmRights(Ljava/io/FileDescriptor;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 1012
    if-eqz v4, :cond_1

    .line 1014
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1020
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return v6

    .line 1015
    .restart local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1009
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 1010
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to decode drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1012
    if-eqz v4, :cond_1

    .line 1014
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1015
    :catch_2
    move-exception v0

    .line 1016
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1012
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_2

    .line 1014
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1017
    :cond_2
    :goto_3
    throw v7

    .line 1015
    :catch_3
    move-exception v0

    .line 1016
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OmaDrm/OmaDrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to close drm file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1012
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1009
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    const-string v0, "OmaDrm/OmaDrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not consume rights from non-drm file. path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->consumeDrmRights(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static consumeDrmRightsNonBlocking(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/drm/OmaDrmHelper$2;

    invoke-direct {v1, p0}, Landroid/drm/OmaDrmHelper$2;-><init>(Ljava/lang/String;)V

    const-string v2, "consumeDrmRightsNonBlocking"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1033
    const/4 v0, 0x1

    return v0
.end method

.method public static final copyData(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 948
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 949
    new-instance v0, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 952
    .local v0, "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_0
    const-string v1, "OmaDrm/OmaDrmHelper"

    const-string v2, "Copy data called"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-static {v0, p1, p2}, Landroid/drm/OmaDrmHelper;->copyData(Landroid/drm/DrmManagerClient;Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 955
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 960
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :cond_0
    :goto_0
    return v1

    .line 955
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 956
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_1
    throw v1

    .line 960
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final copyData(Landroid/drm/DrmManagerClient;Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 6
    .param p0, "client"    # Landroid/drm/DrmManagerClient;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 965
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    if-eqz p0, :cond_3

    .line 966
    const-string v3, "OmaDrm/OmaDrmHelper"

    const-string v4, "Copy data called"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "omadrm://copy0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "actionPath":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 971
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Given path should be non null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 975
    :cond_1
    const/4 v2, 0x0

    .line 978
    .local v2, "info":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getInternalInfo(Ljava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 983
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 984
    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 985
    const-string v3, "OmaDrm/OmaDrmHelper"

    const-string v4, "Copy drm data success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/4 v3, 0x1

    .line 992
    .end local v0    # "actionPath":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :goto_1
    return v3

    .line 979
    .restart local v0    # "actionPath":Ljava/lang/String;
    .restart local v2    # "info":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copy data failed! Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 988
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v3, "OmaDrm/OmaDrmHelper"

    const-string v4, "Copy drm data failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    .end local v0    # "actionPath":Ljava/lang/String;
    .end local v2    # "info":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static final copyData(Landroid/drm/DrmManagerClient;[BLjava/io/FileDescriptor;)Z
    .locals 1
    .param p0, "client"    # Landroid/drm/DrmManagerClient;
    .param p1, "bytes"    # [B
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 940
    if-eqz p1, :cond_0

    .line 941
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0, v0, p2}, Landroid/drm/OmaDrmHelper;->copyData(Landroid/drm/DrmManagerClient;Ljava/lang/String;Ljava/io/FileDescriptor;)Z

    move-result v0

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isShareable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 466
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode non-drm file. path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    :goto_0
    return-object v2

    .line 471
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->getDrmDecryptedData(Ljava/lang/String;)[B

    move-result-object v0

    .line 472
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 473
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, p1}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 476
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode non-drm file. error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static formatMsg(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "constraints"    # Landroid/content/ContentValues;

    .prologue
    .line 1217
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1218
    const/4 v7, 0x0

    .line 1264
    :goto_0
    return-object v7

    .line 1220
    :cond_0
    const/4 v0, 0x0

    .line 1221
    .local v0, "count":I
    const-wide/16 v4, 0x0

    .line 1222
    .local v4, "interval":J
    const/4 v6, 0x0

    .line 1223
    .local v6, "startDate":Ljava/util/Date;
    const/4 v1, 0x0

    .line 1225
    .local v1, "endDate":Ljava/util/Date;
    const-string v7, "count"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1226
    const-string/jumbo v7, "startDateTime"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1228
    .local v8, "startDateL":J
    const-string v7, "endDateTime"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1229
    .local v2, "endDateL":J
    const-string v7, "interval"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1231
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 1232
    new-instance v6, Ljava/util/Date;

    .end local v6    # "startDate":Ljava/util/Date;
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1235
    .restart local v6    # "startDate":Ljava/util/Date;
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-lez v7, :cond_2

    .line 1236
    new-instance v1, Ljava/util/Date;

    .end local v1    # "endDate":Ljava/util/Date;
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1239
    .restart local v1    # "endDate":Ljava/util/Date;
    :cond_2
    if-lez v0, :cond_3

    .line 1240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "count"

    invoke-static {p0, v10}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1244
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v7, v4, v10

    if-lez v7, :cond_4

    .line 1245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "interval"

    invoke-static {p0, v10}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "seconds"

    invoke-static {p0, v10}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1251
    :cond_4
    if-eqz v6, :cond_5

    .line 1252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "start_date"

    invoke-static {p0, v10}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1259
    :cond_5
    if-eqz v1, :cond_6

    .line 1260
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "end_date"

    invoke-static {p0, v10}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ": "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\n\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    move-object v7, p1

    .line 1264
    goto/16 :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/drm/OmaDrmHelper;->getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmap(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v2, 0x0

    .line 494
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 495
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode non-drm file. path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    :goto_0
    return-object v2

    .line 498
    :cond_1
    if-nez p1, :cond_2

    .line 499
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    .end local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 500
    .restart local p1    # "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 503
    :cond_2
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->getDrmDecryptedData(Ljava/lang/String;)[B

    move-result-object v0

    .line 505
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 506
    const/4 v3, 0x0

    :try_start_0
    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 508
    :catch_0
    move-exception v1

    .line 509
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not decode non-drm file. error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDrmDecryptedData(Ljava/lang/String;)[B
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1040
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1041
    const/4 v6, 0x0

    .line 1064
    :cond_0
    :goto_0
    return-object v6

    .line 1043
    :cond_1
    const/4 v4, 0x0

    .line 1044
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 1046
    .local v6, "result":[B
    const/4 v1, 0x0

    .line 1047
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1049
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    move-object v4, v5

    .line 1052
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    invoke-static {v1}, Landroid/drm/OmaDrmHelper;->nativeGetDrmDecryptedData(Ljava/io/FileDescriptor;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1056
    if-eqz v4, :cond_0

    .line 1058
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1053
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 1054
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to decode drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1056
    if-eqz v4, :cond_0

    .line 1058
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1059
    :catch_2
    move-exception v0

    .line 1060
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "OmaDrm/OmaDrmHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close drm file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1056
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_3

    .line 1058
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1061
    :cond_3
    :goto_3
    throw v7

    .line 1059
    :catch_3
    move-exception v0

    .line 1060
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "OmaDrm/OmaDrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to close drm file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1056
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1053
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getDrmImageBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 519
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    const-string v2, "OmaDrm/OmaDrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :goto_0
    return-object v1

    .line 525
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->getDrmDecryptedData(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OmaDrm/OmaDrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not decode non-drm file. Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getDrmMidiFilePath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cachePath"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 585
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p0, :cond_1

    .line 586
    invoke-static {p0, p1, p3}, Landroid/drm/OmaDrmHelper;->isDrmMidiFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->getDrmDecryptedData(Ljava/lang/String;)[B

    move-result-object v1

    .line 588
    .local v1, "data":[B
    const/4 v3, 0x0

    .line 589
    .local v3, "out":Ljava/io/FileOutputStream;
    if-eqz v1, :cond_1

    .line 593
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v5, "drmmidifile.dm"

    invoke-direct {v0, p2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 595
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 597
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, v1

    invoke-virtual {v4, v1, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 599
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p1

    .line 606
    .end local p1    # "path":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 607
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 618
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "data":[B
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-object p1

    .line 609
    .restart local v0    # "cacheFile":Ljava/io/File;
    .restart local v1    # "data":[B
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 610
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "OmaDrm/OmaDrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while closing midi file! Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 600
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local p1    # "path":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 601
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "OmaDrm/OmaDrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while checking midi file path! Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 606
    if-eqz v3, :cond_1

    .line 607
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 609
    :catch_2
    move-exception v2

    .line 610
    const-string v5, "OmaDrm/OmaDrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while closing midi file! Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 606
    :goto_2
    if-eqz v3, :cond_2

    .line 607
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 613
    :cond_2
    :goto_3
    throw v5

    .line 609
    :catch_3
    move-exception v2

    .line 610
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v6, "OmaDrm/OmaDrmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while closing midi file! Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 605
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "cacheFile":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 600
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static final getFilePath(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 567
    const/4 v1, 0x0

    .line 568
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    :try_start_0
    const-string v2, "_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 577
    :cond_0
    :goto_0
    return-object v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OmaDrm/OmaDrmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get drm file path : Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 536
    const/4 v8, 0x0

    .line 537
    .local v8, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 538
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    :goto_0
    return-object v0

    .line 543
    :cond_0
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 548
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 554
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v8

    .line 560
    goto :goto_0

    .line 551
    :catch_0
    move-exception v7

    .line 552
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "OmaDrm/OmaDrmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get drm file path : Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 554
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 555
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static final getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string v1, ""

    .line 626
    .local v1, "mime":Ljava/lang/String;
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    new-instance v0, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 630
    .local v0, "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {v0, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 634
    :cond_0
    if-eqz v0, :cond_1

    .line 635
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 639
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :cond_1
    return-object v1

    .line 634
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 635
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_2
    throw v2
.end method

.method public static getSelectAudioPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSelectedId"    # J

    .prologue
    .line 1084
    const-string v7, ""

    .line 1085
    .local v7, "result":Ljava/lang/String;
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v8, v7

    .line 1115
    .end local v7    # "result":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 1089
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_0
    if-nez p0, :cond_1

    move-object v8, v7

    .line 1090
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1093
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1094
    .local v2, "ccols":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1096
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/drm/OmaDrmHelper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1099
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1102
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1104
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 1105
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1108
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 1109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v7

    .line 1110
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_0

    .line 1112
    .end local v2    # "ccols":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    :cond_3
    move-object v8, v7

    .line 1115
    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static final isDrmCD(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 680
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmCDBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 756
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 757
    new-instance v0, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 760
    .local v0, "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 761
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 762
    const-string v3, "DRM-TYPE"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 763
    .local v1, "drmType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 764
    const/4 v3, 0x1

    .line 768
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 773
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 768
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 769
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 773
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 768
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 769
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isDrmFL(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 708
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    const-string v0, ".fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x1

    .line 713
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmFLBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 732
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 733
    new-instance v0, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 736
    .local v0, "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 737
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 738
    const-string v4, "DRM-TYPE"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 739
    .local v1, "drmType":I
    if-ne v1, v3, :cond_1

    .line 744
    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 749
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 744
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 749
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 744
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 745
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 692
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 694
    const-string v0, ".fl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    :cond_0
    const/4 v0, 0x1

    .line 701
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmMidiFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 661
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p0, :cond_2

    .line 662
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 663
    invoke-static {p0, p1}, Landroid/drm/OmaDrmHelper;->getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 666
    :cond_0
    sget-object v0, Landroid/drm/OmaDrmHelper;->MIDI_MIME_TYPES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 667
    .local v3, "mime":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 668
    const/4 v4, 0x1

    .line 673
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mime":Ljava/lang/String;
    :goto_1
    return v4

    .line 666
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "mime":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "mime":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isDrmMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 646
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    :cond_0
    const/4 v0, 0x1

    .line 652
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDrmRightsFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1362
    if-nez p0, :cond_1

    .line 1370
    :cond_0
    :goto_0
    return v1

    .line 1365
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, "type":Ljava/lang/String;
    const-string v2, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static final isDrmSD(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 720
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    const/4 v0, 0x1

    .line 725
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDrmSDBlocking(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 780
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 781
    new-instance v0, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v0, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 784
    .local v0, "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 785
    .local v2, "metadada":Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    .line 786
    const-string v3, "DRM-TYPE"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 787
    .local v1, "drmType":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 788
    const/4 v3, 0x1

    .line 792
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 797
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v1    # "drmType":I
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v3

    .line 792
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "metadada":Landroid/content/ContentValues;
    :cond_1
    if-eqz v0, :cond_2

    .line 793
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 797
    .end local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v2    # "metadada":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 792
    .restart local v0    # "client":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 793
    invoke-virtual {v0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_3
    throw v3
.end method

.method public static final isLicenseableDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 811
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".dm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    :cond_0
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isOmaDrmEnabled()Z
    .locals 1

    .prologue
    .line 804
    sget-boolean v0, Landroid/drm/OmaDrmHelper;->sIsOmaDrmEnabled:Z

    return v0
.end method

.method public static final isShareableDrmFile(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 822
    invoke-static {p0}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    const/4 v0, 0x0

    .line 825
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupportedMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    .line 832
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 833
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "video/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    :cond_0
    const/4 v0, 0x1

    .line 838
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final manageDrmLicense(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 858
    invoke-static {p2}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    if-eqz p1, :cond_1

    .line 863
    new-instance v0, Landroid/drm/OmaDrmHelper$1;

    invoke-direct {v0, p2, p0, p3}, Landroid/drm/OmaDrmHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-static {p0, p2, p3}, Landroid/drm/OmaDrmHelper;->manageDrmLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final manageDrmLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 846
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-static {p0, p1, p2}, Landroid/drm/OmaDrmHelper;->validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    invoke-static {p1, p2}, Landroid/drm/OmaDrmHelper;->consumeDrmRights(Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    :cond_0
    return-void
.end method

.method private static native nativeConsumeDrmRights(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeGetDrmDecryptedData(Ljava/io/FileDescriptor;)[B
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1121
    .local v6, "resolver":Landroid/content/ContentResolver;
    if-nez v6, :cond_0

    .line 1122
    const/4 v0, 0x0

    .line 1124
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static saveRights(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 1139
    invoke-static {}, Landroid/drm/OmaDrmHelper;->isOmaDrmEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1142
    :cond_1
    new-instance v1, Landroid/drm/DrmRights;

    invoke-direct {v1, p1, p2}, Landroid/drm/DrmRights;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    .local v1, "drmRights":Landroid/drm/DrmRights;
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 1145
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p1, v3}, Landroid/drm/DrmManagerClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v2

    .line 1147
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "OmaDrm/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while saveRights : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1149
    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_0

    .line 1149
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 1150
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    :cond_2
    throw v3
.end method

.method public static final showDrmInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/drm/OmaDrmHelper;->showProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :cond_0
    return-void
.end method

.method private static showProperties(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "drmType"    # Ljava/lang/String;

    .prologue
    .line 1161
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/drm/OmaDrmHelper;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1213
    :goto_0
    return-void

    .line 1165
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 1166
    .local v3, "message":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1167
    .local v4, "playContentValues":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 1168
    .local v0, "displayContentValues":Landroid/content/ContentValues;
    new-instance v1, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v1, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V

    .line 1171
    .local v1, "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v5}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v4

    .line 1172
    const/4 v5, 0x7

    invoke-virtual {v1, p1, v5}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1176
    if-eqz v1, :cond_1

    .line 1177
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    .line 1181
    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    const-string/jumbo v5, "valid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1183
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_3

    .line 1184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "play_unlimited"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1206
    :goto_2
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "license_information"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v2

    .line 1174
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "OmaDrm/OmaDrmHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while showProperties :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    if-eqz v1, :cond_1

    .line 1177
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    goto/16 :goto_1

    .line 1176
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    .line 1177
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_2
    throw v5

    .line 1187
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "play_permission"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    invoke-static {p0, v3, v4}, Landroid/drm/OmaDrmHelper;->formatMsg(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1191
    :cond_4
    if-eqz v0, :cond_6

    const-string/jumbo v5, "valid"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1193
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1194
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "play_unlimited"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1197
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "display_permission"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1199
    invoke-static {p0, v3, v0}, Landroid/drm/OmaDrmHelper;->formatMsg(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 1202
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "no_rights"

    invoke-static {p0, v6}, Landroid/drm/OmaDrmHelper$OmaDrmStrings;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public static final updateDrmFileTitle(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1072
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/drm/OmaDrmHelper;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1073
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/drm/OmaDrmHelper;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1076
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1077
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1081
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public static final validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 935
    invoke-static {p0, p1, p2, v0, v0}, Landroid/drm/OmaDrmHelper;->validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    return v0
.end method

.method public static final validateLicense(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 895
    const/4 v5, 0x1

    .line 896
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 898
    .local v1, "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    invoke-static {p1}, Landroid/drm/OmaDrmHelper;->isDrmFile(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 899
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 900
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 901
    const-string v8, "OmaDrm/OmaDrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot validateLicense! Drm file does not exist in the location : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/4 v8, 0x0

    .line 927
    .end local v4    # "f":Ljava/io/File;
    :goto_0
    return v8

    .line 907
    .restart local v4    # "f":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v2, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;

    invoke-direct {v2, p0}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .local v2, "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :try_start_1
    invoke-static {v2, p1, p2}, Landroid/drm/OmaDrmHelper;->checkRightsStatus(Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 909
    .local v6, "status":I
    if-eqz v6, :cond_1

    .line 910
    invoke-virtual {v2, p1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 911
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "Rights-Issuer"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, "address":Ljava/lang/String;
    invoke-static {p0, v0, p3, p4}, Landroid/drm/OmaDrmHelper;->buyLicense(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    .line 913
    const-string v8, "OmaDrm/OmaDrmHelper"

    const-string v9, "Drm License expared! can not proceed ahead"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 914
    const/4 v5, 0x0

    .line 921
    .end local v0    # "address":Ljava/lang/String;
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_1
    if-eqz v2, :cond_4

    .line 922
    invoke-virtual {v2}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .end local v4    # "f":Ljava/io/File;
    .end local v6    # "status":I
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :cond_2
    :goto_1
    move v8, v5

    .line 927
    goto :goto_0

    .line 916
    .restart local v4    # "f":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 917
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    const-string v8, "OmaDrm/OmaDrmHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while valicating drm license. Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 921
    if-eqz v1, :cond_2

    .line 922
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    goto :goto_1

    .line 921
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_3

    .line 922
    invoke-virtual {v1}, Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;->release()V

    :cond_3
    throw v8

    .line 921
    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catchall_1
    move-exception v8

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    goto :goto_3

    .line 916
    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    goto :goto_2

    .end local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v6    # "status":I
    :cond_4
    move-object v1, v2

    .end local v2    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    .restart local v1    # "drmClient":Landroid/drm/OmaDrmHelper$DrmManagerClientWrapper;
    goto :goto_1
.end method
