.class abstract Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProfileChooseAction"
.end annotation


# instance fields
.field private mProfileManager:Landroid/app/ProfileManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProfileManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->mProfileManager:Landroid/app/ProfileManager;

    .line 430
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    const/4 v5, 0x0

    .line 439
    const v4, 0x1090054

    invoke-virtual {p4, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 441
    .local v3, "v":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 442
    .local v0, "icon":Landroid/widget/ImageView;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 443
    .local v1, "messageView":Landroid/widget/TextView;
    const v4, 0x10202f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 444
    .local v2, "statusView":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlobalActions$ProfileChooseAction;->mProfileManager:Landroid/app/ProfileManager;

    invoke-virtual {v4}, Landroid/app/ProfileManager;->getActiveProfile()Landroid/app/Profile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Profile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108037c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    const v4, 0x1040026

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 450
    return-object v3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onPress()V
.end method
