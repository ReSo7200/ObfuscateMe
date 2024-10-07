.class Landroidx/core/view/ViewCompat$Api30Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api30Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5465
    return-void
.end method

.method static getImportantForContentCapture(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5497
    invoke-virtual {p0}, Landroid/view/View;->getImportantForContentCapture()I

    move-result v0

    return v0
.end method

.method static getStateDescription(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5482
    invoke-virtual {p0}, Landroid/view/View;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 5469
    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 5470
    .local v0, "windowInsetsController":Landroid/view/WindowInsetsController;
    if-eqz v0, :cond_0

    .line 5471
    invoke-static {v0}, Landroidx/core/view/WindowInsetsControllerCompat;->toWindowInsetsControllerCompat(Landroid/view/WindowInsetsController;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    goto :goto_0

    .line 5472
    :cond_0
    const/4 v1, 0x0

    .line 5470
    :goto_0
    return-object v1
.end method

.method static isImportantForContentCapture(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 5492
    invoke-virtual {p0}, Landroid/view/View;->isImportantForContentCapture()Z

    move-result v0

    return v0
.end method

.method static setImportantForContentCapture(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 5487
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForContentCapture(I)V

    .line 5488
    return-void
.end method

.method static setStateDescription(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "stateDescription"    # Ljava/lang/CharSequence;

    .line 5477
    invoke-virtual {p0, p1}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 5478
    return-void
.end method
