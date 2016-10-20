.class public Landroid/drm/OmaDrmHelper$OmaDrmStrings;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/OmaDrmHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OmaDrmStrings"
.end annotation


# static fields
.field public static final ACTIVITY_NOT_FOUND:Ljava/lang/String; = "activity_not_found"

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final DISPLAY_PERMISSION:Ljava/lang/String; = "display_permission"

.field public static final END_DATE:Ljava/lang/String; = "end_date"

.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field public static final LICENSE_EXPIRED:Ljava/lang/String; = "license_expired"

.field public static final LICENSE_INFO:Ljava/lang/String; = "license_information"

.field public static final LICENSE_RENEW:Ljava/lang/String; = "license_renew"

.field public static final LICENSE_RENEW_NOT_POSSIBLE:Ljava/lang/String; = "license_renew_not_possible"

.field public static final NO_RIGHTS:Ljava/lang/String; = "no_rights"

.field public static final PLAY_PERMISSION:Ljava/lang/String; = "play_permission"

.field public static final PLAY_UNLIMITED:Ljava/lang/String; = "play_unlimited"

.field public static final SECONDS:Ljava/lang/String; = "seconds"

.field public static final SHARE_NOT_ALLOWED:Ljava/lang/String; = "share_not_allowed"

.field public static final START_DATE:Ljava/lang/String; = "start_date"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringResource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 182
    # getter for: Landroid/drm/OmaDrmHelper;->OMA_DRM_ENGINE_APP:Ljava/lang/String;
    invoke-static {}, Landroid/drm/OmaDrmHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 185
    .local v1, "drmString":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 186
    .local v3, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "DrmResources":Landroid/content/res/Resources;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/drm/OmaDrmHelper;->OMA_DRM_ENGINE_APP:Ljava/lang/String;
    invoke-static {}, Landroid/drm/OmaDrmHelper;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":string/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 190
    .local v5, "resourceId":I
    if-eqz v5, :cond_0

    .line 191
    # getter for: Landroid/drm/OmaDrmHelper;->OMA_DRM_ENGINE_APP:Ljava/lang/String;
    invoke-static {}, Landroid/drm/OmaDrmHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v5, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 194
    :cond_0
    if-eqz v1, :cond_1

    .line 195
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 200
    .end local v0    # "DrmResources":Landroid/content/res/Resources;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "resourceId":I
    :cond_1
    :goto_0
    return-object v6

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 200
    const-string v6, ""

    goto :goto_0
.end method
